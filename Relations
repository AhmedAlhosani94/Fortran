! == .eq. equal to
! > .gt. greater than
! < .lt. less than
! >= .ge. Greater or equal to
! <= .le. less than or equal to
! /= .ne. Not equal to
! .true. or .false.
! .not. (exp1) !If your value is 0, it will give you 1, and vice versa
! (exp1) .and. (exp2)
! (exp1) .or. (exp2)
!(exp1) .eqv. (exp2)
! (exp1) .neqv. (exp2)

Program rel_logic
    integer :: a,b
    logical :: m,n
    a = 5
    b = 4
    m = .false.
    n = .true.

    print *, "A = ", a, "B == ",b
    print *, "A == B: ", a==b
    print *, "A > B: ", a>b
    print *, "A < B: ", a<b
    print *, "A >= B: ", a>=b
    print *, "A <= B: ", a<=b
    print *, "A /= B: ", a/=b

    print *, "M = ", m, "N = ",n
    print *, ".not.M = ", .not.m
    print *, "M or N?: ", m.or.n
    print *, "M and N?: ", m.and.n
    print *, "M eqv N?: ", m.eqv.n
    print *, "M not eqv N ", m.neqv.n

End Program
