import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class List_Card extends StatelessWidget {

  final IconData icon;
  final String title;
  final String time;
  const List_Card({required this.icon,required this.title,required this.time}) ;
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(top:14,bottom: 14,left: 20,right: 20),
      decoration: BoxDecoration(
          color:Colors.indigoAccent[200] ,
          borderRadius:BorderRadius.circular(10)
      ),
      child:Row(
        children: [
          SizedBox(
            child: Icon(
              icon,
              size: 38,
              color: Colors.white,
            ),
            width: 40,
          ),
          Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(time,style: TextStyle(
                        color: Colors.white
                    ),
                    )
                  ],
                ),
              )
          ),
          SizedBox(
            width: 40,
            child: Icon(Icons.arrow_right,color: Colors.white,size: 40,),
          )
        ],
      ),
    );;
  }
}
