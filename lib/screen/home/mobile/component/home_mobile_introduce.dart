import 'package:flutter/material.dart';

class HomeMobileIntroduce extends StatelessWidget {
  const HomeMobileIntroduce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              '自己紹介',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '私たちのサイトを訪問していただき、心から感謝申し上げます。\n'
            'あなたの時間は貴重で、それを私たちのサイトで過ごしてくれることを大変嬉しく思います。',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Text(
            '株式会社ゆめみの23卒Flutterエンジニアです。\n'
            'iOS/Android 開発をすることが大好きな文系大学院生です。\n'
            '個人開発において...\n'
            'Apple Storeでは53個のアプリをリリースしています。\n'
            'Google Play Storeでは11個のアプリをリリースしています。\n',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
