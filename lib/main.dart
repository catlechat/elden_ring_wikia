import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedItem = 'Home Page Content';
  String pageTitle = "Elden Rign Wiki";

  void updateContent(String item) {
    setState(() {
      selectedItem = item;
      pageTitle = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(pageTitle),
      ),
      drawer: DrawerWidget(updateContent), // Pass the updateContent callback
      body: Center(
        child: Text(selectedItem), // Display the selected item's content here
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  final Function(String) updateContent;

  DrawerWidget(this.updateContent, {super.key});


  final List<String> menuItems = [
    'Ammos',
    'Armors',
    'Ashes of War',
    'Bosses',
    'Classes',
    'Creatures',
    'Incantations',
    'Items',
    'Locations',
    'NPCs',
    'Shields',
    'Sorceries',
    'Spirits',
    'Talismans',
    'Weapons',
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white38,
      shape: Border.all(
          color: const Color(0xFF000000),
          width: 1,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside),
      width: 110.0,
      child: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(menuItems[index]),
            onTap: () {
              updateContent(menuItems[index]);
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
