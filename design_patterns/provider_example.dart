// This class is what Provider will work with.
// It will _provide_ an instance of the class to any widget
// in the tree that cares about it. 
class Person {
  Person({this.name, this.age});

  final String name;
  final int age;
}

// Here, we are running an app as you'd expect with any Flutter app
// But, we're also wrapping `MyApp` in a widget called 'Provider'
// Importantly, `Provider` is itself a widget, so it can live in the widget tree.
// This class uses a property called `create` to make an instance of `Person`
// whenever it's needed by a widget in the tree.
// The object returned by the function passed to `create` is what the rest of our app
// has access to. 
void main() {
  runApp(
    Provider(
      create: (_) => Person(name: "Yohan", age: 25),
      child: MyApp(),
    ),
  );
}


// Just a plain ol' StatelessWidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

// Again, just a stateless widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Class'),
      ),
      body: Center(
        child: Text(
          // this string is where we use Provider to fetch the instance
          // of `Person` created above in the `create` property
          '''
          Hi ${Provider.of<Person>(context).name}!
          You are ${Provider.of<Person>(context).age} years old''',
        ),
      ),
    );
  }
}
