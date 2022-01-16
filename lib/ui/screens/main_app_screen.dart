import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_task2/data/dummy_data.dart';
import 'package:ui_task2/ui/widgets/background_image_widget.dart';
import 'package:ui_task2/ui/widgets/icon_widget.dart';
import 'package:ui_task2/ui/panel_widget_screen.dart';
import 'package:ui_task2/ui/widgets/text_field_widget.dart';
import 'package:easy_localization/easy_localization.dart';
class MainAppScreen extends StatelessWidget {
  MainAppScreen({Key key}) : super(key: key);
  final Color transparentColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.35;
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.85;
    return BackgroundImageWidget(
      backgroundImage: AssetImage('assets/images/image.jpg'),
      child: Scaffold(
        backgroundColor: transparentColor,
        drawer: Container(),
        appBar: AppBar(
          //leading: Icon(Icons.menu),
          elevation: 0.h,
          backgroundColor: transparentColor,
        ),
        body: SlidingUpPanel(
          minHeight: panelHeightClosed,
          maxHeight: panelHeightOpen,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 80.h),
                Center(
                    child: Text(
                  'browse'.tr(),
                  style: TextStyle(
                      fontSize: 140.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                )),
                SizedBox(height: 30.h),
                Center(
                    child: Text(
                  'help_text'.tr(),
                  style: TextStyle(
                      fontSize: 48.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
                SizedBox(height: 45.h),
                TextFieldWidget(),
                SizedBox(height: 110.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: iconList
                      .map((e) => IconWidget(
                            iconModel: e,
                          ))
                      .toList(),
                ),
              ],
            ),
          ),
          panelBuilder: (controller) => PanelWidgetScreen(
            controller: controller,
          ),
          borderRadius: BorderRadius.vertical(top: Radius.circular(90.r)),
        ),
      ),
    );
  }
}
