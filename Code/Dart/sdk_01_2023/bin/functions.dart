/*
# functions types:
1: returned value
2: void

# How to implement a function:
1: header
return-data-type function-name (p1,p2,p3,...)
void function-name (p1,p2,p3,...)
2: body
{
write what your function will do
}
*/

// Lambda functions:
fun1(x, y) => x + y;

fun2(x, y) => print(x + y);

// Returning functions:
dynamic fun3(int x, int y) {
  return x + y;
}

void fun4() {}

int fun5() {
  //you can use return  or not
  return 0;
}

// Optional parameters:  --> []
//user can call the function :
//sum() --> x =null, y =null
//sum(2) --> x =2, y =null
//sum(2,3) --> x =2, y =3
fun6([int x, int y]) {
  return x + y;
}

//Optional Parameters with Default Values
//user can call the function :
//sum() --> x =2, y =4
//sum(8) --> x =8, y =4
//sum(8,3) --> x =8, y =3
fun7([int x = 2, int y = 4]) {
  return x + y;
}

// named parameters:  --> []
fun8({int x, int y}) {
  return x + y;
}

// named parameters with Default Values
fun9({int x = 4, int y = 5}) {
  return x + y;
}

void main() {
// how to call a function?  Using it's name.

}
