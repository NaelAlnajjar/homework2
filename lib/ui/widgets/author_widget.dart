import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/models/post_model.dart';

class AuthorWidget extends StatelessWidget {
  final PostModel postModel;
final int index;
  const AuthorWidget({Key key, this.postModel, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('/x',arguments: index);
      },
      child: Container(

        margin: EdgeInsets.symmetric(horizontal: 50.w,vertical: 25.h),

        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r),
              ),
              width: 200.w,
              height: 200.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.r),
                child: Image.asset(
                  postModel.postImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 40.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  postModel.PostTitle,
                  style: TextStyle(color: Colors.black, fontSize: 60.sp,fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 40.h),
                Text(
                  postModel.authorName,
                  style: TextStyle(color: Colors.grey, fontSize: 50.sp),
                ),
              ],
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }
}
