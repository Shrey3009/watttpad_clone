// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class op extends StatelessWidget {
  final String ntext;
  const op(this.ntext);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Reading App'),
      ),
      body: Center(
        child: Text(ntext),
      ),
    );
  }
}
