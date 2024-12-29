import 'package:flutter/material.dart';

class InternetExceptionWidget extends StatefulWidget {
  const InternetExceptionWidget({super.key});

  @override
  State<InternetExceptionWidget> createState() =>
      _InternetExceptionWidgetState();
}

class _InternetExceptionWidgetState extends State<InternetExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          Icon(
            Icons.cloud_off,
            size: 40,
            color: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(child: Text('Internet Exception')),
          ),
          SizedBox(
            height: size.height * .15,
          ),
          Container(
            height: 44,
            width: 160,
            decoration: BoxDecoration(color: Colors.red),
            child: Center(child: Text("Retry")),
          )
        ],
      ),
    );
  }
}
