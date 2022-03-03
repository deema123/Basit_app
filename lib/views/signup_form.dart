import 'package:flutter/material.dart';
class SingUpCustForm extends StatefulWidget {
  final routeName = "/SingUpCustForm";
  @override
  _SingUpCustFormState createState() => _SingUpCustFormState();
}

class _SingUpCustFormState extends State<SingUpCustForm> {
  late String _name;
  late String _email;
  late String _mobile;
  late String _country;
  late String _location;
  late String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      style: TextStyle(color: Color(0xFF649AB8)),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      style: TextStyle(color: Color(0xFF649AB8)),

      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Email is Required';
        }

        if (!RegExp(
            r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return 'Please enter a valid email Address';
        }

        return null;
      },
      onSaved: (String? value) {
        _email = value!;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password' ),
      style: TextStyle(color: Color(0xFF649AB8)),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _password = value!;
      },
    );
  }

  Widget _buildMobile() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mobile'),
      style: TextStyle(color: Color(0xFF649AB8)),
      keyboardType: TextInputType.phone,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'mobile is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _mobile = value!;
      },
    );
  }

  Widget _buildCountry() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Country'),
      style: TextStyle(color: Color(0xFF649AB8)),
      keyboardType: TextInputType.text,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'country is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _country = value!;
      },
    );
  }

  Widget _buildLocation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Location'),
      style: TextStyle(color: Color(0xFF649AB8)),
      keyboardType: TextInputType.number,
      onSaved: (String? value) {
        _location = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildName(),
            _buildEmail(),

            _buildMobile(),
            _buildCountry(),
            _buildLocation(),
            _buildPassword(),
            SizedBox(height: 100),
            //customButton( context,String text,Function press,double width)
            ElevatedButton(
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              onPressed: () {
                if (!_formKey.currentState!.validate()) {
                  return;
                }

                _formKey.currentState!.save();

                print(_name);
                print(_email);
                print(_country);
                print(_mobile);
                print(_password);
                print(_location);

                //Send to API
              },
            )
          ],
        ),
      ),
    );
  }
}