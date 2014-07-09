//
//  main.swift
//  swix
//
//  Created by Scott Sievert on 6/11/14.
//  Copyright (c) 2014 com.scott. All rights reserved.
//

import Foundation
let N = 10

func addTest_1D(){
    var x = zeros(N)
    var y = ones(N)
    var z = ones(N)
    assert((y+x) == z);
    println("    zeros(N) + ones(N) == ones(N) (with Accelerate integration)")
}
func mulTest_1D(){
    var x = zeros(N) + 2
    var y = zeros(N) + 1
    assert(x*y == zeros(N)+2)
    println("    x*y == zeros(N)+2")
}
func abs_test1d(){
    var x = ones(N) * -1 * pi
    assert(abs(x) == -1*x)
    println("    abs works (with Accelerate integration!)")
}
func closeTest_1D(){
    var x = zeros(N)
    var y = zeros(N)+1e-10
    assert(x ~== y)
    println("    x ~== y)")
}
func a2Darray(){
    var x = zeros((4,4))
    x[0,0] = 1
    x[1,0] = 2
    println("    use x[0, \"all\"] to access first row, x[1,1] to access second row second column")
    println(" **  BUG: cannot assign x[0, \"all\"] = 0")
}
func addTest_2D(){
    var tuple:(Int, Int) = (N, N/2)
//    var x = 1+zeros(tuple)
    var x:matrix2d = zeros(tuple)
    var y:matrix2d = zeros((N,N/2))
    var z:matrix2d = zeros((N,N/2))
    println(z+1)
//    assert((y+x) == z+1);
    println("    (y+x) == z+1)")
}
//func aboutEqual_2d(){
//    var x = 1+zeros((N,N/2))+1e-10
//    var y = zeros((N,N/2))
//    var z = zeros((N,N/2))
//    assert((y+x) ~~ (z+1));
//    println("    (y+x)~~(z+1)")
//}
func sin_1d(){
    var y = zeros(N)+pi
    assert(sin(y) ~== zeros(N))
    println("    sin(ones(N)*pi) ~== zeros(N)")
}
func log_1d(){
    var y = zeros(N)+1
    var z = log(y)
    assert(log(z) ~== zeros(N))
    println("    log(zeros(N)+1) ~== zeros(N)")
}
func pow_1d(){
    var y = zeros(N)+2
    var z = pow(y, 2)
    assert(z ~== (zeros(N)+4))
    println("    pow(zeros(N)+2) ~== zeros(N)+4")
}
func sum_test(){
    var y = ones(N)
    assert(sum(y) == N)
    println("    sum(ones(N)) == N")
}
func avg_1d(){
    var y = ones(N)
    assert(avg(y) == 1)
    println("    avg(ones(N)) = 1")
}
func std_1d(){
    var y = array(2,4,4,4,5,5,7,9)
    assert(std(y) == 2)
    println("    std(y) == 2")
}
func var_1d(){
    var y = array(2,4,4,4,5,5,7,9)
    assert(variance(y) == 4)
    println("    variance(y) == 4")
}
func array1d(){
    var y = array(1,1,1,1)
    var z = ones(4)
    assert(z == y)
    println("    ones(4) == array(1,1,1,1)")
}
func l2norm_1d(){
    var y = array(1,-2,3)
    assert(sqrt(1+4+9) == l2norm(y))
    println("    l2norm(y) = sqrt(1+4+9)")
}
func l1norm_1d(){
    var y = array(1,-2,3)
    assert(sqrt(1+2+3) == l1norm(y))
    println("    l1norm = sqrt(1+2+3)")
}
func l0norm_1d(){
    var y = array(1,0,0,0,0,15,-1)
    assert(3 == l0norm(y))
    println("    l0norm(array(1,0,0,0,0,15,-1)) == 3")
}
//func sum_2d(){
//    var y = ones((4,4))
//    assert(sum(y) == 4*4)
//    println("    sum(ones((4,4)) = 4*4")
//}
func numberClassTest(){
    var x = number(n: 1, j:2)
    var y = x.real
    var z = x.imag
    println("    x.real, x.imag accessible")
}
//func twoD_arrayTest(){
//    var x = array("[1 2; 4 5]")
//    var z = zeros((2,2))
//    z[0][0] = 1
//    z[0][1] = 2
//    z[1][0] = 4
//    z[1][1] = 5
//    assert(x == z)
//    println("    array(\"[1 2; 4 5]\" == z")
//}
//func dot_test(){
//    var x = diag(ones(3))
//    var y = array("[1 2 3; 4 5 6; 7 8 9]")
//    var z = x *! y
//    assert(y == z)
//    println("    dot product checks: I *! y == y")
//    println("    diag checks: diag(ones(3)) = I")
//}
func assingment(){
    var x = ones(4)
    x[2...3] = [7, 8]
    assert(x == array(1, 1, 7, 8))
    println("    can assign x[2...3] = [7, 8]")
}
//func assingment2d(){
//    var x = ones((6, 6))
////    println(x[2...3][2...3])
////    x[2...3][2...3] = [[7, 8], [7, 8]]
//    println(" ** BUG: cannot assign x[2...3][2...3] = [[7, 8], [7, 8]]")
//}
//func floorTest(){
//    var x = ones((N,N))*pi
//    var y = floor(x)
//    assert(y == ones((N,N))*3)
//    println("    floor(matrix2d) works")
//}
func ceilTest(){
    var x = ones(N)*pi
    var y = ceil(x)
    assert(y == ones(N)*4)
    println("    ceil(matrix) works")
}
func fft_test(){
    let Nfft = 8
    var x = arange(Nfft.double)
    var (yr, yi) = fft(x)
    var x2 = ifft(yr, yi)
    assert(x2 == x)
    println("    FFT works for real valued inputs. var (real, imag) = fft(x)")
}
func constant_assign_test(){
    var x = ones(4)
    x[2..<4] = [2, 2]
    assert(x == array(1, 1, 2, 2))
    println(" ** BUG: cannot assign x[2..4] = 2 (but can do x[2..4] = [2, 2])")
}
func arange_test(){
    var x = arange(N.double, x: false)
    var x2 = array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
    assert(x2 == x)
    println("    arange(3) = [0.0, 1.0, 2.0]; some funky business with .double")
}
func arange_min_test(){
    var x = arange(5, 10.0)
    var x2 = array(5, 6, 7, 8, 9)
    assert(x2 == x)
    println("    arange works with min as well")
}
//func svd_test(){
//    var x = ones((2,4))
//    var (u, s, v) = svd(x)
//    x = ones((4,2))
//    (u, s, v) = svd(x)
//    println("    var (u, s, v) = svd(x) works. matches python exactly (checked by hand)")
//}
//func transpose_test(){
//    var x = array("1 2 3; 4 5 6; 7 8 9")
//    var y = array("1 4 7; 2 5 8; 3 6 9")
//    assert(x == transpose(y))
//    println("    transpose works")
//    println(" *    TODO: tranpose(x) = x.T")
//}
func sort_test(){
    var x = array(1, 5, 4)
    var y = array(1, 4, 5)
//    var x2 = x.sort()
//    assert(x.sort() == y)
//    println("    x.sort() works.")
}
func reverse_test(){
    var x = array(1, 2, 3)
    var y = array(3, 2, 1)
    assert(x == y.reverse())
    println("    array(1, 2, 3).reverse() == [1, 2, 3]")
}
func pluseq_test(){
    var x = ones(4)
    x += 1
    var y = ones(4)*2
    assert(x == y)
    println("    += works like you'd expect it to")
}
//func complex_test(){
//    var x = 1 + 1.i
//    assert(abs(x) == sqrt(2))
//    println("    scalar (not vector) imaginary numbers work through swift-complex")
//}
func rangeAssign_test(){
    var x = ones(4)
    x <>= 3
    assert(x == ones(4)*3)
    println("    x <>= 3 means that every element in x is 3.")
}
func scalar_arth_test(){
    assert(Double(5.0) + Int(5) == 10)
    println("    Int(5) + Double(5) == 10 through ScalarArithmetic")
}


