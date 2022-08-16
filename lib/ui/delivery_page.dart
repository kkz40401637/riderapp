import 'package:apitestinglogin/ui/widgets/list_view_behavior.dart';
import 'package:flutter/material.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
              child: AppBar(
                backgroundColor: const Color(0xFF5A5A5A),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: 'UPCOMING',
                    ),
                    Tab(
                      text: 'IN PROGRESS',
                    ),
                    Tab(
                      text: 'FINISHED',
                    )
                  ],
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.white,
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Text('UpComing'),
                  Text("In Progress"),
                  Text('Finished'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
