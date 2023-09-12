import 'package:flutter/foundation.dart';

class CVModel extends ChangeNotifier {

  String _fullName = 'Adebayo oluwatobiloba';
  String _slackUsername = 'Adebayo'; 
  String _githubHandle = 'https://github.com/Gentle-wave';
  String _bio = 'Mobile developer. very easy going and peace living nigeria citizen. graduate of computer science';

  String get fullName => _fullName;
  String get slackUsername => _slackUsername;
  String get githubHandle => _githubHandle;
  String get bio => _bio;

  void updateCV(Map<String, String> updatedData) {
    _fullName = updatedData['fullName'] ?? _fullName;
    _slackUsername = updatedData['slackUsername'] ?? _slackUsername;
    _githubHandle = updatedData['githubHandle'] ?? _githubHandle; 
    _bio = updatedData['bio'] ?? _bio;
    
    notifyListeners();
  }

}