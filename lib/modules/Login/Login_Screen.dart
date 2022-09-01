import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  @override
  Widget build(BuildContext context) {
    // متغيرات عشان نتحكم في الكلام ال هيتكتب وحطتها في متغيرات عشان اعرف استخدمها في اي مكان
    var EmailControler=TextEditingController();
    var PassControler=TextEditingController();
    var FormKey=GlobalKey<FormState>();
    bool isPassword=true;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        // to avoid keyboard screen erorr
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: FormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CoustmTextFormfield(
                    controller: EmailControler,
                    label: "Email Address",
                    type: TextInputType.emailAddress,
                    prefix: Icons.email,
                      validate: (value) {
                      if(value!.isEmpty){
                        return 'Email Address is required';
                      }
                      return null;
                  }
                  ),
                  const SizedBox(height: 10,),
                  CoustmTextFormfield(

                      isPassword: isPassword,
                      controller: PassControler,
                      label: "Password",
                      type: TextInputType.visiblePassword,
                      prefix: Icons.lock,
                      validate: (value) {
                    if(value!.isEmpty){
                      return 'Password is required';
                    }
                    return null;
                  }

                  ),
                  const SizedBox(height: 20,),

                  coustmdefaultbutton(
                    raduis: 10,
                    function: (){
                      if(FormKey.currentState!.validate())
                     {
                      print(EmailControler.text);
                      print(PassControler.text);
                     }

                    },
                    text: "Login",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  coustmdefaultbutton(
                    raduis: 10,
                    function: (){
                      print(EmailControler.text);
                      print(PassControler.text);
                    },
                    text: "Regstier",
                  ),

                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text(
                            "Don't have an account?",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      TextButton(
                        onPressed: () {
                          print("Button is clicked");
                        },
                        child: const Text(
                          "Regstien Now",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),






                    ],
                  ),

              ],
      ),
            ),
          ),
        ),

      ),

    );

  }
}
