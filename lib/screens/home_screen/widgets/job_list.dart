import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home_screen/widgets/job_detail.dart';
import 'package:job_finder/screens/home_screen/widgets/job_item.dart';

class JobList extends StatelessWidget {
  JobList({super.key});
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      height: MediaQuery.of(context).size.height / 4.4,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context) => JobDetail(job: jobList[index]));
          },
          child: JobItem(
            job: jobList[index],
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15),
        itemCount: jobList.length,
      ),
    );
  }
}
