import 'package:flutter/material.dart';

class MazdaUI extends StatefulWidget {
  const MazdaUI({super.key});

  @override
  State<MazdaUI> createState() => _MazdaUIState();
}

class _MazdaUIState extends State<MazdaUI> {
  List<Map<String, dynamic>> _carShop = [
    {
      'image': 'assets/images/mazda_red.jpg',
      'description': 'MAZDA 3 (RED)',
      'price': '619,000 บาท',
    },
    {
      'image': 'assets/images/mazda_white.jpg',
      'description': 'MAZDA 3 (WHITE)',
      'price': '625,000 บาท',
    },
    {
      'image': 'assets/images/mazda_black.jpg',
      'description': 'MAZDA 3 (BLACK)',
      'price': '639,000 บาท',
    },
    {
      'image': 'assets/images/mazda_grey.jpg',
      'description': 'MAZDA 3 (GREY)',
      'price': '622,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop2 = [
    {
      'image': 'assets/images/cx5_grey.jpg',
      'description': 'CX5 (GREY)',
      'price': '949,000 บาท',
    },
    {
      'image': 'assets/images/cx5_black.jpg',
      'description': 'CX5 (BLACK)',
      'price': '948,000 บาท',
    },
    {
      'image': 'assets/images/cx5_red.jpg',
      'description': 'CX5 (RED)',
      'price': '944,000 บาท',
    },
    {
      'image': 'assets/images/cx5_white.jpg',
      'description': 'CX5 (WHITE)',
      'price': '969,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop3 = [
    {
      'image': 'assets/images/cx30_grey.jpg',
      'description': 'CX30 (GREY)',
      'price': '1,066,000 บาท',
    },
    {
      'image': 'assets/images/cx30_black.jpg',
      'description': 'CX30 (BLACK)',
      'price': '1,098,000 บาท',
    },
    {
      'image': 'assets/images/cx30_red.jpg',
      'description': 'CX30 (RED)',
      'price': '1,044,000 บาท',
    },
    {
      'image': 'assets/images/cx30_white.jpg',
      'description': 'CX30 (WHITE)',
      'price': '1,069,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop4 = [
    {
      'image': 'assets/images/Hiace.png',
      'description': 'Hiace',
      'price': '1,069,000 บาท',
    },
    {
      'image': 'assets/images/commuter.png',
      'description': 'Commuter',
      'price': '1,339,000 บาท',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('MAZDA'),
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
                    'รถ MAZDA 3',
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
                    'รถ MAZDA CX5',
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
                    'รถ MAZDA CX30',
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
                    'รถ VAN',
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
