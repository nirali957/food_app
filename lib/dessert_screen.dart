import 'package:flutter/material.dart';

class DessertScreen extends StatefulWidget {
  const DessertScreen({Key? key}) : super(key: key);

  @override
  State<DessertScreen> createState() => _DessertScreenState();
}

class _DessertScreenState extends State<DessertScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double text = MediaQuery.textScaleFactorOf(context);
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5),
                  height: height * 0.10,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(
                          height / 44,
                        ),
                        child: Container(
                          height: height / 15,
                          width: height / 17,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: const Color(0xFFD7D9DB),
                              width: 1,
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xFF444251),
                            size: 20,
                          ),
                        ),
                      ),
                      Text(
                        "Dessert",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: text / 0.050,
                          color: const Color(0xFF444251),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: height / 3.6,
                          top: height / 49,
                        ),
                        child: Icon(
                          Icons.search,
                          size: text / 0.04,
                          color: const Color(0xFF444251),
                        ),
                      ),
                      Image.asset(
                        "assets/images/image_one.png",
                        fit: BoxFit.fill,
                        height: height / 21,
                        width: height / 21,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 1.2,
              width: height / 1,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) => Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(height / 39),
                      child: Container(
                        height: width / 2.15,
                        width: width / 1.09,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff1f1f5),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 15,
                              spreadRadius: 8,
                              offset: Offset(3, 6),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: width / 2.15,
                      width: width / 2.3,
                      margin: EdgeInsets.only(
                        top: height / 37,
                        left: height / 39,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    Container(
                      height: width / 10,
                      width: width / 10,
                      margin: EdgeInsets.only(
                        left: height / 4.7,
                        top: height / 26,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xffFFFFFF),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.favorite,
                        color: Color(0xffD7D9DB),
                      ),
                    ),
                    Container(
                      height: width / 14,
                      width: width / 4.5,
                      margin: EdgeInsets.only(
                        left: height / 3.1,
                        top: height / 4.3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF24F04),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffF24F04),
                            blurRadius: 2,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(height / 150),
                        child: const Text(
                          "05.99€",
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      height: height / 5,
                      width: height / 4.01,
                      color: const Color(0xffFFFFFF),
                      margin: EdgeInsets.only(
                        left: height / 3.3,
                        top: height / 32,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            child: Text(
                              "Fresh Orange Juice",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                fontSize: text / 0.06,
                                color: const Color(0xff444251),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: height / 30),
                            child: const Text(
                              "Fresh orange juice",
                              style: TextStyle(
                                color: Color(0xff959BA4),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 13,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "⭐️ 4.9",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff444251),
                                  ),
                                ),
                                Image(
                                  image: AssetImage("assets/images/watch_one"),
                                  height: 30,
                                ),
                                Text(
                                  "20-25 Min",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff444251),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
