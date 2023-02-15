import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wa_autosender/component/cardlist.dart';
import 'package:wa_autosender/screens/registration.dart';
import 'package:wa_autosender/screens/step3registration.dart';
import '../component/itempage.dart';

class Registration2 extends StatefulWidget {
  String telp, perangkat;
  Registration2({required this.telp, required this.perangkat});

  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  bool _isChecked = false;
  String? promosi;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
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
                    onPressed: () {Get.to(Registration(onSubmit: (String value) {  },));},
                  ),
                  Text(
                    "          Registrasi WA Autosender           ",
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
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ItemPage(
                     page: "  Langkah 2/3  "
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              // padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pilih paket kuota yang ingin anda gunakan",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [ 
                  // HARUSNYA DATA BISA TERSIMPAN UNTUK DILEMPAR PADA PAGE SELANJUTNYA
                  // MyRadioButton()
                  RadioListTile(
                    title: CardList(title:"Kuota Hemat", description: "Kuota 4.000 pesan / 30 hari", price: "Rp 50.000"),
                    value: "kuota1", 
                    controlAffinity: ListTileControlAffinity.trailing,
                    groupValue: promosi, 
                    onChanged: (value){
                      setState(() {
                        promosi = value.toString();
                      });
                    }
                  ),
                  RadioListTile(
                    title: CardList(title:"Paket orang kaya kaya kaya", description: "Kuota 1.000 pesan / 30 hari", price: "Rp 500.000"),
                    value: "kuota2", 
                    controlAffinity: ListTileControlAffinity.trailing,
                    groupValue: promosi, 
                    onChanged: (value){
                      setState(() {
                        promosi = value.toString();
                      });
                    }
                  ),
                  RadioListTile(
                    title: CardList(title:"Paket dengan teks yang sangat puanjang sekali sepanjang panjang ", description:"Kuota 10.000 pesan / 365 hari", price: "Rp 100.000"),
                    value: "kuota3", 
                    controlAffinity: ListTileControlAffinity.trailing,
                    groupValue: promosi, 
                    onChanged: (value){
                      setState(() {
                        promosi = value.toString();
                      });
                    }
                  ),
                  RadioListTile(
                    title: CardList(title:"Paket dengan teks yang sangat puanjang sekali sepanjang panjang ", description:"Kuota 10.000 pesan / 365 hari", price: "Rp 100.000"),
                    value: "kuota4", 
                    controlAffinity: ListTileControlAffinity.trailing,
                    groupValue: promosi, 
                    onChanged: (value){
                      setState(() {
                        promosi = value.toString();
                      });
                    }
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              child: Row(
                children: [
                  Checkbox(
                    value: _isChecked,
                    checkColor: Colors.white, 
                    activeColor: Color(0xff206CFF),
                    onChanged: (value) =>
                    setState(() => 
                    this._isChecked = value!,
                    ),
                  ),
                  Text(
                    "Perpanjang otomatis  ", 
                    style: TextStyle(
                      fontSize: 18),),
                   InkWell(
                    child: Text(
                      "Lihat detail", 
                      style: TextStyle(
                        fontSize: 18, 
                        color: Color(0xff206CFF)),),
                        onTap: (){
                          Get.bottomSheet(
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              height: 400,
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
                                    height: 70,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            "Perpanjangan Otomatis",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 350,
                                    child: Text(
                                      "Perpanjangan otomatis dilakukan ketika masa aktif berakhir & ditagih dengan memotong saldo M-Coin.",
                                      style: TextStyle(
                                        fontSize: 16,
                                        height: 1.5,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(14),
                                      child: Column(
                                        children: [
                                          ListTile(
                                            title: Text(
                                              "Jika kuota pesan habis namun masa aktif belum berakhir, maka dikenakan tarif 100 m-coin per pesan yang dikirim.",
                                              style: TextStyle(
                                                height: 1.5
                                              ),
                                            ),
                                            leading: Icon(Icons.circle_rounded, size: 10, color: Color(0xff6F7287),),
                                          ),
                                          ListTile(
                                             title: Text(
                                              "Apabila saat perpanjangan saldo M-Coin tidak mencukupi, maka Autosender tidak dapat digunakan dan Anda perlu melakukan perpanjangan secara manual.",
                                              style: TextStyle(
                                                height: 1.5
                                                ),
                                              ),
                                             leading: Icon(Icons.circle_rounded, size: 10, color: Color(0xff6F7287),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
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
                            child: Text("Berikutnya", style: TextStyle(fontSize: 18),
                          ),
                          onPressed: (){Get.to(Registration3(perangkat: widget.perangkat, telp: widget.telp,));},
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}