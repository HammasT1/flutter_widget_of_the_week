import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceWidget extends StatefulWidget {
  const SharedPreferenceWidget({super.key});

  @override
  State<SharedPreferenceWidget> createState() => _SharedPreferenceWidgetState();
}

class _SharedPreferenceWidgetState extends State<SharedPreferenceWidget> {
  String name = '';
  late int age;
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    name = sp.getString('name') ?? '';
    age = sp.getInt('age') ?? 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(children: [Text(name.toString()), Text(age.toString())]),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          SharedPreferences sp = await SharedPreferences.getInstance();

          sp.remove('name');
          sp.remove('age');
          name = sp.getString('name') ?? '';
          age = sp.getInt('age') ?? 0;


          // sp.setInt('age', 20);
          // sp.setDouble('lucky_number', 20.2);
          // sp.setString('name', 'Hammas');
          // sp.setBool('IsLogin', false);

          // name = sp.getString('name').toString();

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
