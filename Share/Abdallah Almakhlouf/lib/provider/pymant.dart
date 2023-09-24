import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';

  InputDecoration _customDecoration(String label, IconData icon) {
    return InputDecoration(
      labelText: label,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.deepPurple),
      ),
      prefixIcon: Icon(icon, color: Colors.deepPurple),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        title: Text("Payment", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                'Enter your payment details:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: _customDecoration('Card Number', Icons.credit_card),
                keyboardType: TextInputType.number,
                maxLength: 16,
                onChanged: (value) => setState(() => cardNumber = value),
                validator: (value) => value!.isEmpty ? 'Enter card number' : null,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _customDecoration('Expiry Date', Icons.date_range),
                keyboardType: TextInputType.datetime,
                maxLength: 5,
                onChanged: (value) => setState(() => expiryDate = value),
                validator: (value) => value!.isEmpty ? 'Enter expiry date' : null,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _customDecoration('Card Holder Name', Icons.person),
                onChanged: (value) => setState(() => cardHolderName = value),
                validator: (value) => value!.isEmpty ? 'Enter card holder name' : null,
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: _customDecoration('CVV', Icons.lock),
                keyboardType: TextInputType.number,
                obscureText: true,
                maxLength: 3,
                onChanged: (value) => setState(() => cvvCode = value),
                validator: (value) => value!.isEmpty ? 'Enter CVV code' : null,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Payment data captured!')),
                    );
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12, horizontal: 40)),
                ),
                child: Text('Submit', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
