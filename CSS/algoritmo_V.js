/* 1) Configura un array para que los valores negativos se transformen en 0. Por ejemplo, resetNegativos([1,2,-1,-3]) debiera dar como resultado [1,2,0,0] */

function resetNegativos(x) {
    for (var i = 0; i < x.length; i++) {
        if (x[i] < 0) {
            x[i] = 0;
        }
    }
    console.log(x);
}

resetNegativos([1, 2, -1, -3])

/* 2) Dado un array, mueve todos los valores un espacio de derecha a izquierda eliminando el primer valor y dejando un 0 para el último valor. Por ejemplo, moverAdelante([1,2,3]) debiera dar como resultado [2,3,0]. */

function moverAdelante(x) {
    x.splice(0, 1);
    x.push(0);
    console.log(x);
}

moverAdelante([1, 2, 3])

/* 3) Configura un array para que el resultado sean los valores en el orden contrario. Por ejemplo, returnReverso([1,2,3]) debe dar [3,2,1]. */

function returnReverso(x) {
    for (var i = 0; i < (x.length / 2); i++) {
        var aux = x[x.length - (i + 1)];
        x[x.length - (i + 1)] = x[i];
        x[i] = aux;
    }
    console.log(x);
}

returnReverso([1, 2, 3, 4])

/* 4) Crea una función que cambie un array repitiendo sus valores originales (manteniendo el mismo orden). Por ejemplo, repetirValores([4,”Ulysses”, 42, false]) debiera dar [4,4, “Ulysses”, “Ulysses”, 42, 42, false, false]. */

function repetirValores(x) {
    var dup = [];
    for (var i = 0; i < x.length; i++) {
        dup.push(x[i]);
        dup.push(x[i]);
    }
    console.log(dup);
}

repetirValores([4, 'Ulysses', 42, false]);