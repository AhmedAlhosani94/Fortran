! do loop for factorial
! Nested loop (important for dot product and matrix uses)

program do_fact

    implicit none
    integer :: i, n, j, fact

    print *, "Enter a value for n:"
    read *, n

    do i=1,n !from 1 to n
        !print *, "inside the loop, i=", i !This command is to check

        fact = 1

        do j=1,i !from 1 to i

            fact = fact*j


        end do
        print *, "The factorial of ", i, " is: ", fact


    end do

end program

