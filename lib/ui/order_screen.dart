import 'package:apitestinglogin/ui/widgets/my_drawer.dart';
import 'package:flutter/material.dart';

import 'fooder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:foodie_admin/models/orderL_list_model.dart';

import 'package:intl/intl.dart';

import '../services/bloc/bloc/cubit/auth_cubit.dart';
import '../services/bloc/get_profile/get_profile_cubit.dart';



class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 219, 212, 212)),
        backgroundColor: Color(0xFFF55F01),
        title: Text('Delivery'),
        centerTitle: true,
        actions:<Widget> [
            IconButton(
              icon: Icon(Icons.call) ,
              onPressed: () {

              },
            )
        ],
       ),

      extendBody: true,

      body: Center(

        child: Column(
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
                            color: Color.fromARGB(255, 78, 72, 72),
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
                            color: Color.fromARGB(255, 78, 72, 72),
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
                            color: Color.fromARGB(255, 78, 72, 72),
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


                  ],
                )
              ],
        ),
      ),
      bottomNavigationBar: Fooder(),

    );
  }
}
