import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:doc_bridge/core/theming/styles.dart';
import 'package:doc_bridge/features/home/data/models/specilization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DocListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                      doctorsModel?.name ?? 'Dr. Ahmed Ali',
                      style: TextStyles.font18DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalSpace(10.0),
                    Text(
                      '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                      style: TextStyles.font12GrayMedium,
                    ),
                    verticalSpace(10.0),
                    Text(doctorsModel?.email ?? 'email@gmail.com', style: TextStyles.font12GrayMedium),
                  ],
                ),
              ),
            ],
          ),
        );
  }
}