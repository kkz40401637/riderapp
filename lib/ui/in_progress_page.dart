import 'package:flutter/material.dart';

class InProgressPage extends StatefulWidget {
  const InProgressPage({Key? key}) : super(key: key);

  @override
  State<InProgressPage> createState() => _InProgressPageState();
}

class _InProgressPageState extends State<InProgressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 2,
                spreadRadius: -1,
                color: Colors.grey,
              ),
            ],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'CDC14990602201',
                    style: TextStyle(
                      color: Color(0xA5000000),
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                    decoration: BoxDecoration(
                        color: const Color(0xff00C851),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Text(
                      'Ready at 15:30',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Nyein Hsu ',
                style: TextStyle(
                  color: Color(0xB2000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
