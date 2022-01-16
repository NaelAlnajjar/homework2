import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF20855c),
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(
          width: 8.w,
          color: Colors.grey,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 60.w),
      padding: EdgeInsets.symmetric( horizontal: 100.w),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'hint_text'.tr(),
          hintStyle: TextStyle(color: Colors.white,fontSize: 50.sp),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 0.w,
            ),
          ),
          //enabled: true,
          /*enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              width: 8,
              color:  Color(0xFF0000FF),
              style: BorderStyle.none,
            ),
          ),*/
        ),
      ),
    );
  }
}
