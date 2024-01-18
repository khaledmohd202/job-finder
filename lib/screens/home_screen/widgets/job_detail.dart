import 'package:flutter/material.dart';
import 'package:job_finder/common/constants.dart';
import 'package:job_finder/models/job.dart';
import 'package:job_finder/screens/home_screen/widgets/custom_elevated_button.dart';
import 'package:job_finder/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  const JobDetail({super.key, required this.job});
  final Job job;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(25),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(0.1),
                          ),
                          child: Image.asset(job.logoUrl),
                        ),
                        const SizedBox(width: 10),
                        Text(job.company,
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black54)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isMark
                              ? Icons.bookmark
                              : Icons.bookmark_outline_outlined,
                          color: job.isMark
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                        const Icon(Icons.more_horiz_outlined),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  job.title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                      icon: Icons.location_on_outlined,
                      text: job.location,
                    ),
                    IconText(
                      icon: Icons.access_time_outlined,
                      text: job.time,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Requirement',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ...job.desc
                    .map((e) => Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(width: 10),
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth:
                                      MediaQuery.of(context).size.width / 1.2,
                                ),
                                child: Text(
                                  e,
                                  style: const TextStyle(
                                    wordSpacing: 2,
                                    height: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                    // ignore: unnecessary_to_list_in_spreads
                    .toList(),
                const CustomElevatedButton(color: kPrimaryColor, title: 'Apply Now',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

