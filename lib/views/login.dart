import 'package:evaluationui/views/registration.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _textEditingController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff260305),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          _textEditingController.clear();
        },
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text("Enter your mobile number below.",
                    style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF))),
              ),
              const Text(
                "You'll receivean SMS with a one time PIN",
                style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Enter your Phonenumber",
                  style: TextStyle(fontSize: 15, color: Color(0xffFFFFFF)),
                ),
              ),
              Container(
                width: 358,
                height: 58,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 62, 32, 34)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Image.asset(
                          "assets/images/image 3.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(
                          color: Color.fromARGB(255, 134, 134, 134),
                          fontSize: 30),
                    ),
                    Expanded(
                        child: TextField(
                      // maxLength: 10,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      controller: _textEditingController,
                    ))
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: 358,
                height: 52,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffEB7A23), Color(0xffFFC30E)])),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Registration(),
                      ));
                    },
                    child: const Text(
                      "NEXT",
                      style: TextStyle(color: Color(0xff000000), fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
