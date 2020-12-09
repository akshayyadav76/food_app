import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/models.dart';
import 'package:food_app/widgets/rating_stars.dart';
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
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text("Near by Restaurant",style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.w600,letterSpacing: 1.3),
                 ),
              ),
             _buildRestaurants()
            ],
          ),
        ],
        
      ),
    );
  }
 Widget _buildRestaurants(){
   List<Widget>restaurantList =[];
   restaurants.forEach((index){
     restaurantList.add(
       Container( 
         margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),  
         decoration: BoxDecoration(
         color: Colors.blue,
         border: Border.all(width: 3.0,color: Colors.grey[400]),
         borderRadius: BorderRadius.circular(15.0)
         ),
         child: Row(
           children: [
           ClipRRect(
             borderRadius: BorderRadius.circular(15.0),
             child: Image(
               height: 120.0,
               width: 120.0,
               image: AssetImage(index.imageUrl),
               fit: BoxFit.cover,
             ),
           ),
           Expanded(
             child: Container(
               margin: EdgeInsets.all(12.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(index.name,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w600),),
                   RatingStars(index.rating),
                   Text(index.address,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
                   overflow: TextOverflow.ellipsis,),
                   Text("0.2 miles away",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500),
                   overflow: TextOverflow.ellipsis,)
                 ],
               ),
             ),
           ),
         ],),
       ),
     );
   });
   return Column(children: restaurantList,);
 }
}
