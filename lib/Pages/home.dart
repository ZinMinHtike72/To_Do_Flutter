

import 'package:flutter/material.dart';
import 'package:untitled1/Components/list_card.dart';
import 'package:untitled1/Pages/AddPage.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);
  final String data = 'Hi';
  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List data = [1,2,3,4,];

   addData (data){
    setState(() {
      data.add(data.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          leading: Icon(Icons.menu),
          title: Text('ToDo List'),
          backgroundColor: Colors.white,
          centerTitle: true,
          toolbarHeight: 70,
          actions: [
            Container(
               margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.alarm),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              child: IconButton(

                onPressed: (){
                  debugPrint('Hello');
                  // Navigator.of(context).pushNamed('/add/page');
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddPage(),settings: RouteSettings(
                    arguments: {
                      'fun': this.addData(4),
                    },

                  )));
                },
                icon: Icon(Icons.add),
              ),
            )
          ],
        ) ,
      body: Padding(
        padding: EdgeInsets.only(top: 20,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 7),
              child: SizedBox(
                width: double.infinity,

                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...data.map((e)=>Container(
                        margin: EdgeInsets.only(left: 7),
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text('$e',style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25
                          ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'Day $e',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),
                          )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.indigoAccent[200],
                        ),
                      )).toList()
                    ],
                  ),
                )

              ),
            ),
            Text(
              'Choose Activity',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height : MediaQuery.of(context).size.height/1.5,
              child: SingleChildScrollView(
                controller: ScrollController(),
                physics: ScrollPhysics(),
                child: ListView.builder(
                    controller: ScrollController(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: ScrollPhysics(),
                    itemCount: data.length,
                    itemBuilder: (context,index){
                      return List_Card(icon:Icons.lightbulb_outline, title: 'Food  Order $index', time: '$index Hour Ago');
                    }
                ),
              ),
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            data.add(data.length);
          });
          // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddPage()));
        },
        backgroundColor: Colors.indigo[800],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(Icons.add),
      ),

    );
  }
}
