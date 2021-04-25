// // import 'dart:async';
// // import 'locator.dart';

// import 'package:flutter/material.dart';

// ///
// ///This app is used for managing the existing state of our app like
// ///[init],
// ///[inactive]
// ///[paused]
// ///[resumed]
// ///[detatched]
// ///

// class LifeCycleManager extends StatefulWidget {
//   final Widget child;
//   LifeCycleManager({Key key, this.child}) : super(key: key);

//   _LifeCycleManagerState createState() => _LifeCycleManagerState();
// }

// class _LifeCycleManagerState extends State<LifeCycleManager>
//     with WidgetsBindingObserver {
//   // final _dbService = locator<DatabaseService>();
//   // StreamSubscription<Event> subscription;
//   // DatabaseReference connectedlistRef =
//   //     FirebaseDatabase.instance.reference().child('.info/connected');

//   ///connectedlistRef contains all the user's UIDs currently connected to firebase realtime database
//   ///here we are making the connection to the firebase by Subscribing to "connectedlistRef"
//   ///we can subscribe to any other referece childs too.but to avoid data we use the path=> (.info/connected) [AFAIK]
//   ///
//   DatabaseReference myidRef =
//       FirebaseDatabase.instance.reference().child('users/mymobilenumber');
//   bool localIOnlineIndicator =
//       false; //just to indicate you are online or offline
//   @override
//   void initState() {
//     WidgetsBinding.instance.addObserver(this);
//     // subscription = connectedlistRef.onValue.listen(handlerFunction);
//     //subscribes to Rtdb and monitors either we are connected or not
//     //the handlerFunction handles What to do when we are disconnected or connected
//     super.initState();
//     // updatePresence();
//   }

//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this);
//     // subscription?.cancel(); //canceling to avoid leaks
//     super.dispose();
//   }

//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) async {
//     print('APP LIFE CYCLE STATE ====>  = $state');
//     // if (state == AppLifecycleState.paused ||
//     //     state == AppLifecycleState.detached) {
//     // if (locator<AuthDataService>().firebaseUser.uid.isNotEmpty ||
//     //     locator<AuthDataService>().firebaseUser.uid != null) {
//     //   await updatePresence();
//     // }
//     // }
//   }

//   updatePresence() async {
//     // await _dbService
//     //     .updateUserPresence(locator<AuthDataService>().firebaseUser.uid);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return widget.child;
//   }

//   void handlerFunction(Event event) {
//     DataSnapshot dataSnapshot = event.snapshot;
//     bool myStatus = dataSnapshot
//         .value; // (.info/connected) returns true if you are connected to Firebase otherwise it will be false
//     if (myStatus == false) {
//       setState(() {
//         localIOnlineIndicator = false;
//       });
//     }
//     //in case you are not online and opened your app without internet just it does nothing.

//     else {
//       //else if you turned on internet and connected to Firebase
//       //First of All we need to tell firebase What to do if we lost Internet
//       //then only we Online = true
//       //So here i tell firebase If i lost connection please set "o=false" and "ls:198793427892893923" [timestamp]

//       //To reduce the downloading data I used "o" instead of "online" and "ls" instead of "last seen"
//       myidRef.onDisconnect().set({
//         'o': false,
//         'ls': ServerValue.timestamp,
//       })

//           //once the above statement is acknowledged by firebase then we are setting ourself Online = true
//           .then((a) {
//         myidRef.update({'o': true, 'ls': ServerValue.timestamp});
//       });
//       setState(() {
//         localIOnlineIndicator = true;
//       });
//     }
//   }
// }
