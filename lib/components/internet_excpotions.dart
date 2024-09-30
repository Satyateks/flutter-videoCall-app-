import 'package:flutter/material.dart';
import 'package:vcall_chat/res/colors/app_color.dart';

class InternetExcpotions extends StatefulWidget {
  const InternetExcpotions({super.key});

  @override
  State<InternetExcpotions> createState() => _InternetExcpotionsState();
}

class _InternetExcpotionsState extends State<InternetExcpotions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 21),
      child: Column(
        children: [
          const Icon(
            Icons.cloud_off,
            color: AppColor.blackColor,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 11.0),
            child: Center(child: Text('no inter net, check your internet')),
          ),
          SizedBox(height: height * -15),
          const Text('Retry')
        ],
      ),
    );
  }
}
