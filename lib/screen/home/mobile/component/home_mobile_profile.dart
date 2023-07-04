import 'package:flutter/material.dart';

class HomeMobileProfile extends StatelessWidget {
  const HomeMobileProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.width / 2,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/image.JPG',
                ),
              ),
            ),
          ),
          const HomeMobileTitle(
            title: '本名',
            description: '井関竜太郎',
          ),
          const HomeMobileTitle(
            title: 'ニックネーム',
            description: 'いせりゅー',
          ),
          const HomeMobileTitle(
            title: '年齢',
            //TODO 現在の日付を取得する。
            description: '23歳(2023年現在)',
          ),
          const HomeMobileTitle(
            title: '現職',
            description: '株式会社ゆめみ所属',
          ),
          const HomeMobileTitle(
            title: '職種',
            description: 'モバイルアプリエンジニア',
          ),
          const HomeMobileTitle(
            title: '詳細',
            description: 'Flutter エンジニア',
          ),
        ],
      ),
    );
  }
}

class HomeMobileTitle extends StatelessWidget {
  const HomeMobileTitle({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 30),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Text(
                description,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 30),
            ],
          ),
        ),
      ),
    );
  }
}
