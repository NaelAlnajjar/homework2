import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/data/dummy_data.dart';
import 'package:ui_task2/models/post_model.dart';
import 'package:ui_task2/ui/widgets/background_image_widget.dart';
import 'package:ui_task2/ui/widgets/icon_widget2.dart';

class AuthorWidgetScreen extends StatelessWidget {
  final PostModel postModel;

  const AuthorWidgetScreen({Key key, this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final index=ModalRoute.of(context).settings.arguments as int;
   // int index = 0;
    return BackgroundImageWidget(
      backgroundImage: AssetImage(postList[index].postImage),
      height: MediaQuery.of(context).size.height * 0.4,
      boxFit: BoxFit.none,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Container(
              height: 550.h,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.white.withOpacity(0),
                    Colors.white.withOpacity(1),
                  ])),
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          postList[index].PostTitle,
                          softWrap: true,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 100.sp,
                          ),
                        ),
                      ),
                      buildRunIcon(),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80.w),
                  child: Text(postList[index].description,
                      style: TextStyle(color: Colors.grey, fontSize: 50.sp)),
                ),
                SizedBox(height: 80.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80.w),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 70.r,
                        backgroundImage: AssetImage(
                          postList[index].authorImage,
                        ),
                      ),
                      SizedBox(width: 40.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            postList[index].authorName,
                            style: TextStyle(
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            postList[index].numFollowers,
                            style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                Container(
                  height: 300.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: iconList.length - 1,
                    itemBuilder: (ctx, ind) => iconList
                        .map((e) => IconWidget2(
                              iconModel: e,
                            ))
                        .toList()[ind],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildRunIcon() {
    return CircleAvatar(
      radius: 130.r,
      backgroundColor: Colors.grey.withOpacity(0.1),
      child: CircleAvatar(
        radius: 70.r,
        backgroundColor: Colors.red,
        child: Icon(
          Icons.play_arrow,
          size: 60.sp,
        ),
      ),
    );
  }
}
