import 'package:flutter/material.dart';
import 'package:hngx_mobile_task_one/handlerClass.dart';
import 'package:social_login_buttons/social_login_buttons.dart';


class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 211, 161),
        body: Center(
          child: Column( 
            children: [
              // TODO: 
              SizedBox(height: size.height*0.12,),

              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(170), // Image radius
                  child: Image.asset('assets/myImage.png', fit: BoxFit.cover,),
                ),
              ),
              
              // 2. Slack name
              SizedBox(height: size.height*0.05,), 
              const Text("AbTimi", 
                style: TextStyle(
                  fontSize: 35, 
                  fontWeight: FontWeight.w500, 
                  fontFamily: 'Roboto',
                  color: Color.fromARGB(255, 114, 143, 236)),

                  ),
    
              // 3. Goto github button
              SizedBox(height: size.height*0.05,),
              SocialLoginButton(
                text: 'Open Github',
                fontSize: 20,
                width: size.width*0.9,
                buttonType: SocialLoginButtonType.github,
                onPressed: () {
                  SocialMediaLinks().launchURLGitHub();
                },
              ),
              
          ],),
        ),
      ),
    );
  }
}