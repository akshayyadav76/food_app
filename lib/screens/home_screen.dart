import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/data.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("food app"),centerTitle: true,
        leading: Icon(Icons.account_circle),
        actions: [
          FlatButton(
            child: Text(
              "Card (${currentUser.cart.length})",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
