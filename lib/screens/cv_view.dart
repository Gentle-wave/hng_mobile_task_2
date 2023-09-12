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
        title: const Text('MY CV', style: TextStyle(fontSize: 24)), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Text('Full Name', style: Theme.of(context).textTheme.titleLarge),
            Text(cvModel.fullName, style: const TextStyle(fontSize: 20)),
            
            const SizedBox(height: 16),

            Text('Slack Username', style: Theme.of(context).textTheme.titleLarge),
            Text('@${cvModel.slackUsername}', style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 16),

            Text('GitHub Handle', style: Theme.of(context).textTheme.titleLarge),
            Text(cvModel.githubHandle, style: const TextStyle(fontSize: 18)),
            
            const SizedBox(height: 16),

            Text('Bio', style: Theme.of(context).textTheme.titleLarge),
            Text(cvModel.bio, style: const TextStyle(fontSize: 16)),

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
              child: const Text('Edit CV', style: TextStyle(fontSize: 18)),
            ),

          ],
        ),
      ),
    );
  }

}