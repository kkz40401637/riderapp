import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';

import '../../services/bloc/get_profile/get_profile_cubit.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProfileCubit, GetProfileState>(
        builder: (context, state) {

      if (state is GetProfileSuccess) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,

          ),

          child:
          Drawer(
            backgroundColor: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  backgroundColor: Colors.white,
                  elevation: 0.0,
                  leading: Container(),
                  actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.black,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.profile.name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        state.profile.phone,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        state.profile.email!,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          children: [
                            Text(
                              'Log Out',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xfff55f01)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.logout,
                              color: Color(0xFFF55F01),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
          );


        } else if (state is GetProfileFail) {
          return Text("Error");
        } else {
        return Center(child: Text("Loading Data"));
      }
        }

    );
  }
}