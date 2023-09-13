import 'package:flutter/material.dart';
import '../models/cv_model.dart';

class CVEditScreen extends StatefulWidget {
  final CVModel cvModel;

  const CVEditScreen({Key? key, required this.cvModel}) : super(key: key);

  @override
  State<CVEditScreen> createState() => _CVEditScreenState();
}

class _CVEditScreenState extends State<CVEditScreen> {
  final formKey = GlobalKey<FormState>();
  final Map<String, String> updatedData = {};

  final fullNameController = TextEditingController();
  final slackUsernameController = TextEditingController();
  final githubHandleController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void initState() {
    super.initState();

    fullNameController.text = widget.cvModel.fullName;
    slackUsernameController.text = widget.cvModel.slackUsername;
    githubHandleController.text = widget.cvModel.githubHandle;
    bioController.text = widget.cvModel.bio;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: fullNameController,
                decoration: const InputDecoration(labelText: 'Full Name'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
                onChanged: (value) => updatedData['fullName'] = value,
              ),
              TextFormField(
                controller: slackUsernameController,
                decoration: const InputDecoration(labelText: 'Slack Username'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your slack username';
                  }
                  return null;
                },
                onChanged: (value) => updatedData['slackUsername'] = value,
              ),
              TextFormField(
                controller: githubHandleController,
                decoration: const InputDecoration(labelText: 'GitHub Handle'),
                onChanged: (value) => updatedData['githubHandle'] = value,
              ),
              TextFormField(
                controller: bioController,
                decoration: const InputDecoration(labelText: 'Bio'),
                maxLines: 4,
                onChanged: (value) => updatedData['bio'] = value,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pop(context, updatedData);
                  }
                },
                child: const Text('Save Changes'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
