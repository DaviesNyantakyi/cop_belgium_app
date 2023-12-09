import 'package:flutter/material.dart';

import '../main.dart';
import '../utilities/constant.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          children: [
            _Header(),
            _Text(),
            SizedBox(height: 18),
            _SocialIcons(),
          ],
        ),
      ),
    );
  }
}

class _SocialIcons extends StatelessWidget {
  const _SocialIcons();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: const Row(
            children: [
              Icon(
                Icons.favorite_outline,
                color: kBlack,
                size: 18,
              ),
              SizedBox(width: 4),
              Text(
                '1234',
              ),
            ],
          ),
        ),
        const SizedBox(width: 14),
        InkWell(
          onTap: () {},
          child: const Row(
            children: [
              Icon(
                Icons.chat_bubble_outline,
                color: kBlack,
                size: 18,
              ),
              SizedBox(width: 4),
              Text(
                '45',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text();

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Et amet aliquip laborum quis do commodo mollit deserunt. Tempor nulla dolor dolore nostrud non occaecat elit amet eiusmod enim mollit ullamco. Consequat nisi culpa eiusmod ex commodo proident commodo dolor deserunt nisi enim eu. Consequat duis anim sunt tempor labore. Commodo esse minim reprehenderit nisi Lorem labore ea ex. Id qui amet commodo incididunt dolor. Ullamco amet enim aliqua in ex minim et esse.',
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(kImageUrl),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Davies Nyantakyi',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '24 Dec 2019 - 14:15',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_horiz,
          ),
          iconSize: 32,
        )
      ],
    );
  }
}
