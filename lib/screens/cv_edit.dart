import 'package:flutter/material.dart';

import '../models/cv_model.dart';

class CVEditScreen extends StatefulWidget {

  const CVEditScreen({Key? key}) : super(key: key);

  @override
  State<CVEditScreen> createState() => _CVEditScreenState();
}

class _CVEditScreenState extends State<CVEditScreen> {

  final Map<String, String> updatedData = {};

  final fullNameController = TextEditingController();
  final slackUsernameController = TextEditingController();
  final githubHandleController = TextEditingController();
  final bioController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
          
            TextField(
              controller: fullNameController,
              decoration: const InputDecoration(labelText: 'Full Name'),
              onChanged: (value) => updatedData['fullName'] = value,
            ),
            
            TextField(
              controller: slackUsernameController,
              decoration: const InputDecoration(labelText: 'Slack Username'),
              onChanged: (value) => updatedData['slackUsername'] = value,
            ),
            
            TextField(
              controller: githubHandleController,
              decoration: const InputDecoration(labelText: 'GitHub Handle'),
              onChanged: (value) => updatedData['githubHandle'] = value,
            ),

            TextField(
              controller: bioController,
              decoration: const InputDecoration(labelText: 'Bio'),
              maxLines: 4,
              onChanged: (value) => updatedData['bio'] = value,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, updatedData);  
              },
              child: const Text('Save Changes'),
            ),

          ],
        ),
      ),
    );
  }

}


