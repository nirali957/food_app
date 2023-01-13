import 'package:flutter/material.dart';

class PanierScreen extends StatefulWidget {
  const PanierScreen({Key? key}) : super(key: key);

  @override
  State<PanierScreen> createState() => _PanierScreenState();
}

class _PanierScreenState extends State<PanierScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double text = MediaQuery.textScaleFactorOf(context);
    double height = size.height;
    double width = size.width;
    return Scaffold(
      bottomSheet: Container(
        height: height / 3.5,
        width: height / 1,
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffdbdcdc),
              blurRadius: 10,
              blurStyle: BlurStyle.solid,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "10 Produits \nsélectionnés",
                  overflow: TextOverflow.clip,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff2D2942),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Montant total \n:90.00€",
                  overflow: TextOverflow.fade,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xff2D2942),
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Container(
              height: height / 13,
              width: height / 2,
              decoration: BoxDecoration(
                color: const Color(0xffF24F04),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffF24F04),
                    blurRadius: 5,
                    offset: Offset(0, 5),
                    blurStyle: BlurStyle.inner,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.all(13),
                child: Text(
                  "Procéder au paiement",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
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
                        "Panier",
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
                itemCount: 4,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) => Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(height / 48),
                      child: Container(
                        height: width / 3.2,
                        width: width / 1.09,
                        decoration: const BoxDecoration(
                          color: Color(0xffFFFFFF),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xfff1f1f5),
                              blurStyle: BlurStyle.normal,
                              blurRadius: 10,
                              spreadRadius: 13,
                              offset: Offset(2, 10),
                            ),
                          ],
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: width / 3.2,
                      width: width / 3.3,
                      margin: EdgeInsets.only(
                        top: height / 46,
                        left: height / 47,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    Container(
                      height: width / 14,
                      width: width / 4.9,
                      margin: EdgeInsets.only(
                        left: height / 2.3,
                        top: height / 6.7,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffF24F04),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xffF24F04),
                            blurRadius: 3,
                            spreadRadius: 2,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                      child: const Image(
                        image: AssetImage("assets/images/minus_plus.png"),
                      ),
                    ),
                    Container(
                      height: height / 5.5,
                      width: height / 5.2,
                      color: const Color(0xffFFFFFF),
                      margin: EdgeInsets.only(
                        left: height / 4.4,
                        top: height / 39,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 2,
                            ),
                            child: Text(
                              "Fresh Orange Juice",
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff444251),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 6),
                            child: Text(
                              "Fresh orange juice",
                              style: TextStyle(
                                color: Color(0xff959BA4),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 70),
                            child: Text(
                              "05.99€",
                              style: TextStyle(
                                color: Color(0xff444251),
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
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
