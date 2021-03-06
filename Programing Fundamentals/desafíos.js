//Imprime los números enteros entre 1 y x. Si x es menor que 1, retorna false.//
function imprimeHasta(x) {
    // escribe tu código aquí
    if(x < 1){
        return false;
    }
    else{
        for(var i = 1; i <= x; i++){
            console.log(i);
        }
    }
}
imprimeHasta(100); // debe imprimir todos los enteros desde el 1 hasta el 100
y = imprimeHasta(-10); 
console.log(y); // debe imprimir 'false'


//Imprime todos los enteros desde el 0 hasta el 255. Al imprimir cada entero, debes imprimir la suma que se lleva. Retorna la suma final.//
function printSum(x) {
    var sum = 0;
    // escribe tu código aquí
    for(var i = 0; i <= x; i++){
        console.log(i);
        sum += i;
    }
    return sum
}
y = printSum(255) // debe imprimir todos los enteros desde el o hasta el 255, y la suma parcial en cada punto
console.log(y) // debe imprimir 32640


//Debes imprimir la suma de todos los valores en el arreglo dado.//
function printSumArray(x) {
    var sum = 0;
    for (var i = 0; i < x.length; i++) {
        // escribe tu código aquí
        sum += x[i];
    }
    return sum;
}
console.log( printSumArray([1,2,3]) ); // debe imprimir 6


//Escribe una función que retorne el mayor elemento del arreglo dado.//
function mayorElem(x) {
    var mayorHastaAhora = x[0];
    // escribe tu código aquí
    for(var i = 1; i <= x.length; i++){
        if(mayorHastaAhora < x[i]){
            mayorHastaAhora = x[i];
        }
    }
    return mayorHastaAhora;
}
console.log( mayorElem([8,3,11,2,-8]) ); // debe imprimir 11