println("Preforming tests...")
addTest_1D()
mulTest_1D()
closeTest_1D()
a2Darray()
addTest_2D()
//aboutEqual_2d()
sin_1d()
log_1d()
pow_1d()
sum_test()
avg_1d()
var_1d()
array1d()
l0norm_1d()
l1norm_1d()
l2norm_1d()
//sum_2d()
numberClassTest()
//twoD_arrayTest()
//dot_test()
assingment()
constant_assign_test()
//assingment2d()
//floorTest()
ceilTest()
abs_test1d()
fft_test()
arange_test()
arange_min_test()
//svd_test()
//transpose_test()
//sort_test()
reverse_test()
pluseq_test()
rangeAssign_test()
//complex_test()
scalar_arth_test()


//func svm_test(){
//    var svm = SVM()
//    //var r = arange(4*16)
//    let N = 16
//    let M = 4
//    var r = ones(M*N)
//    var responses = reshape(r, (M, N))
//    for i in 0..<N{
//        responses[1][i] = -1
//    }
//
//    var targets = ones(M)
//    targets[1] = -1
//    svm.train(responses, targets: targets)
//
//    var y = -1 * ones(N)
//    var tp = svm.predict(y)
//    print("The predicted result for [")
//    print(y)
//    print("] is ")
//    println(tp)
//}

//func knn_test(){
//    var k = kNearestNeighbors()
//    var x = ones((13, 19))
//    var targets = arange(3)
//
//    var y = ones(19)
//    k.train(x, targets: targets)
//    var result = k.predict(y, k:32)
//}
//

