import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:where_is_my_pet/const.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _getImageContent(),
          Expanded(
            child: Column(
              children: [
                _getTitlePage(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: _getFlatIcon(
                    buttonColor: Color(0xFF3b5998),
                    icon: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                    ),
                    label: 'Login Com Facebook',
                    fontColor: Colors.white,
                    onTap: (){}
                  ),
                ),
                _getFlatIcon(
                  buttonColor: Color(0xFFDE5246),
                  icon: Icon(
                    FontAwesomeIcons.google,
                    color: Colors.white,
                  ),
                  label: 'Login Com Google',
                  fontColor: Colors.white,
                  onTap: (){}
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _getFlatIcon(
      {Color buttonColor, Icon icon, String label, Color fontColor, Function onTap}) {
    return FlatButton.icon(
      height: 44,
      minWidth: 250,
      color: buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      onPressed: onTap,
      icon: icon,
      label: Text(
        label,
        style: GoogleFonts.sansita(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: fontColor,
        ),
      ),
    );
  }

  Widget _getTitlePage() {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      child: RichText(
        text: TextSpan(
          text: 'Cadê Meu Pet ?',
          style: GoogleFonts.sansita(
            fontSize: 38,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  Widget _getImageContent() {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/dog.png'),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter),
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
    );
  }
}
