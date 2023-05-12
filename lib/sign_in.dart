import 'dart:ui';

import 'package:bit_cuckoo/extentions.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
  CountryCode? _selectedCountry;
  bool _showPassword = false;
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: "#5927FF".toColor(),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white),
                              height: 118,
                              width: 166,
                            )),
                        ImageFiltered(
                          imageFilter: ImageFilter.blur(),
                          child: Image.asset(
                            "images/logo.png",
                            width: double.infinity,
                            height: double.infinity,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Bit Cuckoo",
                            style: TextStyle(
                              color: "#5927FF".toColor(),
                              fontSize: 30,
                              fontFamily: "Nunito Sans",
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Hi, SIGNIN!",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Nunito Sans",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 23),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: 'Phone Number',
                                prefixIcon: CountryCodePicker(
                                  initialSelection: 'PS',
                                  favorite: ['+970', 'PS'],
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  showDropDownButton: true,
                                  alignLeft: false,
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                  ),
                                  searchDecoration: InputDecoration(
                                    labelText: 'Search',
                                    hintText: 'Search',
                                    prefixIcon: Icon(
                                      Icons.search,
                                    ),
                                  ),
                                  flagWidth: 28.0,
                                  padding: EdgeInsets.zero,
                                ),
                                enabledBorder:
                                    OutlineInputBorder(borderSide: BorderSide()),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: "#AF8344".toColor()))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: TextField(
                            controller: _passwordController,
                            obscureText: !_showPassword,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: "#AF8344".toColor(),
                                ),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 12.0),
                                  child: Icon(
                                    _showPassword
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 85),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "New Member?",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Nunito Sans",
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: TextButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                          "#AF8344".toColor(),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'SIGN UP',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontFamily: "Nunito Sans",
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 55,
                                width: 164,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: "#8160EF".toColor(),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 90),
                          child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(Colors.black),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Get Start Now',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Nunito Sans",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
