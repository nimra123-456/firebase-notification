import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_notification/message_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  void requestNotificationPremission() async {
    print("function called  222");
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print("user granted permission");
      }
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print("user granted  provisional permission");
      }
    } else {
      if (kDebugMode) {
        AppSettings.openNotificationSettings();
        print("user denied permission");
      }
    }
  }

  void initialLocalNotifications(
      BuildContext context, RemoteMessage message) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitializationSettings = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(context, message);
    });
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      if (kDebugMode) {
        print("message title:${message.notification!.title.toString()}");
        print("message body:${message.notification!.body.toString()}");
        print("message body:${message.data['type']}");
        print("message body:${message.data['id']}");
      }
      if (Platform.isAndroid) {
        initialLocalNotifications(context, message);
        showNotification(message);
      } else {
        showNotification(message);
      }
    });
  }

  Future<void> showNotification(RemoteMessage message) async {
    AndroidNotificationChannel channel = AndroidNotificationChannel(
        Random.secure().nextInt(1000000).toString(),
        "High Importance Notification");
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            channel.id.toString(), channel.name.toString(),
            importance: Importance.max,
            channelDescription: "your channel description",
            priority: Priority.high,
            ticker: "ticker");
    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails, iOS: darwinNotificationDetails);
    Future.delayed(Duration.zero, () {
      _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails);
    });
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() {
    print("refresh");
    messaging.onTokenRefresh.listen((event) {
      event.toString();
      print("token in refresh ${event.toString()}");
    });
  }

  void setupInteractMessage(BuildContext context) async {
    // when app is terminated
    RemoteMessage? initalmessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initalmessage != null) {
      handleMessage(context, initalmessage);
    }
    //when app is in backgroud
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      handleMessage(context, event);
    });
  }

  void handleMessage(BuildContext context, RemoteMessage message) async {
    print("message ${message.data.values}");
    if (message.data['type'] == 'msj') {
      await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MessageScreen(
                    id: message.data['id'],
                  )));
    }
  }
}
