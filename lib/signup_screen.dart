import 'package:flutter/material.dart';
import 'package:task5_6_card_textfield_navigate/returant_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Form(
              key: _formKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    MyTextField(
                        hint: 'Eslam Fares',
                        label: 'User name',
                        icon: Icons.account_circle,
                        validatorFuncation: 'enter user name'),
                    MyTextField(
                        hint: 'EslamFares@gmail.com',
                        label: 'Email',
                        icon: Icons.email,
                        validatorFuncation: 'enter email'),
                    MyTextField(
                      hint: '******',
                      label: 'password',
                      icon: Icons.lock_rounded,
                      validatorFuncation: 'enter password',
                      showLastIcon: true,
                      ispassword: true,
                    ),
                    SizedBox(height: 50),
                    createAccountButton()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget createAccountButton() {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: () {
        if (_formKey.currentState.validate()) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        } else {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Error in data...')));
        }
      },
      child: Text(
        'Create Account >> ',
        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
      ),
      color: Colors.amber,
    );
  }
}

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  final String hint;
  final String label;
  final IconData icon;
  final String validatorFuncation;
  bool showLastIcon;
  bool ispassword;

  MyTextField({
    @required this.hint,
    @required this.label,
    @required this.icon,
    @required this.validatorFuncation,
    this.showLastIcon = false,
    this.ispassword = false,
  });

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextFormField(
        obscureText: widget.ispassword,
        validator: (String value) {
          if (value.isEmpty) {
            return widget.validatorFuncation;
          }
          return null;
        },
        decoration: InputDecoration(
          suffix: widget.showLastIcon
              ? IconButton(
                  icon: widget.showLastIcon
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                  onPressed: () {
                    setState(() {
                      widget.ispassword = !widget.ispassword;
                    });
                  })
              : null,
          contentPadding: EdgeInsets.zero,
          labelText: widget.label,
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(widget.icon, color: Colors.grey),
          hintText: widget.hint,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2),
            borderRadius: BorderRadius.circular(50.0),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(50.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(50.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
