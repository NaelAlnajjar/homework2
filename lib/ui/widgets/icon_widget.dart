import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_task2/models/icon_model.dart';

class IconWidget extends StatelessWidget {
  final IconModel iconModel;

  const IconWidget({Key key, this.iconModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      width: 200.w,
      height: 300.h,
      child: Column(
        children: [
          InkWell(
            child: CircleAvatar(
              radius: 95.r,
              backgroundColor: Colors.grey,
              child: CircleAvatar(
                radius: 90.r,
                backgroundColor: Colors.white,
                child: Icon(
                  iconModel.icon,
                  size: 75.w,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(iconModel.title,
              style: TextStyle(
                fontSize: 40.sp,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              )),
        ],
      ),
    );
  }
}
