

import 'package:flutter/cupertino.dart';

class RatingStars extends StatelessWidget {

 final  int rating;
  RatingStars(this.rating);

  @override
  Widget build(BuildContext context) {
    String start = "";
    for(int i =0 ; i<rating;i++){
      start +=" ⭐ ";
    }
    return Text(start,style: TextStyle(fontSize:10.0),);
  }
}