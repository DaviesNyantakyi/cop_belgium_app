import 'package:cop_belgium_app/main.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'More',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(kImageUrl),
                ),
                title: const Text('Davies Nyantakyi'),
                subtitle: const Text('Piwc Turnhout'),
                isThreeLine: true,
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {},
                    title: const Text('Testimonies'),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Request Baptism'),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('About Church'),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Settings'),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
