import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import 'app_colors.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key?key, required this.buttontext, required this.buttonIcon}): super(key: key);
final String buttontext;
final  buttonIcon;

  @override
  Widget build(BuildContext context) {
    return   ElevatedButton.icon(

      label: Text(buttontext,style: TextStyle(color: AppColor.white0),),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.green0,
        minimumSize: Size(200, 50),
        textStyle: const TextStyle(
          color: Colors.black,
            fontSize: 15,
            fontFamily:"GilroyBold",
        ),
      ),
      onPressed: () {}, icon: buttonIcon ,
    );
  }
}
class WhiteButton extends StatelessWidget {
  const WhiteButton({Key?key, required this.buttontext, }): super(key: key);
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(

      child: Text(buttontext,style: TextStyle(color: Colors.black),),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 50),
        backgroundColor: AppColor.white0,
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily:"GilroyBold",
        ),
      ),
      onPressed: () {} ,
    );
  }
}

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, required this.buttontext, this.buttonIcon});
  final String buttontext;
  final  buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton.icon(
       onPressed: () {  }, icon: buttonIcon ,

          label:  Text(
          buttontext,
          style: TextStyle(
            color:Colors.black,
          ),
        ),

          style: OutlinedButton.styleFrom(minimumSize: Size(200, 50),
        )


      ),
    );
  }
}

class CircularButton extends StatelessWidget {
  const CircularButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(

      label: const Text(""),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.green0,
      ),
      onPressed: () {}, icon: SvgPicture.asset(
      'assets/icons/arrow_forward.svg',
      color: AppColor.white0,
      height: 20,
      width: 20,
    ) ,
    );
  }
}


