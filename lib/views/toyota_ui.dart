import 'package:flutter/material.dart';

class ToyotaUI extends StatefulWidget {
  const ToyotaUI({Key? key}) : super(key: key);

  @override
  State<ToyotaUI> createState() => _ToyotaUIState();
}

class _ToyotaUIState extends State<ToyotaUI> {
  List<Map<String, dynamic>> _carShop = [
    {
      'image': 'assets/images/yaris_ativ.png',
      'description': 'Yaris ATIV',
      'price': '549,000 บาท',
    },
    {
      'image': 'assets/images/yaris.png',
      'description': 'Yaris',
      'price': '559,000 บาท',
    },
    {
      'image': 'assets/images/coro.png',
      'description': 'Corolla Altis',
      'price': '894,000 บาท',
    },
    {
      'image': 'assets/images/coro_gr.png',
      'description': 'Corolla Altis GR Sport',
      'price': '1,129,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop2 = [
    {
      'image': 'assets/images/yaris_cross.png',
      'description': 'Yaris Cross',
      'price': '789,000 บาท',
    },
    {
      'image': 'assets/images/new_corolla_cross.png',
      'description': 'New Corolla Cross',
      'price': '999,000 บาท',
    },
    {
      'image': 'assets/images/corolla_cross_gr.png',
      'description': 'Corolla Cross GR Sport',
      'price': '1,254,000 บาท',
    },
    {
      'image': 'assets/images/fortuner_leader.png',
      'description': 'Fortuner Leader',
      'price': '1,400,000 บาท',
    },
  ];

  List<Map<String, dynamic>> _carShop3 = [
    {
      'image': 'assets/images/hilux_std.png',
      'description': 'Hilux Revo Standard',
      'price': '584,000 บาท',
    },
    {
      'image': 'assets/images/hilux_z.png',
      'description': 'Hilux Revo Z',
      'price': '669,000 บาท',
    },
    {
      'image': 'assets/images/hilux_prerunner.png',
      'description': 'Hilux Revo Prerunner',
      'price': '775,000 บาท',
    },
    {
      'image': 'assets/images/hilux_rocco.png',
      'description': 'Hilux Revo Rocco',
      'price': '1,006,000 บาท',
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
        title: Text('TOYOTA'),
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
                    'รถ SUV & PPV',
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
                    'รถกระบะ',
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
