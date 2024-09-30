// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class VoiceCallScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _VoiceCallScreenState createState() => _VoiceCallScreenState();
}

class _VoiceCallScreenState extends State<VoiceCallScreen> {
  @override
  void initState() {
    super.initState();
    // Initialize Agora SDK
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Voice Call')),
      body: Center(
        child: Text('Voice Call Screen'),
      ),
    );
  }
}
