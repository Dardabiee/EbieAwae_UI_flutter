import 'package:flutter/material.dart';
import 'package:shop_app/compenents/costum_suffix_icon.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03,),
              Text('Complete Profile',
              style: headingStyle,
              ),
              const Text('Complete your data profile',
              textAlign: TextAlign.center,),
              SizedBox(height: SizeConfig.screenHeight * 0.06,),
              CompeleteProfileForm()

            ],
          ),
        ),
      )

    );
  }
}

class CompeleteProfileForm extends StatefulWidget {
  const CompeleteProfileForm({super.key});

  @override
  State<CompeleteProfileForm> createState() => _CompeleteProfileFormState();
}

class _CompeleteProfileFormState extends State<CompeleteProfileForm> {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;
  final _formKey = GlobalKey<FormState>(); //untuk menvalidasi data yang ada di form
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      children: [
        TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged:(value) {
        
      },
      validator: (value) {
        
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "First Name",
          hintText: "Enter Your First name",
          suffixIcon: CostumSuffixIcon(icon:'assets/icons/User.svg' ,),
          floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    )
      ],
    ));
  }
}