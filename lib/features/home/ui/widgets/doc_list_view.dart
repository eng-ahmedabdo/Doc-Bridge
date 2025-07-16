import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:doc_bridge/core/theming/styles.dart';
import 'package:doc_bridge/features/home/data/models/specilization_response_model.dart';
import 'package:doc_bridge/features/home/ui/widgets/doc_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocListView extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DocListView({super.key, this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsList?.length,
        itemBuilder: (context, index) => DocListViewItem(
          doctorsModel: doctorsList?[index],
        ),
      ),
    );
  }
}
