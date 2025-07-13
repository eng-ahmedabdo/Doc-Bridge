import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:flutter/material.dart';

import 'widgets/doc_blue_container.dart';
import 'widgets/doc_list_view.dart';
import 'widgets/doc_speciality_list_view.dart';
import 'widgets/doc_speciality_see_all.dart';
import 'widgets/home_top_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DocBlueContainer(),
              verticalSpace(16.0),
              const DocSpecialitySeeAll(),
              verticalSpace(16.0),
              const DocSpecialityListView(),
              verticalSpace(8),
              const DocListView(),
            ],
          ),
        ),
      ),
    );
  }
}
