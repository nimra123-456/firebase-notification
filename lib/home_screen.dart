import 'dart:convert';

import 'package:firebase_notification/notification_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    if (kDebugMode) {
      print("function called");
    }
    notificationServices.requestNotificationPremission();
    notificationServices.firebaseInit(context);
    notificationServices.setupInteractMessage(context);
    // notificationServices.initialLocalNotifications();
    notificationServices.getDeviceToken().then((value) {
      if (kDebugMode) {
        print("device token : $value");
      }
    });

    // notificationServices.isTokenRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter notification")),
      body: Center(
          child: TextButton(
        onPressed: () {
          notificationServices.getDeviceToken().then((value) async {
            var data = {
              "to": value.toString(),
              'priority': 'high',
              "notification": {
                "title": "Nimra",
                "body": "eager to learn",
              },
              "data": {"type": "msj", "id": "nimra1245"}
            };
            Response r = await post(
                Uri.parse('https://fcm.googleapis.com/fcm/send'),
                body: jsonEncode(data),
                headers: {
                  'Content-type': 'application/json; charset=UTf-8',
                  "Authorization":
                      "key=AAAAy3W3kr8:APA91bGh9ZEsoMmAg6bP5xBoyiEDcaxVNYBKPkYZlIyW2xrcK6eRIKKSsVegauZ29d5jJrq9x2j-_7RZCkTaXaFlW3nBDMeotNFdb49vgh26p1vWrRDguVafSe4LY57pa2waogyLG96b"
                });
            print("res ${r.body}");
          });
        },
        child: Text("send notification"),
      )),
    );
  }
}
