import 'package:get/get.dart';

class ExampleController extends GetxController {
  RxBool notification = false.obs;

  setNotification(bool value) {
    notification.value = value;
  }
}

class EnableController extends GetxController {
  RxBool notify = false.obs;

  setNotify(bool value) {
    notify.value = value;
  }
}

class RequestController extends GetxController {
  RxBool request = false.obs;

  setRequest(bool value) {
    request.value = value;
  }
}

class CommunitiesController extends GetxController {
  RxBool community = false.obs;

  setCommunity(bool value) {
    community.value = value;
  }
}

class EventsController extends GetxController {
  RxBool events = false.obs;

  setEvents(bool value) {
    events.value = value;
  }
}

class FollowersController extends GetxController {
  RxBool followers = false.obs;

  setFollowers(bool value) {
    followers.value = value;
  }
}
