let price=20
let fruit="mango"


function addition(a,b){
    return a+b
}
let result=addition(10,30)
console.log(result)

const add=(a,b)=>a+b
//--------------------------------------------function สร้าง object
const person=(name,age)=>({name:name,age:age})

console.log(person("ooooooo",15))

//--------------------------------default parameter กำหนดค่าเริ่มต้นให้
const user=(name,last,city="bankok")=>{
    return name+last+city
}
console.log(user("pppp ","yyyyy ","newyork"))
console.log(user("haircut ","yyyyy "))



// ------------------------------------------spread operator กระจาย a->b
let colors=['red','black']
let newcolors=[...colo,'pink','yellow']
console.log(newcolors)



