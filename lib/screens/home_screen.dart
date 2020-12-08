import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/recent_order.dart';
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(width: 0.8)
                ),
                hintText: "search food",
                prefixIcon: Icon(Icons.search,size: 30.0,),
                suffixIcon: IconButton(icon: Icon(Icons.close,size: 30.0,),onPressed: (){},)
              ),
            ),
          ),
          SizedBox(height: 5,),
          RecentOrder(),
        ],
        
      ),
    );
  }
}
