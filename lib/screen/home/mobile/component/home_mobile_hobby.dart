import 'package:flutter/material.dart';

class HomeMobileHobby extends StatelessWidget {
  const HomeMobileHobby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            '趣味',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'ディズニーランド・ディズニーシー\n'
            'ユニバーサルスタジオジャパン\n'
            '海外旅行\n'
            '個人開発\n'
            'サッカー\n'
            'サッカー観戦\n'
            '横浜Fマリノス\n'
            'リバプール\n',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
