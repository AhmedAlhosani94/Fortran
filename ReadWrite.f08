! Program to learn how to read/write

Program Readfile

    integer :: a, b, c

    open(unit=10,file='readingdata.txt') !You can open a new file but change the number

    read(10,*)a, b, c

    print *, a, b, c

    close(10)

    open(unit=12, file='writingdata.txt')

    num = a+b+c

    write(12,*)num
    close(12)

    print*, "wrote the sum in the external file"



End Program Readfile
