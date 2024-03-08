// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:student_hub/widgets/components/ui_extension.dart';

class StudentProfileInputStep3Page extends StatefulWidget {
  static const String pageId = "/ProfileInput";

  const StudentProfileInputStep3Page({super.key});

  @override
  State<StudentProfileInputStep3Page> createState() =>
      StudentProfileInputStep3State();
}

class StudentProfileInputStep3State
    extends State<StudentProfileInputStep3Page> {
  TextEditingController companyTextController = TextEditingController();
  TextEditingController websiteTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopNavigationBar(),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const HeaderText(title: 'CV & Transcript'),
              const SizedBox(
                height: 20,
              ),
              const PrimaryText(title: 'Resume/CV (*)'),
              FilePickerWidget(onSelectedFileWithFilePath:(filePath) => didResumeSelectedFileWithFilePath(filePath),),
              const SizedBox(
                height: 30,
              ),
              const PrimaryText(title: 'Transcript (*)'),
              FilePickerWidget(onSelectedFileWithFilePath: (filePath) => didTranscriptSelectedFileWithFilePath(filePath),),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkCustomButton(
                      title: 'Continue', onTap: continueButtonDidTap),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void continueButtonDidTap() {}

  void didResumeSelectedFileWithFilePath(String filePath) {
    print(filePath);
  }

  void didTranscriptSelectedFileWithFilePath(String filePath) {
    print(filePath);
  }
}


