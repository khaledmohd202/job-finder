import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home_screen/widgets/job_item.dart';

class SearchList extends StatelessWidget {
  SearchList({super.key});
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 10),
      child: ListView.separated(
          itemBuilder: (context, index) => JobItem(job: jobList[index], showTime: true,),
          separatorBuilder: (_, index) => const SizedBox(height: 20),
          itemCount: jobList.length),
    );
  }
}
