import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wa_autosender/component/pembayaran.dart';
import 'package:wa_autosender/screens/step3registration.dart';
import '../component/detailringkasan.dart';

class Payment extends StatelessWidget {

  String telp, perangkat;
  Payment({required this.telp, required this.perangkat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            SizedBox(height: context.mediaQueryPadding.top,),
            Container(
              height: 70,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.close_sharp, 
                      size: 25,
                      color: Color(0xff206CFF),),
                      onPressed: () {},
                    ),
                    Text(
                      "      Selesaikan Pembayaran                         ",
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
              height: 70,
              color: Color(0xffF2F5F7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/images/vector.png",
                    width: 25,
                    height: 25,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    width: 330,
                    child: Text(
                      "Perangkat WA Autosender telah dibuat. Selesaikan pembayaran untuk mulai menggunakannya.",
                      style: TextStyle(
                        fontSize: 14,
                        height: 1.5,
                        color: Color(0xff6F7287),
                        // letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              
            ),
            Container(
              height: 200,
              child: Card(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Batas akhir pembayaran", 
                            style: TextStyle(
                              fontSize: 16, 
                              color: Color(0xff6F7287),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Kamis, 16 September 2021 13:45", 
                                style: TextStyle(
                                  fontSize: 16, 
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  height: 2,
                                ),
                              ),
                              Text(
                                "23:59:12", 
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff6F7287),
                                  height: 2,
                                  ),
                                ),
                            ],
                          ),
                          const Divider(thickness: 1,height: 30,),
                          Text(
                            "Total tagihan", 
                            style: TextStyle(
                              fontSize: 16, 
                              color: Color(0xff6F7287),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      "Rp 250.099", 
                                      style: TextStyle(
                                        fontSize: 16, 
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        height: 2,
                                      ),
                                    ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 8.0),
                                       child: OutlinedButton.icon(
                                        onPressed: () {Get.to(Registration3(telp: telp, perangkat: perangkat,));},
                                        icon: Icon( // <-- Icon
                                          Icons.copy_rounded,
                                          color: Color(0xff6F7287),
                                          size: 13.0
                                          ),
                                        label: Text(
                                          'Salin', 
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff6F7287),
                                          ),
                                        ), // <-- Text
                                    ),
                                     ),
                                  ],
                                ),
                              ),
                              InkWell(
                                child: Text(
                                  "Detail Tagihan", 
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff206CFF),
                                    height: 2,
                                    ),
                                  ),
                                  onTap: () {
                                    Get.bottomSheet(
                                      SingleChildScrollView(
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          // height: 400,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                          ),
                                          child: Column(
                                             mainAxisAlignment: MainAxisAlignment.start,
                                             crossAxisAlignment: CrossAxisAlignment.center,
                                             children: [
                                              Container(
                                                height: 50,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 15),
                                                  child: Text(
                                                    "Detail tagihan",
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Divider(thickness: 2,),
                                              Container(
                                                height: 400,
                                                child: Card(
                                                  child: Padding(
                                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                                    child: ListView(
                                                      children: [
                                                        Text(
                                                          "Registrasi WA Autosender", 
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
                                                                  desc: '${telp}',
                                                                  ket: '${perangkat}',
                                                                ),
                                                              ),
                                                            ),
                                                            SizedBox(height: 10,),
                                                            Container(
                                                              child: DetailRingkasan(
                                                                name: "Paket dengan teks yang sangat puanjang sekali sepanjang panjang nya", 
                                                                harga: "Rp 100.000",
                                                                desc: "Kuota 10.000 pesan / 30 hari (s.d. 12 Okt 2021)", 
                                                                ket: '',
                                                              ),
                                                            ),
                                                            Container(
                                                              child: DetailRingkasan(
                                                                name: "Hemat 2021", 
                                                                harga: "- Rp 20.000",
                                                                desc: "Potongan 10%", 
                                                                ket: '',
                                                              ),
                                                            ),
                                                            const Divider(thickness: 1,height: 10,),
                                                            Container(
                                                              child: DetailRingkasan(
                                                                name: "Biaya admin", 
                                                                harga: "Rp 99",
                                                                desc: "", 
                                                                ket: '',
                                                              ),
                                                            ),
                                                            const Divider(thickness: 1,height: 10,),
                                                            Container(
                                                              child: DetailRingkasan(
                                                                name: "Total Pembayaran ", 
                                                                harga: "Rp 230.000", 
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
                                             ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 15, color: Color(0xffF2F5F7),),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text(
                          "Lakukan pembayaran ke salah satu rekening berikut:", 
                          style: TextStyle(
                            fontSize: 16, 
                            fontWeight: FontWeight.normal,
                            color: Color(0xff6F7287),
                          ),
                        ),
                      ),
                      Pembayaran(
                        image: "assets/images/bca.png", 
                        NamaBank: "Bank BCA", 
                        NoRek: "     1131406989", 
                        Nama: "     Octavia Nur C", 
                      ),
                      // const Divider(thickness: 1,height: 10,),
                      Pembayaran(
                        image: "assets/images/mandiri.png", 
                        NamaBank: "Bank Mandiri", 
                        NoRek: " 1131406989", 
                        Nama: " Octavia Nur Chasanah",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(height: 15, color: Color(0xffF2F5F7),),
            Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 380,
                    child: Text(
                      "Tagihan telah dikirim ke nomor whatsapp Anda di ${telp}, harap segera selesaikan pembayaran. Sistem Smartlink akan segera melakukan verifikasi secara otomatis.",
                      style: TextStyle(
                        fontSize: 15, 
                        color: Color(0xff6F7287),
                        height: 1.5,
                      ),  
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width: 370,
                    child: Row(
                      children: [
                        Text("Nomor tagihan: ", style: TextStyle(color: Color(0xff6F7287), fontSize: 16),),
                        Text(" SMR16316893931313 ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

