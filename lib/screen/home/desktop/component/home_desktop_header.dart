import 'package:flutter/material.dart';
import 'package:animations/animations.dart';

class HomeDesktopHeader extends StatelessWidget {
  const HomeDesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Row(
        children: [
          const Column(),
          const Spacer(),
          OpenContainer(
            openElevation: 0,
            closedElevation: 0,
            openColor: Colors.transparent,
            closedColor: Colors.transparent,
            closedBuilder: (context, action) {
              return IconButton(
                onPressed: action,
                icon: const Icon(Icons.menu),
              );
            },
            openBuilder: (_, action) => DrawerScreen(
              action: action,
              onTitleTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({
    super.key,
    required this.onTitleTap,
    required this.action,
  });

  final void Function({Never returnValue}) action;
  final void Function() onTitleTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF602678),
            Color(0xFF302363),
            Color(0xFF12174A),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: IconButton(
                  onPressed: action,
                  icon: const Icon(
                    Icons.close,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: Container(),
                  ),
                  onTap: () {
                    onTitleTap();
                    action();
                  },
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '@ FlutterKaigi 2023 実行委員会',
                    style: theme.textTheme.bodyLarge!.copyWith(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
