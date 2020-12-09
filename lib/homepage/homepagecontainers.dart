import 'package:flutter/material.dart';

enum Gender {
  male,
  female,
}

class Mycontainer extends StatelessWidget {
  final double height;
  final Color color;
  final Widget child;
  final Function onpressed;
  Mycontainer({this.color, this.child, this.onpressed, this.height});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        margin: EdgeInsets.all(10),
        child: child,
      ),
    );
  }
}

class MycontainerIconData extends StatelessWidget {
  final IconData icon;
  final String text;
  MycontainerIconData({this.icon, this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: MediaQuery.of(context).size.height * .08),
        SizedBox(
          height: 20,
        ),
        Text(text, overflow: TextOverflow.fade),
      ],
    );
  }
}

class IncDecButton extends StatelessWidget {
  final IconData icon;
  final Function onpressed;
  IncDecButton({@required this.icon, this.onpressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(height: 55, width: 55),
      onPressed: onpressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      fillColor: Color(0xFF4B4E5E),
      shape: CircleBorder(),
    );
  }
}

class BottomButton extends StatelessWidget {
  final Function onpressed;
  final String buttontext;
  BottomButton({this.onpressed, this.buttontext});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: onpressed,
        child: Text(
          buttontext,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          overflow: TextOverflow.fade,
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(15))),
      height: MediaQuery.of(context).size.height * .1,
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final String prefixText;
  final IconData suffixicon;
  final Function suffixOnPressed;
  final bool obsecuretext;
  TextFieldContainer(
      {this.prefixText,
      this.suffixicon,
      this.obsecuretext,
      this.suffixOnPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white24, borderRadius: BorderRadius.circular(8)),
      child: TextFormField(
        obscureText: obsecuretext,
        cursorColor: Colors.red[100],
        decoration: InputDecoration(
            suffixIcon: IconButton(
                icon: Icon(
                  suffixicon,
                  size: 20,
                  color: Colors.grey.shade500,
                ),
                onPressed: suffixOnPressed),
            icon: Text(
              prefixText,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: 15, color: Colors.white54),
            ),
            border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
