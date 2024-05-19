// ignore_for_file: unused_element

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'notification_controller.dart';

// controller of change email address

TextEditingController currentemailController = TextEditingController();
TextEditingController newemailController = TextEditingController();
TextEditingController confirmemailController = TextEditingController();

// controller of contact us screen

TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();
TextEditingController mobilecontroller = TextEditingController();
TextEditingController textcontroller = TextEditingController();

// controller of demo screen
TextEditingController nameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();
TextEditingController companyController = TextEditingController();
TextEditingController jobController = TextEditingController();
TextEditingController productController = TextEditingController();
TextEditingController feedbackController = TextEditingController();

// controller of notification_setting.dart

ExampleController exampleController = Get.put(ExampleController());
EnableController enableController = Get.put(EnableController());
RequestController requestController = Get.put(RequestController());
CommunitiesController communitiesController = Get.put(CommunitiesController());

EventsController eventsController = Get.put(EventsController());

FollowersController followersController = Get.put(FollowersController());

// controller for SignIn Screen

TextEditingController numberController = TextEditingController();

// controller for login Screen

TextEditingController loginEmailController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();

// controller for Signup Screen

TextEditingController signupNameController = TextEditingController();
TextEditingController signupEmailController = TextEditingController();
TextEditingController signupPasswordController = TextEditingController();
TextEditingController signupCnfpasswordController = TextEditingController();
