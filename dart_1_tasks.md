Hello we have multible stages of tasks here 

### Easy Tasks

1- make a Map with String keys and dynamic values in each one the key will be the Data type Name that we take in course and the value will be the example of this data type.

ex:- `{"double" : 3.147}`

2- make a list of Maps which have student name as key and grade as value

3- compare by 1 and '1' in if else statement

4- do the example of dynamic and object data types that tells the difference between them

5- print from 1 to 100 by for loop once and while loop in another, _note: 100 is included_
<hr/>

### Medium Task

1- add a Subtract functional button _so called horizontal_rule_ in this Flutter code
[task(1).txt](https://github.com/Google-Developers-Sohag/Flutter-Tasks/files/8037828/task.1.txt)

to get the result like that :

https://user-images.githubusercontent.com/50797015/153331865-609b04c7-bc39-43c0-88e3-0d31c8d4739d.mp4

<hr/>

### Hard Task
1- Make three functions 1-inputHandler 2-SummationOfNums 3-mapOfSummations at least, of course you can make more.
  
  the target is that SummationOfNums will get integer ex:`5` and sum all numbers from 1 to 5, the answer should be 15
  
  inputHandler will take endless list of input like that 
  
  ![image](https://user-images.githubusercontent.com/50797015/153332909-9b65fe0d-8d9b-459b-beaa-ec9fc4f6f40b.png)
  
  _here "anything  .." sentence is my input and 'end of list' is just printed string to interact with user_ 
  
  ___Note: only the user who can dedict the size of the list___

  lastly the mapOfSummation will make the input integer as the String key of map and the value is the result of summation
  
  <hr/>
  Done.

<hr/>

My take for Hard Task
```dart
import 'dart:io';

void main() {
  print(mapOfSummition());
}

List<int> inputHandler() {
    bool notDone = true;
    List<int> ranges = [];
    while (notDone) {
      String? input = stdin.readLineSync();
      try {
        int range = int.parse(input!);
        ranges.add(range);
      } catch (e) {
        notDone = false;
        print("end of list");
      }
    }
    return ranges;
  }

  int summationOfNums(int range) {
    int commulative = 0;
    for (int i = 0; i <= range; i++) {
      commulative += i;
    }
    return commulative;
  }

  Map<String, int> mapOfSummition() {
    Map<String, int> results = {};
    List<int> ranges = inputHandler();
    int l = ranges.length;
    for (int i = 0; i < l; i++) {
      results["Sum of ${ranges[i]}"] = summationOfNums(ranges[i]);
    }
    return results;
  }
```
