# hng_mobile_task_2

A new Flutter project.

## Getting Started

CV Application
This is a simple CV/resume application built with Flutter.

Setup
To run this project:

Install the latest version of Flutter
Clone this repository
Run flutter pub get to install dependencies
Connect an Android or iOS device or emulator
Run flutter run to build and launch the app
Overview
The CV app allows users to easily view and edit a CV/resume. It has two main screens:

CV View - Displays full name, username, bio, and other CV details.
Edit CV - Allows editing CV details like the bio, experience, education, etc.
The app uses Flutter state management with setState() to pass updated CV data between screens.

Features
View CV details on a clean, scrollable screen
Tap edit button to go to CV editing screen
Edit details like bio, name, username, skills, etc.
Updated details are saved and reflected back in CV view
Form validation on input fields
Mock CV data can be edited and saved
Code Overview
The key classes/files:

main.dart - Runs app and manages state
cv_view.dart - Displays CV data
cv_edit.dart - Screen to edit CV data
cv_model.dart - Model to store CV data
Flux pattern is used for state management. The CVModel holds the state. CVView reads state and passes updates back to main. CVEdit updates state that is passed back to CVView.


