**Dart is an object-oriented programming language, so it supports the concept of class, object … etc. In Dart, we can define classes and objects of our own. We use the class keyword to do so. 
Declaring class in Dart**

Syntax:  

```dart
class class_name {

   // Body of class
}
```
In the above syntax: 

    Class is the keyword use to initialize the class.
    class_name is the name of the class.
    Body of class consists of fields, constructors, getter and setter methods, etc.

### Declaring objects in Dart –

Objects are the instance of the class and they are declared by using new keyword followed by the class name.

Syntax:  

`var object_name = new class_name([ arguments ]);`

In the above syntax:  

    new is the keyword use to declare the instance of the class
    object_name is the name of the object and its naming is similar to the variable name in dart.
    class_name is the name of the class whose instance variable is been created.
    arguments are the input which are needed to be pass if we are willing to call a constructor.

After the object is created, there will be the need to access the fields which we will create. We use the dot(.) operator for that purpose.

Syntax:  
```dart
 // For accessing the property
object_name.property_name;

// For accessing the method
object_name.method_name();
```
<hr/>

## Dart Constructors

A constructor is a special function of the class that is responsible for initializing the variables of the class. Dart defines a constructor with the same name as that of the class. A constructor is a function and hence can be parameterized. However, unlike a function, constructors cannot have a return type. If you don’t declare a constructor, a default no-argument constructor is provided for you.
Syntax
```dart
Class_name(parameter_list) { 
   //constructor body 
}
```
**_Example_**

The following example shows how to use constructors in Dart
```dart
void main() { 
   Car c = new Car('BMW'); 
} 
class Car { 
   Car(String engine) { 
      print(engine); 
   } 
}
```
It should produce the following output −

`BMW`

### Named Constructors
  
Dart provides named constructors to enable a class define multiple constructors. The syntax of named constructors is as given below −
Syntax : Defining the constructor

`Class_name.constructor_name(param_list)`

**_Example_**

The following example shows how you can use named constructors in Dart −
```dart
void main() {           
   Car c1 = new Car.namedConst('E1001');                                       
   Car c2 = new Car(); 
}           
class Car {                   
   Car() {                           
      print("Non-parameterized constructor invoked");
   }                                   
   Car.namedConst(String engine) { 
      print("The engine is : ${engine}");    
   }                               
}
```
It should produce the following output −

The engine is : E1001 
Non-parameterized constructor invoked

OR and the most preferable way:
```dart
void main() {           
   Car c1 = new Car(typeName: "Tesla");                                        
   c1.display();
}           
class Car {
   final String typeName;
   Car({required String this.typeName});
   
   void display(){
      print("$typeName");
   }                               
}
```
**OutPut** : `Tesla`

 
### The this Keyword

The this keyword refers to the current instance of the class. Here, the parameter name and the name of the class’s field are the same. Hence to avoid ambiguity, the class’s field is prefixed with the this keyword. The following example explains the same −
Example

The following example explains how to use the this keyword in Dart −
```dart
void main() { 
   Car c1 = new Car('E1001'); 
}  
class Car { 
   String engine; 
   Car(String engine) { 
      this.engine = engine; 
      print("The engine is : ${engine}"); 
   } 
} 
```
<hr/>

## Const And Final Keyword

Dart supports the assignment of constant value to a variable. These are done by the use of the following keyword:

* const keyword
* final keyword

These keywords are used to keep the value of a variable static throughout the code base, meaning once the variable is defined its state cannot be altered. There are no limitations if these keywords have a defined data type or not.
Final Keyword In Dart

The final keyword is used to hardcode the values of the variable and it cannot be altered in future, neither any kind of operations performed on these variables can alter its value (state).
```
// Without datatype
final variable_name;

// With datatype
final data_type  variable_name;
```
Example: Using the final keywords in a Dart program.
```dart
void main() {
   
  // Assigning value to gdsc
  // variable without datatype
  final gdsc = "Google DSC";
   
  // Printing variable gdsc
  print(gdsc);
    
  // Assigning value to gdsc2
  // variable with datatype
  final String gdsc2 = "Google DSC Again!!";
   
  // Printing variable geek2
  print(gdsc2);
}
```
**Output:**
`
Google DSC
Google DSC Again!!
`
If we try to reassign the same variable then it will display error.

 
### Const Keyword in Dart

The Const keyword in Dart behaves exactly like the final keyword. The only difference between final and const is that the const makes the variable constant from compile-time only. Using const on an object, makes the object’s entire deep state strictly fixed at compile-time and that the object with this state will be considered frozen and completely immutable.

Example: Using const keywords in a Dart program.
```dart
void main() {
   
  // Assigning value to gdsc
  // variable without datatype
  const gdsc = "Google DSC";
   
  // Printing variable gdsc
  print(gdsc);
    
  // Assigning value to gdsc2
  // variable with datatype
  const String gdsc2 = "Google DSC Again!!";
   
  // Printing variable gdsc2
  print(gdsc2);
}

``` 
**Output:**
`
Google DSC
Google DSC Again!!
`
 

Example: Assigning value without const keyword and then by const keyword.

### Without Const Keyword
```dart
// Declaring a function
gfg() => [1, 2];
 
// Main function
void main() {
  // Assigning value
  // through function
  var geek1 = gfg();
  var geek2 = gfg();
   
  // Printing result
  // false
  print(geek1 == geek2);
  print(geek1);
  print(geek2);
}
```
**Output :**
`
false
[1, 2]
[1, 2]
`
 

With Const Keyword:
```dart
// Declaring a function
gfg() => const[1, 2];
 
// Main function
void main() {
  // Assigning value
  // through function
  var geek1 = gfg();
  var geek2 = gfg();
   
  // Printing result
  // true
  print(geek1 == geek2);
  print(geek1);
  print(geek2);
}
```
**Output :**
`
true
[1, 2]
[1, 2]
`
### Const Keyword Properties:

* It is necessary to create them from the data available during the compile time. For instance: setting string “Google DSC” is fine but setting the current time is not.
* They are deeply and transitively immutable.
* They are canonicalised.
