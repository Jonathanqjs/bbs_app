

import 'package:bbs_app/page/home/homePage.dart';
import 'package:bbs_app/page/topic/topicContent.dart';
import 'package:bbs_app/page/topic/topicPublish.dart';
import 'package:flutter/cupertino.dart';

var router = {
  '/':(context)=>HomePage(),
  'topicPublish':(context)=>TopicPublishPage(),
  'topicContent':(context)=>TopicContentPage()
};