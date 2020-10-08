#include <sys/types.h>
#include <sys/uio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>

#define BUFSIZE 100000   //allocate buffer size equal 100MB

int main(int argc, char **argv)

{
    int from, to, nr, nw, n;
    char* buf;
    buf = (char*)malloc(BUFSIZE); 

    if ((from = open(argv[1], O_RDONLY)) < 0) {
        perror("Error opening source file");
        exit(1);
    }

    if ((to = creat(argv[2], 0666)) < 0){
        perror("Error creating destination file");
        exit(2);
    }

    while ((nr = read(from, buf, BUFSIZE)) != 0){
        if (nr < 0){
            perror("Error reading source file");
            exit(3);
        }
        nw = 0;
        do
        {
            if ((n = write(to, &buf[nw], nr - nw)) < 0)
            {
                perror("Error writing destination file");
                exit(4);
            }
            nw += n;
        } while (nw < nr);
    }
    close(from);
    close(to);
}