import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'Tomate',
      'Käse',
      'Lauch',
      'Paprika',
      'Wein'
    ];

    return ListView.builder(
      reverse: false,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return SingleToDo(products[index]);
      },
    );
  }
}

class SingleToDo extends StatelessWidget {
  final String title;
  const SingleToDo(this.title); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0),
        leading: Checkbox(
          value: false,
          onChanged: (bool? value) {},
        ),
        title: Text(
          title,
          style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              color: Colors.black54),
        ),
        trailing: Icon(Icons.delete_outline),
      ),
    );
  }
}
