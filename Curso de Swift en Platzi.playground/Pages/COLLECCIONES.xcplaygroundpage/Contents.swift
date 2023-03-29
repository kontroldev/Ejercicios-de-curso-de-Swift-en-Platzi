import Foundation


//ARRAYS
/*UN ARRAY es una colección ORDENADA de elementos del mismo tipo.
 Cada elemento, tiene una posición en el array, que se puede utilizar para acceder a ese elemento.*/

var someInts = [Int]() //Esto seria un Arrays vacio.

someInts.count
someInts.append(31) // Aqui le añadimos un valor a un elemento.
someInts.count // Aqui vemos como ver cuantos elementoshay dentro de un Array.

someInts = [] //Esto seria una forma de vacia un Array.

var someDoubles = Array(repeating: 3.141592, count: 3)//La forma de repetir un elemento un determinado numero de veces
someDoubles.count

var soreDouble = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + soreDouble //Une las dos Arrays.
aLotOfDoubles.count

var shoppingList : [String] = ["Papas", "Pimiento", "Tortilla", "Cerdo", "Cebolla"] //Un String ARRAY.
shoppingList.count


//EJERCICIOS
var family = [String]()
family.append("Noelia")
family.append("Isaac")
family.append("NALA")
family.append("JANA")
family.append("ONYX")
family.append("CORA")
family.count

let family2 = ["Noelia", "Isaac", "NALA", "JANA", "ONYX", "CORA"]
family2.count


//ACEDER O MODIFICAR UN ARRAY
if shoppingList.isEmpty{
    print("La lista de la compra esta vacia")
} else{
    print("Mandemos a Raúl a comprar")
}

shoppingList.append("Coca Cola") // Aqui añadimos en valor mas a la Array
shoppingList.count

shoppingList += ["Totopos", "Guacamoles"] //Otra forma de añadir valores a una Array.
shoppingList.count

var firsElement = shoppingList[0] // Con esto podemos consultar el elemento o dato que hay en la esa posicion de la Array.
shoppingList[0] = "Huevos" //Esto cambiamos el elemento o dato de la posicion selecionada.
shoppingList
shoppingList[4...6] //Consultamos en las posiciones marcadas los valores que hay en esa Array utilizando los RANGOS.
shoppingList[4...6] = ["Naranja", "Platano", "Mango"] // Cmabiamos el elemento/valor la posiciopn seleccionada de un ARRAY.


//BORRAR ELEMENTO DE UN ARRAY
let pepper = shoppingList.remove(at: 1) //Con esto eleminamos un elemento/valor e la posicion selecionada de un ARRAY.
shoppingList.removeLast() //Eliminamos el ultimo elemento/valor de un ARRAY.

for item in shoppingList{ //Con esto optenemos los elementos/valores que tenemos dentro de un ARRAY.
    print(item)
}
for (idx, item) in shoppingList.enumerated(){  //Esta funcion crea una lista de un ARRAY (MIRAR EJEMPLO EN LA CONSOLA ⬇️)
    print("Item \(idx+1): \(item) ")
}


//CONJUNTO - (SET)
/*Un SET es una colección NO ordenada de elementos únicos.
 Cada elemento en un set debe ser único(NO se puede repetir).

Los sets se definen utilizando la sintaxis de corchetes, como se muestra a continuación:⬇️*/

var letters = Set<Character>() //Asi se hace un SET vacio.
letters.count
letters.insert("a") // Y dee sta manera se añade valores a un SET.
letters.insert("h")
letters.insert("b")
letters

var favouritGames : Set<String> = ["Battlefield", "FIFA23", "SOCOM", "Batman Arkham"]
favouritGames.count

if favouritGames.isEmpty{
    print("No hay juegos favoritos") //Si eliminamos los juegos de arriba, esta linea de ejecutaria. un SET vacio.
}

//Para añadir elementos a un SET ⬇️
favouritGames.insert("Metal Gear Solid")

//Para consultar si hay un elemento en un SET.
if favouritGames.contains("Metal Gear Solid"){
    print("Me encanta ese juego")
}

//Para eliminar un elemento a un SET
//*Como no tenemos posicion ordenada en un SET hay que hacerlo del siguiente modo
if let removeGame = favouritGames.remove("Metal Gear Solid"){
    print("He eliminado de la lista \(removeGame)")
}

for vg in favouritGames{
    print(vg)
}

for vg in favouritGames.sorted(){ //Poniendo el comando ".sorted()" a la hora de imprimir los valores, quedaran ordenadro de la manera que fueron añadidos.
    print(vg)
}


//OPERACIONES CON CONJUNTOS.
let oddDigits: Set = [1, 3, 5, 7, 9]
let eventDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers : Set = [2, 3, 5, 7]

//A union B = elementos que son o bien de A, o bien de B o de los dos.
oddDigits.union(eventDigits).sorted() //Ponemos .sorted para ordenarlos los elementos.

//A intersección B = elementos que son a la de vez de A y de B
oddDigits.intersection(eventDigits) //Esto hace que busca si en el SETY hay un elemento que sea par y impart a la vez, al no a ver ninguno, me sale vacio.
eventDigits.intersection(primeNumbers).sorted() //Esto saca los numeros primos pares de los elementos.
oddDigits.intersection(primeNumbers).sorted() //Esto saca los impares de numeros primos de los elementos.

//A - B = elementos que nos son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted() //Elimino todos los numero impares que nos son primos son: ➡️

// A + B = (A-B) union (B-A) Diferencia simetrica entre A y B
oddDigits.symmetricDifference(primeNumbers).sorted() // Los numero pares que no son primos, y los numeros primos que no son pares. ➡️



let houseAnimals:Set = ["🐶", "😹"]
let farmAniumals:Set = ["🐮", "🐔", " 🐑", "🐶", "😹"]
let cityAnimales:Set = ["🐀", "🕊️"]

houseAnimals.isSubset(of: farmAniumals) // Let 1, es un subconjuntos de let 2: ➡️ el perro y el gato, esta contenido en los dos conjuntos.
farmAniumals.isSuperset(of: houseAnimals)  //Let 2 es un super conjunto de let 1:➡️
farmAniumals.isDisjoint(with: cityAnimales)  //A y B son disjuntos si su interseccion es vacía.    //REPASAR!!!!



