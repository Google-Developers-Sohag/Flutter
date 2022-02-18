## Easy Tasks
Make a function that return a random number from 1 to the range that has been entered as argument (parameter).

  1- first time: use positional parameter
  
  2- in another version: use named optional parameter
  
  3- use optional parameter
  
<hr/> 
 
## Medium Task
Make ***Named*** constructors to this code for text and Icon
```dart
class InfoRow extends StatelessWidget {
  
  const InfoRow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        decoration: BoxDecoration(
            border: Border.all(width: 0.5),
            borderRadius: const BorderRadius.all(Radius.circular(15.0))),
        child: Row(
          children: <Widget>[
            Padding(
              child: Text(
                //change me as a constructor
                ' ',
                style: const TextStyle(fontSize: 18),
              ),
              padding: const EdgeInsets.only(left: 10.0),
            ),
            const Spacer(),
            Padding(
              child: SizedBox(
                child: Icon(
                  //change me as a constructor
                  Icons.notes,
                ),
                height: 25.0,
              ),
              padding: const EdgeInsets.only(right: 15.0),
            )
          ],
        ),
      ),

    );
  }
}
```
so it could be used as this example

<img src="https://user-images.githubusercontent.com/50797015/154774752-931d9a0c-d6fa-4bb1-bcbc-451a13562f14.png" width=1200px/>


<hr/>
to be as this when finished
<img src="https://user-images.githubusercontent.com/50797015/154774799-1df40bbd-984c-4e93-9818-cc8462aefbe8.jpg" width=400px/>

