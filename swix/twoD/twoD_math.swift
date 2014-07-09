////
////  twoD_math.swift
////  swix
////
////  Created by Scott Sievert on 6/11/14.
////  Copyright (c) 2014 com.scott. All rights reserved.
////
//
//import Foundation
//func apply_function(function: Double->Double, x: matrix2d) -> matrix2d{
//    var y = zeros((x.rows, x.columns))
//    for i in 0..<x.rows{
//        for j in 0..<x.columns{
//            y[i,j] = function(x[i,j])
//        }
//    }
//    return y
//}
//func sin(x: matrix2d) -> matrix2d{
//    var y = apply_function(sin, x)
//    return y
//}
//func cos(x: matrix2d) -> matrix2d{
//    var y = apply_function(cos, x)
//    return y
//}
//func tan(x: matrix2d) -> matrix2d{
//    var y = apply_function(tan, x)
//    return y
//}
//func log(x: matrix2d) -> matrix2d{
//    var y = apply_function(log, x)
//    return y
//}
//func abs(x: matrix2d) -> matrix2d{
//    var y = apply_function(abs, x)
//    return y
//}
//func sqrt(x: matrix2d) -> matrix2d{
//    var y = apply_function(sqrt, x)
//    return y
//}
//func floor(x: matrix2d) -> matrix2d{
//    var y = apply_function(floor, x)
//    return y
//}
//func ceil(x: matrix2d) -> matrix2d{
//    var y = apply_function(ceil, x)
//    return y
//}
//func pow(x: matrix2d, power: Double) -> matrix2d{
//    var y = zeros(x.shape)
//    for i in 0..<x.shape.0{
//        for j in 0..<x.shape.1{
//            y[i,j] = pow(x[i,j], power)
//        }
//    }
//    return y
//}
//func sum(x: matrix2d) -> Double{
//    var s: Double = 0
//    let n = x.shape.0
//    let m = x.shape.1
//    for i in 0..<n{
//        for j in 0..<m{
//            s = x[i,j] + s
//        }
//    }
//    return s
//}
//
//func avg(x: matrix2d) -> Double{
//    var y: Double = sum(x)
//    
//    return y / Double(x.count)
//}
//func std(x: matrix2d) -> Double{
//    var y: Double = avg(x)
//    var z = x - y
//    return sqrt(sum(pow(z, 2) / Double(x.count)))
//}
//func variance(x: matrix2d) -> Double{
//    var y: Double = avg(x)
//    var z = x - y
//    return sum(pow(z, 2) / Double(x.count))
//}
//func l2norm(x: matrix2d) -> Double{
//    return sqrt(sum(pow(x, 2)))
//}
//func l1norm(x: matrix2d) -> Double{
//    return sqrt(sum(abs(x)))
//}
//func l0norm(x: matrix2d) -> Double{
//    var norm = 0
//    for i in 0..<x.shape.0{
//        for j in 0..<x.shape.1{
//            if x[i,j] != 0{
//                norm += 1
//            }
//        }
//    }
//    return Double(norm)
//}
//func diag(diagonal: matrix) -> matrix2d{
//    let N = diagonal.count
//    var x = zeros((N,N))
//    for i in 0..<N{
//        x[i,i] = diagonal[i]
//    }
//    return x
//}
//func getElement(left: matrix, right: matrix) -> Double{
//    return sum(left * right)
//}
//func dot(left: matrix2d, right: matrix2d) -> matrix2d{
//    var M = left.count
//    var N = right.shape.1
//    var ans = zeros((M, N))
//    for i in 0..<left.count{
//        for j in 0..<right.shape.1{
////            var row = left[i]
////            var column = right[0..<right.count][j]
//            var row:matrix = [1, 2.1, 3]
//            var column:matrix = [1.0, 2, 3]
//            ans[j,i] = getElement(row, column)
//        }
//    }
//    return ans
//}
//
//func svd(m: matrix2d) -> (matrix2d, matrix, matrix2d){
////    var mm = m
////    let sn = mm.shape.0 // rows
////    let sm = mm.shape.1 // columns
////    
////    
////    var xx = NSArray(array: mm)
////    var xxx = svd_objc(xx)
////    var x:matrix = convertDoubleToMatrix(xxx, sn+sn*sn+sm*sm)
////    let nS = min(sm, sn)
////    
////    var s2 = x[0..<nS]
////    var v2 = x[nS..<sm*sm+nS]
////    var u2 = x[sm*sm+nS..<(nS+sm*sm) + sn*sn]
////    
////    var s = asmatrix(s2)
////    var uR = asmatrix(u2)
////    var vR = asmatrix(v2)
////    
////    var v = reshape(vR, (sm, sm))
////    var u = reshape(uR, (sn, sn))
////    
////    v = transpose(v)
////    u = transpose(u)
////
//    let N = 10
//    var u = zeros((N,N))
//    var v = zeros((N,N))
//    var s = zeros(N)
//    return (u, s, v)
//}
//
///// the dot product operator
//operator infix *! {associativity none precedence 140}
//func *! (left: matrix2d, right: matrix2d) -> matrix2d{
//    var x = dot(left, right)
//    return x
//}
//
//
//
//
//
//
//
//
//
//
//
