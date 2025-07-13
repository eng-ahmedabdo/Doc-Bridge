import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:doc_bridge/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocListView extends StatelessWidget {
  const DocListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/026/375/249/small_2x/ai-generative-portrait-of-confident-male-doctor-in-white-coat-and-stethoscope-standing-with-arms-crossed-and-looking-at-camera-photo.jpg',
                  height: 120.h,
                  width: 110.w,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Ahmed Ali',
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(10.0),
                    Text(
                      'General | 010123456789',
                      style: TextStyles.font12GrayMedium,
                    ),
                    verticalSpace(10.0),
                    Text('email@gmail.com', style: TextStyles.font12GrayMedium),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
