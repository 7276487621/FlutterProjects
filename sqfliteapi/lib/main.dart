import 'dart:async';


import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:sqfliteapi/sqflite_db.dart';

import 'api_calling.dart';


main()  {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    home: HomeScreen(),
    // home: APIDemo(),
  ));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  SqfLiteDB myDbObj=SqfLiteDB();
  Razorpay? _razorpay;

  @override
  initState() {
    super.initState();
      // myDbObj.createDb();
    _razorpay = Razorpay();
    _razorpay!.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay!.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay!.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    // Do something when payment succeeds
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    // Do something when payment fails
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    // Do something when an external wallet was selected
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay!.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 10.0,),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                _razorpay!.open({
                  'key': 'rzp_test_VhtMR3P4gH43zI',
                  'amount': 1000,
                  'name': 'Think Qutioent.',
                  'description': 'Fine T-Shirt',
                  'retry': {'enabled': true, 'max_count': 1},
                  'send_sms_hash': true,
                  'prefill': {'contact': '7276487621', 'email': 'test@razorpay.com'},
                  'external': {
                    'wallets': ['paytm']
                  }
                });
              },
              child: const Text('PaymentGateway'),
            ),
            SizedBox(height: 20.0,),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter name',
              ),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Enter age',
              ),
              controller: ageController,
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                myDbObj.insertData(
                  email: nameController.text,
                  age: ageController.text,
                );
              },
              child: const Text('Insert'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                myDbObj.updateData(
                  email: nameController.text,
                  age: ageController.text,
                  id: '1',
                );
              },
              child: const Text('Update'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                myDbObj.deleteData(
                  id: '1',
                );
              },
              child: const Text('Delete'),
            ),
            MaterialButton(
              color: Colors.grey,
              onPressed: () {
                myDbObj.selectData();
              },
              child: const Text('Select'),
            ),

          ],
        ),
      ),
    );
  }
}
