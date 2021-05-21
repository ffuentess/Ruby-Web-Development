/* Print 1 to x */

function printUpTo(x) {
    if (x > 0) {
        for (var i = 1; i <= x; i++) {
            console.log(i);
        }
    } else if (x < 0) {
        console.log(false);
        return false;
    }

}
printUpTo(100); // debería imprimir todos los enteros de 1 to 1000
y = printUpTo(-10); // debería imprimir false
console.log(y); // debería imprimir false

/* PrintSum */

function printSum(x) {
    var sum = 0;
    for (var i = 0; i <= x; i++) {
        console.log(i);
        sum += i;
        console.log(sum);
    }
    return sum
}
y = printSum(255) // debería imprimir todos los enteros de 0 a 255 y que cada entero imprima la suma parcial.
console.log(y) // // debería imprimir 32640

/* PrintSumArray*/

function printSumArray(x) {
    var sum = 0;
    for (var i = 0; i < x.length; i++) {
        sum += x[i];
    }
    return sum;
}
console.log(printSumArray([1, 2, 3])); // debería imprimir 6

/* Bonus: LargestElement */

function largestElement(x) {
    var lar = x[0];
    for (var i = 1; i < x.length; i++) {
        if (lar < x[i]) {
            lar = x[i];
        }
    }
    console.log(lar);
}
largestElement([1, 30, 5, 7])