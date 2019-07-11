! Program to demonstrate do loops via geometric progression

program geo_prog

    implicit none
    integer(kind = 8) :: a, r, i, n

    print *, "Enter the values of initial term, a, and factor, r: "
    read *, a,r
    print *, "Enter the number of terms"
    read *, n

    do i=0,n ! i=0,1,2,3,,,,n

      print *, "The value ", i, "of the series is: ", a*(r**i)

    end do

end program geo_prog
