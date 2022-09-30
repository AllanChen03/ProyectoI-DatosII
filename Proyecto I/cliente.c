// Client side C/C++ program to demonstrate Socket
// programming
#include <arpa/inet.h>
#include <stdio.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>
#include <json-c/json.h>
#include <stdlib.h>

#define PORT 8080

void send_file(FILE *fp, int sock){
    int n;
    char data[1024] = {0};

    while(fgets(data, 1024, fp) !=NULL){
        if (send(sock, data, sizeof(data),0) == -1){
            perror("[.]Error in reading data.");
            exit(1);
        }
        bzero(data, 1024);

    }

}

int main(int argc, char const* argv[]){

    int sock = 0, valread, client_fd;
    int contador = 0;
    struct sockaddr_in serv_addr;
    FILE *fp;
    char *filename = "message.json";
    char* hello = "[[1,2,3,4],[1]]";
    char buffer[1024] = { 0 };
    if ((sock = socket(AF_INET, SOCK_STREAM, 0)) < 0) {
        printf("\n Socket creation error \n");
        return -1;
    }
  
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_port = htons(PORT);
  
    // Convert IPv4 and IPv6 addresses from text to binary
    // form
    if (inet_pton(AF_INET, "127.0.0.1", &serv_addr.sin_addr)
        <= 0) {
        printf(
            "\nInvalid address/ Address not supported \n");
        return -1;
    }
  
    if ((client_fd
         = connect(sock, (struct sockaddr*)&serv_addr,
                   sizeof(serv_addr)))
        < 0) {
        printf("\nConnection Failed \n");
        return -1;
    }
    fp = fopen(filename,"r");
    if (fp == NULL){
        perror("[.]Error in reading file.");
        exit(1);
    }
    send_file(fp,sock);

    
  
    // closing the connected socket
    close(client_fd);
    return 0;
}