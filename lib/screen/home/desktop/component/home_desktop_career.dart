import 'package:flutter/material.dart';

class HomeDesktopCareer extends StatelessWidget {
  const HomeDesktopCareer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              '経歴',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        HomeMobileTile(age: '2019年3月', status: '神奈川県立横浜氷取沢高校 卒業'),
        HomeMobileTile(age: '2019年4月', status: '立正大学心理学部臨床心理学科 入学'),
        HomeMobileTile(age: '2023年3月', status: '立正大学心理学部臨床心理学科 卒業'),
        HomeMobileTile(age: '2023年4月', status: '立正大学大学院応用心理学専攻 入学'),
        HomeMobileTile(age: '2023年4月', status: '株式会社ゆめみ 入社'),
      ],
    );
  }
}

class HomeMobileTile extends StatelessWidget {
  const HomeMobileTile({
    Key? key,
    required this.age,
    required this.status,
  }) : super(key: key);

  final String age;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Row(
          children: [
            Text(
              age,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const Spacer(),
            Text(
              status,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
