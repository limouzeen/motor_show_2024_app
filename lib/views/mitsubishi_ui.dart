import 'package:flutter/material.dart';

class MitsubushiUI extends StatefulWidget {
  const MitsubushiUI({super.key});

  @override
  State<MitsubushiUI> createState() => _MitsubushiUIState();
}

class _MitsubushiUIState extends State<MitsubushiUI> {
  List<Map<String, dynamic>> _carShop = [
    {
      'image': 'assets/images/attrage_bl.png',
      'description': 'ATTRAGE (BLACK)',
      'price': '789,000 บาท',
    },
    {
      'image': 'assets/images/attrage_grey.png',
      'description': 'ATTRAGE (GREY)',
      'price': '889,000 บาท',
    },
    {
      'image': 'assets/images/attrage_white.png',
      'description': 'ATTRAGE (WHITE)',
      'price': '897,000 บาท',
    },
    {
      'image': 'assets/images/attrage_wine.png',
      'description': 'CATTRAGE (WINE)',
      'price': '1,009,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop2 = [
    {
      'image': 'assets/images/pajero_white.png',
      'description': 'PAJERO (WHITE)',
      'price': '1,459,000 บาท',
    },
    {
      'image': 'assets/images/pajero_grey.png',
      'description': 'PAJERO (GREY)',
      'price': '1,299,000 บาท',
    },
    {
      'image': 'assets/images/pajero_bronze.png',
      'description': 'PAJERO (BRONZE)',
      'price': '1,266,000 บาท',
    },
    {
      'image': 'assets/images/pajero_black.png',
      'description': 'PAJERO (BLACK)',
      'price': '1,412,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop3 = [
    {
      'image': 'assets/images/mirage_yellow.png',
      'description': 'MIRAGE (YELLOW)',
      'price': '941,000 บาท',
    },
    {
      'image': 'assets/images/mirage_blue.png',
      'description': 'MIRAGE (BLUE)',
      'price': '787,000 บาท',
    },
    {
      'image': 'assets/images/mirage_wine.png',
      'description': 'MIRAGE (WINE)',
      'price': '975,000 บาท',
    },
    {
      'image': 'assets/images/mirage_black.png',
      'description': 'MIRAGE (BLACK)',
      'price': '846,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop4 = [
    {
      'image': 'assets/images/triton_athlete.png',
      'description': 'TRITON (ATHLETE)',
      'price': '864,000 บาท',
    },
    {
      'image': 'assets/images/triton_black.png',
      'description': 'TRITON (BLACK)',
      'price': '825,000 บาท',
    },
    {
      'image': 'assets/images/triton_white.png',
      'description': 'TRITON (WHITE)',
      'price': '810,000 บาท',
    },
    {
      'image': 'assets/images/triton_single.png',
      'description': 'TRITON (SINGLE)',
      'price': '899,000 บาท',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('MITSUBISHI'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'รถ ATTRAGE',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 191, 191, 191),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _carShop.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              _carShop[index]['image'],
                              height: 120,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  _carShop[index]['description'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _carShop[index]['price'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'รถ PAJERO',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 191, 191, 191),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _carShop2.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              _carShop2[index]['image'],
                              height: 120,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  _carShop2[index]['description'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _carShop2[index]['price'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'รถ MIRAGE',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 191, 191, 191),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _carShop3.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              _carShop3[index]['image'],
                              height: 120,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  _carShop3[index]['description'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _carShop3[index]['price'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'รถ TRITON',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 191, 191, 191),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _carShop4.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              _carShop4[index]['image'],
                              height: 120,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Center(
                            child: Column(
                              children: [
                                Text(
                                  _carShop4[index]['description'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  _carShop4[index]['price'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
