
import 'package:flutter/material.dart';
import 'package:food_app/data/data.dart';
import 'package:food_app/models/models.dart';

class RecentOrder extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Recent Orders",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0),
          height: 120,
          //color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: currentUser.orders.length,
            itemBuilder: (context,i){
              Order order = currentUser.orders[i];
              return _buildRecentOrder(context,order);
            },
          ),
        ) 
          
      ],
    );
  }

 Widget _buildRecentOrder(BuildContext context,Order order){
   return Container(
     margin: EdgeInsets.all(10.0),
     width: 320,
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(20),
       border: Border.all(width: 2.0,color: Colors.grey[400]),
       
     ),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Expanded(
           child: Row(
             children: 
              [
               ClipRRect(
                 borderRadius:BorderRadius.circular(20),
                 child: Image(
                   height: 100,
                   width: 100,
                   image: AssetImage(order.food.imageUrl),
                   fit: BoxFit.cover,
                 )
                   ),
                 Expanded(
                   child: Container(
               //color: Colors.lime,
               margin: EdgeInsets.symmetric(horizontal: 10.0),
               child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text(order.food.name+"sdsdasddwewwqeqwrqqqg  vf",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                     overflow: TextOverflow.ellipsis,),
                     Text(order.restaurant.name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                     overflow: TextOverflow.ellipsis,),
                     Text(order.date,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),
                     overflow: TextOverflow.ellipsis,)
                   ],
               ),
             ),
                 ),
             ],
           ),
         ),
           
           Container(
             margin: EdgeInsets.only(right: 10),
              width: 48,
              decoration: BoxDecoration(
               color: Theme.of(context).primaryColor,
               borderRadius: BorderRadius.circular(30),
               
              ),
              child: IconButton(
                icon: Icon(Icons.add,color: Colors.white,),
                onPressed: (){},
              ),
           )
       ],
     ),
   );
 }

}
