import 'package:flutter/material.dart';

import 'fooder.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffF55F01),
        centerTitle: true,
        title: const Text(
          'Account',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.headset_mic),
          ),
        ],
      ),
      body: SizedBox(
        width: width,
        child: Column(
          children: [
            //Name Phone Number Status
            Column(
              children: [
                const SizedBox(height: 30),
                const Text(
                  'Aung Aung',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xA6000000),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '09951481234',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xA6000000),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  width: 90,
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xff00C851),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Online',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),

            // P R O F I L E
            Column(
              children: [
                const TitleTextAccountPage(titleText: 'PROFILE'),
                EachSettingListTile(
                  iconData: Icons.account_circle_outlined,
                  titleText: 'Update Profile',
                  onTap: () {},
                ),
                EachSettingListTile(
                  iconData: Icons.key,
                  titleText: 'Change Password',
                  onTap: () {},
                ),
              ],
            ),

            //G E N E R A L
            Column(
              children: [
                const TitleTextAccountPage(titleText: 'GENERAL'),
                EachSettingListTile(
                  iconData: Icons.language,
                  titleText: 'Language',
                  onTap: () {},
                ),
                EachSettingListTile(
                  iconData: Icons.headset_mic,
                  titleText: 'Help Center',
                  onTap: () {},
                ),
                EachSettingListTile(
                  iconData: Icons.list_alt,
                  titleText: 'Terms & Conditions',
                  onTap: () {},
                )
              ],
            ),
          ],
        ),
      ),

    );

  }

}

class EachSettingListTile extends StatelessWidget {
  const EachSettingListTile({
    Key? key,
    required this.iconData,
    required this.titleText,
    required this.onTap,
  }) : super(key: key);

  final IconData iconData;
  final String titleText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          iconData,
          size: 30,
          color: const Color(0x99000000),
        ),
        title: Text(
          titleText,
          style: const TextStyle(
            color: Color(0xA6000000),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 17,
        ),
      ),
    );
  }
}

class TitleTextAccountPage extends StatelessWidget {
  const TitleTextAccountPage({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
      color: const Color(0xffF2F2F7),
      child: Text(
        titleText,
        style: const TextStyle(
          color: Color(0x80000000),
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 5,
        ),
      ),
    );

  }
}