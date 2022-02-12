import 'package:quiz_app/model/question_model.dart';

List<QuestionModel> questions = [
  QuestionModel("The first alpha version of Flutter was released in _____", {
    "May 2017": true,
    "May 2018": false,
    "May 2016": false,
    "May 2019": false,
  }),
  QuestionModel("Flutter is developed by _______.", {
    "Microsoft": false,
    "Facebook": false,
    "IBM": false,
    "Google": true,
  }),
  QuestionModel("Is Flutter a programming language ?", {
    "Yes": false,
    "No": true,
    "May be": false,
    "Can't say": false,
  }),
  QuestionModel("Is Flutter a SDK ?", {
    "Yes": true,
    "No": false,
    "May be": false,
    "Con't say": false,
  }),
  QuestionModel("SDK stands for _________.", {
    "Software Development Kit": true,
    "Software Development Knowledge": false,
    "Software Database Kit": false,
    "Software Data Kit": false,
  }),
  QuestionModel("What is Dart ?", {
    "Dart is a object-oriented programming language.": false,
    "Dart is used to create a frontend user interfaces.": false,
    "Both A and B": true,
    "None of the above": false,
  }),
  QuestionModel("What are the best editors for Flutter development ?", {
    "Android Studio": false,
    "IntelliJ IDEA": false,
    "Visual Studio": true,
    "All of the above": false,
  }),
  QuestionModel("The Dart language can be compiled __________.", {
    "AOT": false,
    "JIT": false,
    "Both AOT and JIT": true,
    "None of the above": false,
  }),
  QuestionModel("What are the advantages of Flutter ?", {
    "Cross-platform Development": false,
    "Faster Development": false,
    "UI Focused": false,
    "All of the above": true,
  }),
  QuestionModel(" _________ command is used to compile the release mode.", {
    "flutter --release": false,
    "flutter run --release": true,
    "flutter run ??release": false,
    "flutter run %%release": false,
  }),
];
