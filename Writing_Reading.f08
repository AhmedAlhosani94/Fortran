
!program to demonstrate the use of arrays by finding the fibonacci series

program fib_array_new

	implicit none
	integer (kind=8), allocatable, dimension(:):: fib_vals, c_vals !dimension (:) changes and kind is to use betas for large values
	integer , allocatable, dimension(:) :: nvals
	integer :: i, n

  read *, n
	print 5, n
	5 format("Enter the number of values in fibonacci series to be displayed", i3)

  allocate(fib_vals(n),c_vals(n),nvals(n))! Allocates n integers to the array at run time

  open(unit=1, file="fib_val.txt")
  15 format(i3, 5x, i25)

	fib_vals(1) = 1
	fib_vals(2) = 1

	do i=3,n
		fib_vals(i)=fib_vals(i-1)+fib_vals(i-2)
	end do

	do i=1,n
    print 10, i, fib_vals(i)
    10 format ("The fibonacci value", i3, " is: ", i25)
    write (unit=1, fmt=15),i,fib_vals(i)!fmt is to write in format of 15
    !it can also be written as: write(1,15),i,fib_vals(i)
	end do

  close(unit=1)!not necessary but good to close
  open(unit=2, file="fib_val.txt")

  do i=1,n
    read (unit=2,fmt=15), nvals(i),c_vals(i)
    print *, "i= ", i, "i-n= ",i-nvals(i),"fib-fib check = ", fib_vals(i)-c_vals(i)
  end do

	deallocate(fib_vals, c_vals, nvals)!Deallocates the array
	close (unit=2)

end program fib_array_new
