import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isExpense = true;
  List<String> list = ['Makan dan Jajan', 'Transportasi', 'Pengeluaran Lain'];
  late String DropDownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Transaksi")),
      body: SingleChildScrollView(
        child: SafeArea(child: Column(
          children: [
           Row(
              children: [
              Switch(
                value: isExpense,
                onChanged: (bool value) {
                  setState(() {
                    isExpense = value;
                  });
                },
                inactiveTrackColor: Colors.greenAccent,
                inactiveThumbColor: Colors.green,
                activeColor: Colors.red,
                ),
                Text(isExpense ? 'Pengeluaran' : 'Pemasukan', style: GoogleFonts.montserrat(fontSize: 14),)
            ],
          ), 
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Jumlah"),
              ),
          ), 
          DropdownButton<String>(
            value: DropDownValue,
            icon: Icon(Icons.arrow_downward),
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
                );
            }).toList(),
            onChanged: (String? value) {}),
                      ],
        )),
      ),);
  
  }
}