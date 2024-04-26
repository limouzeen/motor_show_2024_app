import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:number_text_input_formatter/number_text_input_formatter.dart';

class CalculateUI extends StatefulWidget {
  const CalculateUI({super.key});

  @override
  State<CalculateUI> createState() => _CalculateUIState();
}

class _CalculateUIState extends State<CalculateUI> {
  int? _selectedPercentage = 10;
  int _selectedYear = 1;

  TextEditingController _priceCtrl = new TextEditingController(text: '');
  TextEditingController _interestsCtrl = new TextEditingController(text: '');

  final NumberTextInputFormatter _formatter = NumberTextInputFormatter(
    integerDigits: 10,
    decimalDigits: 2,
    maxValue: '1000000000.00',
    decimalSeparator: '.',
    groupDigits: 3,
    groupSeparator: ',',
    allowNegative: false,
    overrideDecimalPoint: true,
    insertDecimalPoint: false,
    insertDecimalDigits: true,
  );

  String _formatResult(double amount) {
    MoneyFormatterOutput fmf = MoneyFormatter(amount: amount).output;
    return fmf.compactNonSymbol;
  }

  @override
  void initState() {
    // TODO: implement initState
    _selectedPercentage = 10;
    super.initState();
  }

  //สร้างเมธอดแสดง WarningMessage
  showWarningMessage(context, msg) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'คำเตือน',
          textAlign: TextAlign.center,
        ),
        content: Text(
          msg,
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ตกลง',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }

  void showInstallmentDetails(context, carPrice, downPaymentPercentage,
      numberOfMonths, monthlyInstallment) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'ยอดผ่อนรถต่อเดือน',
          textAlign: TextAlign.center,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'รถราคา ${_formatResult(carPrice)} บาท',
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Text(
              'ดาวน์ ${(downPaymentPercentage * 100).toStringAsFixed(0)}% เป็นเงิน ${_formatResult(downPaymentPercentage * carPrice)} บาท',
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Text(
              'จำนวนเดือนผ่อน $numberOfMonths เดือน',
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 10),
            Text(
              'ค่าผ่อนต่อเดือนเป็นเงิน ${NumberFormat('#,###.##').format(monthlyInstallment)}  บาท',
              textAlign: TextAlign.left,
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'ตกลง',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepOrange,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('คำนวณค่างวดรถ'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.085,
              vertical: MediaQuery.of(context).size.height * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/autocare.jpg',
                        width: MediaQuery.of(context).size.width * 0.35),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Text(
                  'ราคารถ (บาท)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextField(
                  inputFormatters: [_formatter],
                  controller: _priceCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'เงินดาวน์ (%)',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.white70,
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 10,
                      groupValue: _selectedPercentage,
                      onChanged: (value) {
                        setState(() {
                          _selectedPercentage = value as int?;
                        });
                      },
                    ),
                    Text(
                      '10%',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.height * 0.020,
                      ),
                    ),
                    Radio(
                      value: 20,
                      groupValue: _selectedPercentage,
                      onChanged: (value) {
                        setState(() {
                          _selectedPercentage = value as int?;
                        });
                      },
                    ),
                    Text(
                      '20%',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    Radio(
                      value: 25,
                      groupValue: _selectedPercentage,
                      onChanged: (value) {
                        setState(() {
                          _selectedPercentage = value as int?;
                        });
                      },
                    ),
                    Text(
                      '25%',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                    Radio(
                      value: 30,
                      groupValue: _selectedPercentage,
                      onChanged: (value) {
                        setState(() {
                          _selectedPercentage = value as int?;
                        });
                      },
                    ),
                    Text(
                      '30%',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
                  ],
                ),
                Text(
                  'จำนวนปีที่ผ่อน',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.white70,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: DropdownButton<int>(
                            value: _selectedYear,
                            onChanged: (value) {
                              setState(() {
                                _selectedYear = value!;
                              });
                            },
                            items: List.generate(6, (index) => index + 1)
                                .map<DropdownMenuItem<int>>((int value) {
                              String text = '';
                              switch (value) {
                                case 1:
                                  text = '12 งวด (1 ปี)';
                                  break;
                                case 2:
                                  text = '24 งวด (2 ปี)';
                                  break;
                                case 3:
                                  text = '36 งวด (3 ปี)';
                                  break;
                                case 4:
                                  text = '48 งวด (4 ปี)';
                                  break;
                                case 5:
                                  text = '60 งวด (5 ปี)';
                                  break;
                                case 6:
                                  text = '72 งวด (6 ปี)';
                                  break;
                              }
                              return DropdownMenuItem<int>(
                                value: value,
                                child: Center(
                                  child: Text(
                                    text,
                                    textAlign:
                                        TextAlign.center, // Center the text
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.020,
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                            isExpanded: true,
                            style: TextStyle(color: Colors.white70),
                            dropdownColor:
                                Colors.grey[300], // Set dropdown color to grey
                            underline: Container(
                              height: 2,
                              color: Colors.grey, // Set border color to grey
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // Rest of your UI widgets...
                  ],
                ),
                Text(
                  'ดอกเบี้ย (%) ต่อปี',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                TextField(
                  controller: _interestsCtrl,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          //Validate Data
                          if (_priceCtrl.text.trim().length == 0) {
                            showWarningMessage(
                                context, 'กรุณาป้อนราคาด้วยค่ะ ^O^');
                            return;
                          } else if (_interestsCtrl.text.trim().length == 0) {
                            showWarningMessage(context,
                                'กรุณาป้อนดอกเบี้ย(%)ต่อปีด้วยค่ะ ^O^');
                            return;
                          }

                          //คำนวณ

                          double carPrice =
                              double.parse(_priceCtrl.text.replaceAll(',', ''));
                          double downPaymentPercentage =
                              _selectedPercentage! / 100;
                          double downPayment = carPrice * downPaymentPercentage;
                          double loanAmount = carPrice - downPayment;

                          double annualInterestRate =
                              double.parse(_interestsCtrl.text);
                          double monthlyInterestRate =
                              annualInterestRate / 100 / 12;

                          int numberOfYears = _selectedYear;
                          int numberOfInstallments = numberOfYears * 12;

                          double monthlyInstallment = loanAmount *
                              (monthlyInterestRate *
                                  pow(1 + monthlyInterestRate,
                                      numberOfInstallments)) /
                              (pow(1 + monthlyInterestRate,
                                      numberOfInstallments) -
                                  1);

                          showInstallmentDetails(
                            context,
                            carPrice,
                            downPaymentPercentage,
                            numberOfYears * 12,
                            monthlyInstallment,
                          );
                        },
                        child: Text(
                          'คำนวณค่างวดรถ',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          padding: EdgeInsets.symmetric(
                            vertical: 12.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
