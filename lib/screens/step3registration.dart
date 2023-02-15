import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wa_autosender/screens/payment.dart';
import 'package:wa_autosender/screens/step2registration.dart';
import '../component/detailringkasan.dart';
import '../component/itempage.dart';

class Registration3 extends StatefulWidget {
  String telp, perangkat;
  
  Registration3({required this.telp, required this.perangkat});

  @override
  State<Registration3> createState() => _Registration3State();
}

class _Registration3State extends State<Registration3> {
    String? metodepembayaran;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: context.mediaQueryPadding.top),
              Container(
                height: 70,
               child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, 
                        size: 25,
                        color: Color(0xff206CFF),),
                        onPressed: () {Get.to(Registration2(perangkat: widget.perangkat, telp: widget.telp,));},
                      ),
                      Text(
                        "    Registrasi WA Autosender    ",
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
              ),
              Container(
                height: 30,
               child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ItemPage(
                         page: "  Langkah 3/3  "
                      ),
                    ],
                  ),
              ),
              Container(
                height: 400,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      children: [
                        Text(
                          "Ringkasan", 
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 20,),
                        Column(
                          children: [
                            SingleChildScrollView(
                              child: Container(
                                child: DetailRingkasan(
                                  name: "Ringkasan nomor",
                                  harga: "Rp 150.000",
                                  desc: '${widget.telp}',
                                  ket: '${widget.perangkat}',
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              // DETAIL RINGKASAN INI HARUSNYA DIAMBIL DARI RADIO BUTTON SEBELUMNYA 
                              // LALU JIKA ADA VOUCHER YANG DIINPUTKAN ADA DALAM RINGKASAN TADI
                              // UNTUK JUMLAH UANGNYA MASIH BELUM BISA SEJAJAR 
                              child: DetailRingkasan(
                                name: "Paket dengan teks yang sangat puanjang sekali sepanjang panjang nya", 
                                harga: "Rp 100.000",
                                desc: "Kuota 10.000 pesan / 30 hari (s.d. 12 Okt 2021)", 
                                ket: '',
                              ),
                            ),
                            const Divider(thickness: 1,height: 30,),
                            Container(
                              child: DetailRingkasan(
                                name: "Total Pembayaran ", 
                                harga: "Rp 250.000", 
                                desc: '', 
                                ket: '',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Text("Kode Voucher (optional)"),
                  ],
                ),
              ),
              Container(
                height: 70,
                child: TextField(
                  decoration: InputDecoration(
                    // HARUSNYA PADA KODE VOUCHER INI ADA VALUE YANG BISA DICOCOKKAN (VALIDATION)
                    hintText: "Masukkan kode voucher...",
                    border: OutlineInputBorder(),
                    ),
                  ),
              ),
      
              Container(
                height: 200,
                child: Container(
                  child: ListView(
                    children: [
                      Text(
                        "Metode Pembayaran", 
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 18
                       ),
                      ),
                      RadioListTile(
                        value:"metpem1", 
                        groupValue: metodepembayaran, 
                        onChanged: (value) {
                        setState(() {
                          metodepembayaran = value.toString();
                        });
                      },
                      toggleable: true,
                      title: Text("M-Coin"),
                      subtitle: Text("Saldo saat ini Rp 500.000"),
                      controlAffinity: ListTileControlAffinity.trailing
                    ),
                    RadioListTile(
                        value:"metpem2", 
                        groupValue: metodepembayaran, 
                        onChanged: (value) {
                        setState(() {
                          metodepembayaran = value.toString();
                        });
                      },
                      toggleable: true,
                      title: Text("Transfer Bank"),
                      subtitle: Text("Transfer ke rekening Bank BCA / Mandiri"),
                      controlAffinity: ListTileControlAffinity.trailing
                    ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: 50,
                        width:double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff206CFF),),
                            child: Text("Bayar", style: TextStyle(fontSize: 18),
                          ),
                          onPressed: (){
                            // jika di klik salah satu dari radio button tersebut 
                            // maka akan muncul bottomsheet yang berbedaa
                            // if (onChanged) {
                              
                            // }
                            Get.to(Payment(perangkat: widget.perangkat, telp: widget.telp,));
                          },
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
    );
  }
}

