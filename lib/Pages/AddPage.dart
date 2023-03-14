
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
   AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  // ModalRoute.of(context)!.settings.arguments;
  @override
  Widget build(BuildContext context) {
   final todo = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Some Data $todo"),
        centerTitle: true,
      ),
    );
  }
}
