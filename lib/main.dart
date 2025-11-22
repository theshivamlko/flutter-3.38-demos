import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

ThemeData customLightTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white, // button text/icon color for light theme
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(color: Colors.red),
    bodySmall: TextStyle(color: Colors.orange),
  ),
);

ThemeData customDarkTheme = ThemeData(
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.black, // button text/icon color for light theme
    ),
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
  ),
);


class Student {
  Student(this.name, this.age);

  late String name;
  late int age;

  factory Student.copy() {
    return Student("XYZ", 33);
  }

  static Student clone(Student student) {
    Student newStudent = Student(student.name, student.age);
    return newStudent;
  }
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: customDarkTheme,
      theme: customLightTheme,
      home: const MyHomePage(title: 'Flutter 3.38 Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {




  @override
  void initState() {
    super.initState();

    Student student1=.copy();
    Student student2=.clone(student1);

    Student student3=.new("Shivam", 30);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              headlineWidget(),
              Padding(padding:.all(16)),
              paragraphWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

@Preview(name: "ArticleItem1", group: "Page2")
Widget headlineWidget() {
  return Column(
    children: [
      Text(
        "Heading 2",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Padding(padding: EdgeInsets.all(8)),
      Text(
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took "
        "a galley of type and scrambled it to make a type specimen book.",
      ),
    ],
  );
}

@Preview(name: "Paragraph1", brightness: Brightness.dark, group: "Page1"
    ,theme: getTheme)
@Preview(name: "Paragraph2", brightness: Brightness.light, group: "Page1")
Widget paragraphWidget() {
  return Builder(
    builder: (context) {
      return Column(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Message", style: Theme.of(context).textTheme.headlineLarge),
              Padding(padding: EdgeInsets.all(4)),

              Text(
                "Lorem Ipsum is simply dummy text of the printing.",
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 2,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(8)),
          SizedBox(
            width: 150,
            child: ElevatedButton(onPressed: () {}, child: Text("Login")),
          ),
        ],
      );
    },
  );
}

PreviewThemeData getTheme(){
  return PreviewThemeData(
    materialDark: customDarkTheme,
    materialLight: customLightTheme
  );
}
