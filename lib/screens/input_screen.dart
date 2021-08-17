import 'package:flutter/material.dart';
import 'package:resume_task/model/inputs.dart';
import 'package:resume_task/widgets/text_fields.dart';
import 'package:resume_task/widgets/text_fields_left.dart';
import 'package:resume_task/widgets/text_fields_right.dart';
import 'mainPage.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  //TextEditingController is controller for editable text fields.
  //It's role is to update itself and notify listeners whenever it's associated
  //textfield changes.
  var _firstNameController = TextEditingController();
  var _middleLastNameController = TextEditingController();
  var _emailController = TextEditingController();
  var _imageURLController = TextEditingController();
  var _skillSetController = TextEditingController();
  var _aboutMeController = TextEditingController();
  var _skill1Controller = TextEditingController();
  var _skill2Controller = TextEditingController();
  var _phoneNoController = TextEditingController();
  var _twitterController = TextEditingController();
  var _instagramController = TextEditingController();
  var _githubController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: new AppBar(
        actions: [
          Image.asset(
            'assets/images/task_logo.png',
          ),
        ],
        title: new Text('Input Data'),
      ),
      body: new Container(
        child: new Center(
          child: ListView(
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: TextFormFieldsLeft(
                      control: _firstNameController,
                      title: 'First Name',
                    ),
                  ),
                  Expanded(
                    child: TextFormFieldsRight(
                      control: _middleLastNameController,
                      title: 'Middle/Last Name',
                    ),
                  ),
                ],
              ),
              TextFormFields(
                control: _skillSetController,
                title: 'Stack',
              ),
              TextFormFields(
                control: _imageURLController,
                title: "Image URL",
              ),
              TextFormFields(
                control: _aboutMeController,
                title: 'About Me',
              ),
              TextFormFields(
                control: _skill1Controller,
                title: 'Skill 1',
              ),
              TextFormFields(
                control: _skill2Controller,
                title: 'Skill 2',
              ),
              TextFormFields(
                control: _emailController,
                title: 'Email',
              ),
              TextFormFields(
                control: _phoneNoController,
                title: 'Mobile no',
              ),
              TextFormFields(
                control: _twitterController,
                title: 'Twitter',
              ),
              TextFormFields(
                control: _instagramController,
                title: 'Instagram',
              ),
              TextFormFields(
                control: _githubController,
                title: 'GitHub',
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    // A MaterialPageRoute is a  modal route that replaces the entire screen
                    // with a platform-adaptive transition.
                    var route = MaterialPageRoute(
                      builder: (BuildContext context) => ResumePage(
                        value: User(
                          email: _emailController.text,
                          imageUrl: _imageURLController.text,
                          aboutMe: _aboutMeController.text,
                          firstName: _firstNameController.text,
                          middleLastName: _middleLastNameController.text,
                          github: _githubController.text,
                          instagram: _instagramController.text,
                          phoneNo: _phoneNoController.text,
                          skill1: _skill1Controller.text,
                          skill2: _skill2Controller.text,
                          skillSet: _skillSetController.text,
                          twitter: _twitterController.text,
                        ),
                      ),
                    );
                    Navigator.of(context).push(route);
                  },
                  child: Text('Click to Pass Data'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
