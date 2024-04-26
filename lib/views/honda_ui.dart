import 'package:flutter/material.dart';

class HondaUI extends StatefulWidget {
  const HondaUI({super.key});

  @override
  State<HondaUI> createState() => _HondaUIState();
}

class _HondaUIState extends State<HondaUI> {
  List<Map<String, dynamic>> _carShop = [
    {
      'image': 'assets/images/city_turbo.png',
      'description': 'CITY VTEC TURBO',
      'price': '629,000 บาท',
    },
    {
      'image': 'assets/images/city_hatchback.png',
      'description': 'CITY HATCHBACK',
      'price': '559,000 บาท',
    },
    {
      'image': 'assets/images/city_hev.png',
      'description': 'CITY e:HEV',
      'price': '769,000 บาท',
    },
    {
      'image': 'assets/images/honda_accord.png',
      'description': 'ACCORD',
      'price': '1,499,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop2 = [
    {
      'image': 'assets/images/hd_rjazz.png',
      'description': 'JAZZ (RED)',
      'price': '560,000 บาท',
    },
    {
      'image': 'assets/images/hd_bjazz.png',
      'description': 'JAZZ (BLUE)',
      'price': '597,000 บาท',
    },
    {
      'image': 'assets/images/hd_yjazz.png',
      'description': 'JAZZ (YELLOW)',
      'price': '630,000 บาท',
    },
    {
      'image': 'assets/images/hd_rjazz.png',
      'description': 'JAZZ (WHITE)',
      'price': '650,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop3 = [
    {
      'image': 'assets/images/wr-v.png',
      'description': 'WR-V',
      'price': '799,000 บาท',
    },
    {
      'image': 'assets/images/br-v.png',
      'description': 'BR-V',
      'price': '915,000 บาท',
    },
    {
      'image': 'assets/images/hr-v.png',
      'description': 'HR-V',
      'price': '979,000 บาท',
    },
    {
      'image': 'assets/images/cr-v.png',
      'description': 'CR-V',
      'price': '1,419,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop4 = [
    {
      'image': 'assets/images/civic.png',
      'description': 'CIVIC',
      'price': '964,000 บาท',
    },
    {
      'image': 'assets/images/civic-ehv.png',
      'description': 'CIVIC e:HEV',
      'price': '1,129,000 บาท',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('HONDA'),
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
                    'รถเก๋ง',
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
                    'รถ JAZZ',
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
                    'รถยนต์อเนกประสงค์',
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
                    'รถ CIVIC',
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
