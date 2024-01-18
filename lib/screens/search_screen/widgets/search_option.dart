import 'package:flutter/material.dart';
import 'package:job_finder/common/constants.dart';

class SearchOption extends StatefulWidget {
  const SearchOption({super.key});

  @override
  State<SearchOption> createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final Map<String, bool> optionMap = {
    'Development': true,
    'Business': false,
    'Data': false,
    'Design': false,
    'Operation': true,
    'Other': true,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    // ignore: sized_box_for_whitespace
    return Container(
      height: 30,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              var res = optionMap[keys[index]] ?? false;
              optionMap[keys[index]] = !res;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: optionMap[keys[index]] != null &&
                      optionMap[keys[index]] == true
                  ? kPrimaryColor
                  : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
            ),
            child: Row(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  keys[index],
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: optionMap[keys[index]] != null &&
                            optionMap[keys[index]] == true
                        ? Colors.white
                        : Colors.black54,
                  ),
                ),
                if(optionMap[keys[index]] != null && optionMap[keys[index]] == true)
                  const Row(
                    children: [
                       SizedBox(width: 10),
                       Icon(Icons.close, size: 12, color: Colors.white),
                    ],
                  ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 10),
        itemCount: optionMap.length,
      ),
    );
  }
}
