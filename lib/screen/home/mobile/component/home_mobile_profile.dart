import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_portfolio_app/screen/home/mobile/home_view_model.dart';

class HomeMobileProfile extends HookConsumerWidget {
  const HomeMobileProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(homeViewModelProvider().notifier).fetch();
        });
        return null;
      },
      const [],
    );
    final age = ref.read(HomeViewModelProvider());
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
          HomeMobileTitle(
            title: '年齢',
            description: age,
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
