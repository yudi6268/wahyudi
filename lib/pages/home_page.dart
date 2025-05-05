import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Row(children: [
                  Container(
                    child: Icon(Icons.download, color: Colors.blue,),
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Pemasukan", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15)),
                      SizedBox(height: 10,),
                      Text("Rp3.800.000,-", style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 17))],
                    )
                  ],
                  ),
                Row(children: [
                  Container(
                    child: Icon(Icons.upload, color: Colors.red,),
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Pengeluaran", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 15)),
                      SizedBox(height: 10,),
                      Text("Rp3.800.000,-", style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 17))],
                    )
                  ],
                  ),
              ]),
              width: double.infinity,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Transaksi", style: GoogleFonts.montserrat(fontSize: 16,
            fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.delete), 
                  SizedBox(
                    width: 10,),
                  Icon(Icons.edit)],
                ),
                title: Text("Rp20.000"),
                subtitle: Text("Makan bergizi"),
                leading: Container(
                   child: Icon(Icons.upload, color: Colors.red,),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                        ),
                ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Icon(Icons.delete), 
                  SizedBox(
                    width: 10,),
                  Icon(Icons.edit)],
                ),
                title: Text("Rp1.600.000"),
                subtitle: Text("Gaji"),
                leading: Container(
                   child: Icon(Icons.download, color: Colors.green,),
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                        ),
                ),
            ),
          )

          ],
      )),
      );
    
  }
}