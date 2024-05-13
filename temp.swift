var a = 5
var b = 6

print("value of a is: \(a) and value of b is: \(b)")

func swapVar(x: inout Int, y: inout Int){
    let temp = x
    x = y
    y = temp
}

swapVar(x: &a, y: &b)
print("value of a is: \(a) and value of b is: \(b)")

