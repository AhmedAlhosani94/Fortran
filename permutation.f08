program percon

    implicit none
    integer*8 :: per, comm, com, comb
    integer*8 :: n,r,per1,com1,com2,com3

    print *, "Enter the value of n: "
    read *, n
    print *, "Enter the value of r: "
    read *, r

    per1 = per(n,r)
    com1 = com(per1,r)
    com2 = comm (n,r)
    com3 = comb(n,r)
    print *, "the permutation of ", r, "in" , n, " :", per1
    print *, "the combination 1 of ", r, "in" , n, " :", com1
    print *, "the combination 2 of ", r, "in" , n, " :", com2




end program percon



integer*8 function per(n,r)

    implicit none
    integer*8, intent(in) :: n, r
    integer*8, external :: fact

    per = fact(n)/fact(n-r)


end function per


recursive integer*8 function fact(n) result(fact1)

    implicit none
    integer*8, intent(in) :: n
    !integer*8 :: fact1 !because it is already defined initially

    if (n ==1 .or. n == 0) then
        fact1 = 1
    else
        fact1 = fact(n-1)
        fact1 = fact1*n
        return !To stop execution
    end if


end function fact

integer*8 function comm(n,r)

    implicit none
    integer*8, intent(in) :: n, r
    integer*8, external :: fact

    comm = fact(n)/(fact(n-r)*fact(r))


end function comm

integer*8 function com(per, r)

    implicit none
    integer*8, intent(in) :: per, r
    integer*8, external :: fact

    com = per/fact(r)


end function com

integer*8 function comb(n,r)

    implicit none
    integer*8, intent(in) :: n, r
    integer*8, external :: fact, per

    comb = per(n,r)/fact(r)


end function comb
