!program to check for matrix slicing

program matsl

    implicit none
    real*8, dimension(3,3) :: mat !matrix with three rows and three columns
    real*8, dimension (2,2) :: slice
    logical, dimension (3,3) :: mask

    integer :: i=3, j=3

    mat = reshape((/1,4,7,2,5,8,3,6,9/),(/3,3/)) !This takes these values to fill the 3x3 matrix

    mask =.true.
    mask (i,:) = .false.
    mask (:,j) = .false.

    slice = reshape (pack(mat,mask),(/2,2/)) !the pack fills up the new matrix

    do i = 1,3
        do j = 1,3
            print '("Mat(",i1,","i1,") is = ", f10.3)',i,j,mat(i,j)
        end do
    end do

    do i = 1,2
        do j = 1,2
            print '("Slice(",i1,","i1,") is = ", f10.3)',i,j,slice(i,j)
        end do
    end do

end program matsl
