
!program to demonstrate the use of arrays by finding the fibonacci series

program fib_array
	
	implicit none
	integer, dimension(10) :: fib_vals 
	integer :: i, n
	
	read 5, n
	5 format("Enter the number of values in fibonacci series to be displayed", i3)
	
	fib_vals(1) = 1
	fib_vals(2) = 1
	
	do i=3,n
		fib_vals(i)=fib_vals(i-1)+fib_vals(i-2)
	end do
	
	do i=1,n
	print 10, i, fib_vals(i)
	10 format ("The fibonacci value", i3, "is: ", i5)
	end do
end program fib_array
