import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int intex = 0;
  int maxLines = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff260305),
      appBar: AppBar(
        backgroundColor: const Color(0xff260305),
        actions: [
          const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        leading: Image.asset("assets/images/Vector.png"),
        title: Center(
          child: Image.asset(
            "assets/images/app-icon 1.png",
            cacheWidth: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset("assets/images/image 6.png"),
                const Positioned(
                    right: 30,
                    top: 60,
                    child: SizedBox(
                      width: 200,
                      height: 100,
                      child: Column(
                        children: [
                          Text(
                            "CRAFTY DESIGNS\nTO ENGRAVE\nPASSION",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 182, 180, 180)),
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 240,
                    right: 20,
                    left: 20,
                    child: Container(
                      width: 200,
                      height: 109,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xffFFA364),
                                Color(0xffF4E9A2),
                              ])),
                      child: const Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1 Gram",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff162127)),
                              ),
                              Text(
                                "₹4,775",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff162127)),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "8 Gram",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff162127)),
                              ),
                              Text(
                                "₹46,000",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff162127)),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "8 Gram",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff162127)),
                              ),
                              Text(
                                "₹100.0",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xff162127)),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Positioned(
                    left: 150,
                    right: 150,
                    top: 230,
                    child: Container(
                      width: 138,
                      height: 26,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff162127)),
                      child: const Center(
                        child: Text(
                          "Todays Gold Rate",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF)),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 130,
            ),
            Container(
              width: 369,
              height: 196,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.yellow, Color(0xffFFFFFF)])),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Monthly Scheme",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff270204)),
                        ),
                        Text(
                          "06/12",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff320F11)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: [
                          Container(
                            width: 150,
                            height: 18,
                            decoration: const BoxDecoration(
                                color: Color(0xff270204),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                          ),
                          Container(
                            width: 150,
                            height: 18,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 82, 80, 80)),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total paid",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff162127)),
                            ),
                            Text(
                              "₹6,755",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff162127)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 150,
                        ),
                        Image.asset(
                          "assets/images/image 13.png",
                          cacheWidth: 60,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                thickness: 10,
                color: Color.fromARGB(255, 90, 73, 73),
              ),
            ),
            SizedBox(
              width: 400,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "KALLARAKKALSJWELLERS",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                    Text(
                      "Fusce bibendum nisl non justo.Fusce bibendum nisl non justo venenatis pharetra. Donec tempus quam id tincidunt eod",
                      maxLines: maxLines,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Color(0xffA0A0A0)),
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            maxLines == 2 ? maxLines = 3 : maxLines = 2;
                          });
                        },
                        child: Text(
                          maxLines == 2 ? "show more" : "show less",
                          style: const TextStyle(color: Color(0xffE7BF44)),
                        ))
                  ],
                ),
              ),
            ),
            Image.asset("assets/images/image 12.png"),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                width: 358,
                height: 48,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 189, 174, 132)),
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromARGB(49, 170, 99, 99)),
                child: const Center(
                  child: Text(
                    'Download Brochure',
                    style: TextStyle(
                        color: Color(0xffE8C044),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: intex,
        selectedItemColor: const Color(0xffE8C044),
        unselectedItemColor: const Color(0xffA9A9A9),
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel_outlined), label: "My packages"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_sharp), label: "Wallet"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Profile"),
        ],
        backgroundColor: const Color(0xff260305),
        onTap: (value) {
          setState(() {
            intex = value;
          });
        },
      ),
    );
  }
}
