import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/link.dart';

class HomeMobileSNS extends StatelessWidget {
  const HomeMobileSNS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Text(
            'SNS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Wrap(
          children: [
            Link(
              uri: Uri.tryParse('https://github.com/iseruuuuu'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: const Icon(
                    AntDesign.github,
                    size: 35,
                  ),
                );
              },
            ),
            Link(
              uri: Uri.tryParse('https://twitter.com/isekiryu'),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: const Icon(
                    AntDesign.twitter,
                    color: Colors.lightBlue,
                    size: 35,
                  ),
                );
              },
            ),
            Link(
              uri: Uri.tryParse(
                'https://apps.apple.com/jp/developer/ryutaro-iseki/id1544199624',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: const Icon(
                    FontAwesome.apple,
                    color: Colors.grey,
                    size: 35,
                  ),
                );
              },
            ),
            Link(
              uri: Uri.tryParse(
                'https://play.google.com/store/apps/developer?id=ryutaro+iseki',
              ),
              target: LinkTarget.blank,
              builder: (context, openLink) {
                return IconButton(
                  onPressed: openLink,
                  icon: const Icon(
                    Ionicons.ios_logo_google_playstore,
                    color: Colors.green,
                    size: 35,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
