import 'package:flutter/material.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  const JobItem({super.key, required this.job, this.showTime = false});
  final Job job;
  final bool showTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Image.asset(job.logoUrl),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    job.company,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Icon(
                job.isMark ? Icons.bookmark : Icons.bookmark_outline,
                color:
                    job.isMark ? Theme.of(context).primaryColor : Colors.black,
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(job.title, style: const TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            IconText(icon: Icons.location_on_outlined, text: job.location,),
            if(showTime) IconText(icon: Icons.access_time_outlined, text: job.time,)
          ],),
        ],
      ),
    );
  }
}
