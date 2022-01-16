import 'package:flutter/material.dart';
import 'package:ui_task2/models/icon_model.dart';
import 'package:ui_task2/models/post_model.dart';
import 'package:easy_localization/easy_localization.dart';
List<IconModel> iconList = [
  IconModel(icon: Icons.star_border, title: 'popular'.tr()),
  IconModel(icon: Icons.subdirectory_arrow_right_rounded, title: 'treading'.tr()),
  IconModel(icon: Icons.check_circle_outline, title: 'recent'.tr()),
  IconModel(icon: Icons.electric_bike, title: 'magic'.tr()),
];

List<PostModel> postList = [
  PostModel(
      authorImage: 'assets/images/author1.jpg',
      authorName: 'Natasha Rose',
      numFollowers: 'followers1'.tr(),
      postImage: 'assets/images/post_image1.jpg',
      PostTitle: 'title_financial'.tr(),
      description:
         'desc1'.tr(),),
  PostModel(
      authorImage: 'assets/images/author2.jpg',
      authorName: 'Jane Rose',
      numFollowers:'followers2'.tr(),
     postImage: 'assets/images/post_image2.jpg',
      PostTitle: 'title_min'.tr(),
      description:
         'desc2'.tr(),),
  PostModel(
      authorImage: 'assets/images/author3.jpg',
      authorName: 'Ronald Godez',
      numFollowers:'followers3'.tr(),
      postImage: 'assets/images/post_image3.jpg',
      PostTitle: 'title_bisnis'.tr(),
      description:
          'desc3'.tr(),),
  PostModel(
      authorImage: 'assets/images/author4.jpg',
      authorName: 'Anastacia',
      numFollowers: 'followers4'.tr(),
      postImage: 'assets/images/post_image4.jpg',
      PostTitle: 'title_financial'.tr(),
      description:
        'desc4'.tr(),),
];
