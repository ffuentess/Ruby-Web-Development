var h = [2,4,6,8,10];
for (var i = 0; i < h.length; i++) {
    console.log(i);
    console.log(h[i]);
}

//salida: 0,2,1,4,2,6,3,8,4,10//

var j = [2,4,6,8,10];
for (var k = j.length - 1; k > 0; k--) {
    console.log(k);
    console.log(j[k]);
}

//salida: 4,10,3,8,2,6,1,4,0,2//

var m = [2,4,6,8,10];
for (var n = 0; n < m.length; n += 2) {
    console.log(n);
    console.log(m[n]);
}

//salida: 0,2,2,6,4,10//

var p = [-1,0,5,-3,2];
for (var q = 0; q < p.length; q++) {
    if (p[q] < 0) {
        p[q] = "Dojo";
    }
}
console.log(p);

//salida: ["Dojo",0,5,"Dojo",2]//

var r = [-1,0,5,-3,2];
for (var s = 0; s < r.length; s++) {
    if (r[s] > 0) {
        r[s] = r[s] * r[s];
    }
}
console.log(r);

//salida: [-1,0,25,-3,4]//

var t = [];
for (var u = 0; u < 4; u++) {
    t.push(u);
}
console.log(t);

//salida: [0,1,2,3]//

var v = [1,2,3,4,5];
for (var w = 0; w < v.length; w++) {
    v.pop();
}
console.log(v);

//salida: [1,2]//