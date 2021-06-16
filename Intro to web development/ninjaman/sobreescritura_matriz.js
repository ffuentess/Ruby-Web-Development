
var world = [
    [1,1,1,1,1,1,1,1,1,1],
    [1,0,0,2,0,1,0,0,2,1],
    [1,0,1,1,0,3,2,1,0,1],
    [1,2,0,2,1,2,1,1,0,1],
    [1,0,1,0,1,0,1,0,0,1],
    [1,0,1,3,0,3,0,2,1,1],
    [1,3,0,2,1,0,1,0,0,1],
    [1,0,1,0,1,0,1,1,0,1],
    [1,2,0,2,1,2,0,0,2,1],
    [1,1,1,1,1,1,1,1,1,1],
]





function crearMundo() {    
    for (var i = 1; i < world.lenght - 1; i++){
        for (var j = 1; j < world.lenght - 1 ; j++){
            var myNumeroAleatorio = Math.floor(Math.random()*4);
            world[i][j] = myNumeroAleatorio;
        }
    }
}


console.log(crearMundo)