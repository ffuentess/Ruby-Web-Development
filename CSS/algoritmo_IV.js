/* 1) Dados un array y un valor Y, cuenta e imprime (print) el número de valores del array que sean mayores que Y. */

function mayoresQueY(x, y) {
    var count = 0;
    for (var i = 0; i < x.length; i++) {
        if (x[i] > y) {
            count++;
        }
    }
    console.log(count);
}

var arr = [1, 2, 4, 6, 7, 8, 9];
mayoresQueY(arr, 4)

/* 2) Dado un array, imprime los valores máximos (max), mínimos (min) y promedio (average) para el array.  */

function maxminPromedio(x) {
    var max = x[0];
    var min = x[0];
    var ave = 0;
    for (var i = 0; i < x.length; i++) {
        ave += x[i];

        if (max < x[i]) {
            max = x[i];
        } else if (min > x[i]) {
            min = x[i];
        };
    }
    console.log("El valor máximo es: " + max);
    console.log("El valor mínimo es: " + min);
    console.log("El promedio es: " + (ave / x.length));
}

maxminPromedio(arr)

/* 3) Dado un array de números, crea una función que dé como resultado un nuevo array donde los valores negativos se reemplacen por el texto (string) ‘Dojo’. Por ejemplo, reemplazarNegativos([1,2,-3,-5,5]) debiera devolver [1,2, “Dojo”, “Dojo”, 5]. */

function replaceNegatives(x) {
    for (var i = 0; i < x.length; i++) {
        if (x[i] < 0) {
            x[i] = 'Dojo';
        }
    }
    console.log(x)
}

replaceNegatives([1, 2, 4, -2, 7, -8, -9])

/* 4) Dado un array y su respectivo índice, remueve los valores en el rango del índice dado( acortando el array). Por ejemplo, removerRango([20,30,40,50,60,70],2,4)debiera devolver [20,30,70]. */

function removeRange(x, y, z) {
    var range = (z - y) + 1;
    x.splice(y, range);
    console.log(x);
}

removeRange([20, 30, 40, 50, 60, 70], 2, 4)