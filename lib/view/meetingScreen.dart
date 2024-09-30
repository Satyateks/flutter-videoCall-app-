
// import 'package:flutter/material.dart';
// import 'package:jitsi_meet/jitsi_meet.dart';


// class MeetingScreen extends StatefulWidget {
//   @override
//   _MeetingScreenState createState() => _MeetingScreenState();
// }

// class _MeetingScreenState extends State<MeetingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Jitsi Meet Example'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             _joinMeeting();
//           },
//           child: Text('Join Meeting'),
//         ),
//       ),
//     );
//   }

//   void _joinMeeting() async {
//     try {
//       var options = JitsiMeetingOptions(
//         roomNameOrUrl: "testroom",
//         userDisplayName: "User Name", room: '',
//       );
//       await JitsiMeet.joinMeeting(options);
//     } catch (error) {
//       print("Error joining meeting: $error");
//     }
//   }
// }