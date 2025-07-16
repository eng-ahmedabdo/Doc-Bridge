import 'package:doc_bridge/features/home/data/models/specilization_response_model.dart';
import 'package:doc_bridge/features/home/ui/widgets/doc_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocSpecialityListView extends StatelessWidget {
  final List<SpecializationsData?> specializationDataList;

  const DocSpecialityListView({
    super.key,
    required this.specializationDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationDataList.length,
        itemBuilder: (context, index) => DocSpecialityListViewItem(
          specializationsData: specializationDataList[index],
          itemIndex: index,
        ),
      ),
    );
  }
}
