import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/models/post_model.dart';

class TopAuthorsWidget extends StatelessWidget {
  final PostModel postModel;

  const TopAuthorsWidget({Key key, this.postModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 55.w,vertical: 40.h),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(postModel.authorImage),
            radius: 125.r,
          ),
          SizedBox(height: 20.h),
          Text(postModel.authorName,style: TextStyle(fontSize: 35.sp,color: Colors.grey),)
        ],
      ),
    );
  }
}
