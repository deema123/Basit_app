import 'package:flutter/material.dart';
import 'CustomButton.dart';
class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  String? _name;
  String? _email;
  String? _message;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            _buildName(),
            SizedBox(
              height: 10,
            ),
            _buildEmail(),
            SizedBox(
              height: 10,
            ),
            _buildMessage(),
            SizedBox(
              height: 10,
            ),
            customButton(context,'hjk',(){
             if (_formKey.currentState!.validate()) {
               _formKey.currentState?.save();
             }



             print(_name);
             print(_email);
             print(_message);
           },10)
          ],
        ),
      ),
    );
  }


  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
            width: 2.0,
          ),
        ),
      ),
      validator: (String? value) {
        if (value == "") {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
            width: 2.0,
          ),
        ),
      ),

      validator: (String? value) {
        if (value == "") {
          return 'Email is Required';
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value ?? "")) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String? value) {
        _email = value;
      },
    );
  }

  Widget _buildMessage() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Message',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Color(0xFF649AB8),
            width: 2.0,
          ),
        ),
      ),
      keyboardType: TextInputType.text,
      validator: (String? value) {
        if (value == "") {
          return 'Message is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _message = value;
      },
    );
  }
}
