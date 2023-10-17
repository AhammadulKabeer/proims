import 'package:evaluationui/views/homepage.dart';
import 'package:flutter/material.dart';

class registration1 extends StatefulWidget {
  const registration1({super.key});

  @override
  State<registration1> createState() => _registration1State();
}

class _registration1State extends State<registration1> {
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
          child: SingleChildScrollView(
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Select your branch",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            width: 317,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xffA3A3A38))),
                            child: DropdownButton(
                                underline: const SizedBox(),
                                padding: const EdgeInsets.all(5),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 150),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xffC7C4C0),
                                    size: 25,
                                  ),
                                ),
                                value: drobdownvalue,
                                style: const TextStyle(
                                    color: Color(0xff454545), fontSize: 16),
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    drobdownvalue = value;
                                  });
                                }),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Select your district",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            width: 317,
                            height: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xffA3A3A38))),
                            child: DropdownButton(
                                underline: const SizedBox(),
                                padding: const EdgeInsets.all(5),
                                icon: const Padding(
                                  padding: EdgeInsets.only(left: 195),
                                  child: Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Color(0xffC7C4C0),
                                    size: 25,
                                  ),
                                ),
                                value: districtvalue,
                                style: const TextStyle(
                                    color: Color(0xff454545), fontSize: 16),
                                items: list1.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  setState(() {
                                    districtvalue = value;
                                  });
                                }),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Select your district",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            width: 317,
                            height: 65,
                            child: TextField(
                              controller: namecontroller,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xffA3A3A38)),
                                  ),
                                  label: Text("Select ara")),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "Referrel code",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                          SizedBox(
                            width: 317,
                            height: 65,
                            child: TextField(
                              controller: emailcontroller,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text("Type referral code")),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: [
                                const Text(
                                  "Don’t you have referral code?",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff13A057)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Image.asset(
                                  "assets/images/whatsapp.png",
                                  cacheWidth: 15,
                                )
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
                                    colors: [
                                      Color(0xffE8C044),
                                      Color(0xff9A6E2A)
                                    ])),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const Homepage(),
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
      ),
    );
  }
}

List<String> list = <String>[
  'Select Branch',
  'Koduvally',
  'Kozhikode',
  'Palakkad',
  'kunnamangalam',
];
dynamic drobdownvalue = list.first;
List<String> list1 = <String>['Kozhikode', 'Palakkad', 'wayanad'];
dynamic districtvalue = list1.first;
