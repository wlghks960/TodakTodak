import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/diary/diary_datail_controller.dart';

class DiaryDetailEmotionDenominatorZeroComponent extends StatelessWidget {
  const DiaryDetailEmotionDenominatorZeroComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DiaryDetailController());
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Text("AI 분석", style: TextStyle(fontSize: 24)),
          SizedBox(
            height: 8,
          ),
          for (int i = 0; i < 5; i++) ...[
            Row(
              children: [
                Image.asset(
                  controller.images[i].imagePath!,
                  width: 40,
                  height: 80,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: 248,
                  height: 20,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                          value: 0, backgroundColor: const Color(0xffD6D6D6))),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "0%",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ]
        ],
      ),
    );
  }
}