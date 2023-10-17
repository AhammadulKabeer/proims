// import 'dart:ffi';

import 'package:evaluationui/views/registration1.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff260305),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
              const Center(
                child: Text(
                  "Create an account",
                  style: TextStyle(
                      fontSize: 29,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 363,
                  height: 650,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: namecontroller,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              label: Text("Name")),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                label: Text("Emial")),
                          ),
                        ),
                        TextField(
                          controller: datecontroller,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.calendar_today_outlined)),
                              border: const OutlineInputBorder(),
                              label: const Text("Date of birth")),
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
                                  colors: [
                                    Color(0xffE8C044),
                                    Color(0xff9A6E2A)
                                  ])),
                          child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const registration1(),
                                ));
                              },
                              child: const Text(
                                "NEXT",
                                style: TextStyle(
                                    color: Color(0xff000000), fontSize: 16),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
