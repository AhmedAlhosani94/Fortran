!Program to find the sum of digits of a positive integer
!Program to count the number of the positive numbers in integer

program sum_digs

    implicit none
    integer :: num, sum1, temp
    integer :: n, count1 = 0, i

    print *, "Write a positive integer"
    read *, num

    temp = num
    sum1 = 0

    do
        if (temp == 0) then
            exit
        else
            sum1 = sum1 + mod(temp,10)
            temp = temp/10
            print *, "The Sum is: ", sum1
            print *, "The temp is ", temp
        end if

    end do

    print *, "The number is ", num
    print *, "and the sum of digits is: ", sum1

    print *, "Enter a number from 1 to 10: "
    read *, n
    print *, "Enter ", n, "Positive and negative values: "

    do i=1,n
        print*, "Enter Value", i, ":"
        read *, temp
        if (temp<0) then
            cycle !This makes it go back to the beginning of the loop and starts from 1
        else
            count1 = count1+1
        end if
    end do

    print *, "You have entered ", count1, "Positive number (s) out of ", n, "chance(s)"


end program
