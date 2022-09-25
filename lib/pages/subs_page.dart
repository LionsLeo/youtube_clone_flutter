import 'package:flutter/material.dart';

class SubsPage extends StatefulWidget {
  const SubsPage({super.key});

  @override
  State<SubsPage> createState() => _SubsPageState();
}

class _SubsPageState extends State<SubsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Subs Page'),
      ),
    );
  }
}
