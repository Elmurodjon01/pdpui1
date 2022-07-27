import 'package:flutter/material.dart';
import 'package:pdpui1/constants.dart';

class ReusableTextField extends StatelessWidget {
  String myhint;
  ReusableTextField({required this.myhint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[
                200]!, //this is a line that separate email and password textfield
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: myhint,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class ReusableFaceAndGit extends StatelessWidget {
  String whatSocielMedia;
  Color whichColor;
  ReusableFaceAndGit({
    required this.whatSocielMedia,
    required this.whichColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: whichColor,
        ),
        child: Center(
          child: Text(
            whatSocielMedia,
            style: faceandgit,
          ),
        ),
      ),
    );
  }
}
