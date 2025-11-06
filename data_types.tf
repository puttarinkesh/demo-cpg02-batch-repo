#https://en.wikipedia.org/wiki/MS_Dhoni
#https://developer.hashicorp.com/terraform/language/expressions/types

string: any text is called string and it should be in double quotes
ex: "puttarinkesh" "india-is-growing", "recently-we-started-cpg02-batch"
""

number: Numeric value is alwasy we need to follow number data type. 
ex: 456, 02, 97252, 92781018, 0987256, 0.272826, 8.527628

bool: either true or false, it wont accept yes, no,  
deploy rg = false
do not deploy vm = false

list or (tuple) : list will accept either string or number []
who are all joined: ["bhagya", "rafi", "veena"]
roll number: [05, 10, 25]

set: a collection of unique values and it will ignore duplicate values
["gokul", "bhagya", "rafi", "veena", "mahitha", "parihar", "veena", "rafi"]

map or (object): {} a group of values identified by named labels,  
{
    "gokul" = 12,
    "bhagya"  = 05,
    "rafi" = 10,
    "veena" = 25,
    "mahitha" = 30,
    "parihar" = 27
    key = value pairs
}

null: a value that represents absence or omission. 
shabnam = null
mahitha = null
***********************************************************************************



name = "Mahendra Singh Dhoni"
place = "Ranchi"
spouse = "Sakshi Dhoni"
age = 44
birth year = 1981
football player = false
Volley ball player = false
Cricket player = true
nicknames = ["mahi", "thala", "captain cool"]
awards = ["padma bhushan", "Padma Shri ", "major Dhyan Chand Khel Ratna Award"]
matches {
    "test" = 90,
    "odi" = 350,
    "T20I" = 98,
    "fc" = 131
}

phone number = null
