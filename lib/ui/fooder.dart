import 'package:apitestinglogin/ui/profile.dart';
import 'package:apitestinglogin/ui/order_screen.dart';
import 'package:flutter/material.dart';

class Fooder extends StatefulWidget {
  const Fooder({Key? key}) : super(key: key);

  @override
  State<Fooder> createState() => _FooderState();
}

class _FooderState extends State<Fooder> {
  int selectedPage=0;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF55F01),
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 0.1),
                          left: BorderSide(color: Colors.white, width: 0.1),
                          right: BorderSide(color: Colors.white, width: 0.1),
                          bottom: BorderSide(color: Colors.white,)),
                    ),
                    height: 50,
                    child: Center(
                        child: Text(
                          "UPCOMING",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF55F01),
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 0.1),
                          left: BorderSide(color: Colors.white, width: 0.1),
                          right: BorderSide(color: Colors.white, width: 0.1),
                          bottom: BorderSide(color: Colors.white,)),
                    ),
                    height: 50,
                    child: Center(
                        child: Text(
                          "IN PROGRESS",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),


              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF55F01),
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 0.1),
                          left: BorderSide(color: Colors.white, width: 0.1),
                          right: BorderSide(color: Colors.white, width: 0.1),
                          bottom: BorderSide(color: Colors.white,)),
                    ),
                    height: 50,
                    child: Center(
                        child: Text(
                          "FINISHED",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ),


              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Profile()));
                  },

                  child: Container(

                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                        Icon(Icons.person), // <-- Icon
                        Text("Profile"), // <-- Text
                      ],
                    ),
                  )
                ),
              ),



            ],
          )
        ],
      ),
    );

  }


}


