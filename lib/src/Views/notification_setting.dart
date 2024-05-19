// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ColorScreen/colors.dart';
import '../files/controller/controller.dart';

class NotificationSetting extends StatefulWidget {
  const NotificationSetting({super.key});

  @override
  State<NotificationSetting> createState() => _NotificationSettingState();
}

class _NotificationSettingState extends State<NotificationSetting> {
  // ExampleController exampleController = Get.put(ExampleController());
  // EnableController enableController = Get.put(EnableController());
  // RequestController requestController = Get.put(RequestController());
  // CommunitiesController communitiesController =
  //     Get.put(CommunitiesController());

  // EventsController eventsController = Get.put(EventsController());

  // FollowersController followersController = Get.put(FollowersController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification Settings',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: 'AppFonts.Apercu Pro'),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Enable Notifications',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'AppFonts.Apercu Pro'),
                ),
                Obx(() => Transform.scale(
                      scale: 0.8,
                      child: Switch(
                        inactiveThumbColor: InactiveThumbColor,
                        inactiveTrackColor: NotificationColor,
                        value: exampleController.notification.value,
                        onChanged: (value) {
                          exampleController.setNotification(value);
                        },
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 111),
              child: Text(
                'Notification Preferences',
                style:
                    TextStyle(fontSize: 20, fontFamily: 'AppFonts.Apercu Pro'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Receive notifications for new messages',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu Pro',
                  ),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      inactiveThumbColor: InactiveThumbColor,
                      inactiveTrackColor: NotificationColor,
                      value: enableController.notify.value,
                      onChanged: (value) {
                        enableController.setNotify(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Receive notifications for friend requests',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu Pro',
                  ),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      inactiveThumbColor: InactiveThumbColor,
                      inactiveTrackColor: NotificationColor,
                      value: requestController.request.value, // Fixed typo here
                      onChanged: (value) {
                        requestController.setRequest(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Receive notifications for updates in communities',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu Pro',
                  ),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      inactiveThumbColor: InactiveThumbColor,
                      inactiveTrackColor: NotificationColor,
                      value: communitiesController.community.value,
                      onChanged: (value) {
                        communitiesController.setCommunity(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Receive notifications for upcoming events',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu Pro',
                  ),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      inactiveThumbColor: InactiveThumbColor,
                      inactiveTrackColor: NotificationColor,
                      value: eventsController.events.value,
                      onChanged: (value) {
                        eventsController.setEvents(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Receive notifications for new followers',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'AppFonts.Apercu Pro',
                  ),
                ),
                Obx(
                  () => Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      inactiveThumbColor: InactiveThumbColor,
                      inactiveTrackColor: NotificationColor,
                      value: followersController.followers.value,
                      onChanged: (value) {
                        followersController.setFollowers(value);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
