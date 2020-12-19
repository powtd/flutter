let price=20
let fruit="mango"

if(price=20){
    let fruit="orange"
    console.log(fruit)
}
console.log(fruit)

//------------constant--------------------วิธีเปลี่ยนค่าคงที่คือประกาศเป็น object
const total={name:"banana",price:"50"}
total.name="melon"
console.log(total)

//--------------------------------arrow function

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

//--------------------------------------- rest parameter รับได้หลายค่า
const city=(c,... d)=>{
    return c+d
}

const addNunber=(... number)=>{
    return number.reduce((first,current)=>{
        return first+current
    })
}
console.log(addNunber(1,2,3,4,5))

// ------------------------------------------spread operator กระจาย a->b
let colors=['red','black']
let newcolors=[...colo,'pink','yellow']
console.log(newcolors)


//----------------Template Literals ต่อสตริง
const name='Hair'
const last='cut'
const age='20'

const all=`Name ${name}${last} Age ${age}`
//-----แบบขึ้นบรรทัดใหม่
const allNewLine=`${name}${last}
${age}`
console.log(all)
console.log(allNewLine)

//-------------------------Destructuring Object ค่าในobject->ตัวแปร

let person={name:'haricut',last:'dude'}
let {name,last} = person
console.log(name+last)
