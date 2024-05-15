import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email = '';
  String _phone = '';
  String _address = '';
  String _password = '';
  String _confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assests/natural-beauty.jpg',
                height: 200.0,
              ),
              SizedBox(height: 10.0),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email is required';
                        }
                        if (!value.contains('@')) {
                          return 'Enter a valid email address';
                        }
                        return null;
                      },
                      onSaved: (value) => _email = value!,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Phone number is required';
                        }
                        if (value.length != 10 ||
                            !value.startsWith(RegExp('[789]'))) {
                          return 'Enter a valid 10 digit phone number starting with 7, 8, or 9';
                        }
                        return null;
                      },
                      onSaved: (value) => _phone = value!,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Address is required';
                        }
                        return null;
                      },
                      onSaved: (value) => _address = value!,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 6 ||
                            !value
                                .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                          return 'Password must be at least 6 characters long and contain a special character';
                        }
                        return null;
                      },
                      onSaved: (value) => _password = value!,
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Confirm Password is required';
                        }
                        if (value != _password) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      onSaved: (value) => _confirmPassword = value!,
                    ),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          // Perform sign up logic
                          print('Email: $_email');
                          print('Phone: $_phone');
                          print('Address: $_address');
                          print('Password: $_password');
                        }
                      },
                      child: Text('Sign Up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SignUpPage(),
  ));
}
