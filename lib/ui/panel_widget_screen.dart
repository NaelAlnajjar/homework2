import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/data/dummy_data.dart';
import 'package:ui_task2/ui/widgets/top_author_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'widgets/author_widget.dart';

class PanelWidgetScreen extends StatelessWidget {
  final ScrollController controller;

  const PanelWidgetScreen({
    Key key,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: 60.h),
        Center(
          child: Text(
            'handpicked'.tr(),
            style: TextStyle(fontSize: 60.sp, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 36.h),
        Center(
          child: Container(
            height: 10.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
        ),
        SizedBox(height: 50.h),
        buildAuthor(),
        SizedBox(height: 80.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.w),
          child: Text('top_authors'.tr(),
              style: TextStyle(fontSize: 50.sp, fontWeight: FontWeight.w700)),
        ),
        buildTopAuthors(),
      ],
    );
  }

  Widget buildAuthor() {
    return Container(
        height: 750.h,
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: ListView.builder(
          itemCount: postList.length,
          itemBuilder: (ctx, ind) => postList
              .map<AuthorWidget>((e) => AuthorWidget(postModel: e,index: ind,))
              .toList()[ind],
        ));
  }

  Widget buildTopAuthors() {
    return Container(
      height: 400.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: postList.length,
        itemBuilder: (ctx, ind) => postList
            .map((e) => TopAuthorsWidget(
                  postModel: e,
                ))
            .toList()[ind],
      ),
    );
  }
}
