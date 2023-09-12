import 'package:flutter/material.dart';

import 'cv_edit.dart';
import '../models/cv_model.dart';

class CVViewScreen extends StatelessWidget {
  final CVModel cvModel;

  const CVViewScreen({Key? key, required this.cvModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MY CV', style: TextStyle(fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Full Name', style: Theme.of(context).textTheme.titleLarge),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Container(
                height: 40,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Text(
                  cvModel.fullName,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Slack Username',
                style: Theme.of(context).textTheme.titleLarge),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Container(
                height: 40,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Text(
                  '@${cvModel.slackUsername}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('GitHub Handle',
                style: Theme.of(context).textTheme.titleLarge),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Container(
                height: 40,
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                child: Text(
                  cvModel.githubHandle,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text('Bio', style: Theme.of(context).textTheme.titleLarge),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: Container(
                  height: 75,
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    cvModel.bio,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () async {
                final updatedData = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CVEditScreen(),
                  ),
                );

                if (updatedData != null) {
                  cvModel.updateCV(updatedData);
                }
              },
              child: const Text(
                'Edit CV',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
