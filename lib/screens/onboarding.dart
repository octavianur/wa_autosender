import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wa_autosender/screens/registration.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,
                width: Get.width,
                color: Color(0xffE8FCEE),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.whatsapp_outlined, 
                      size: 100,
                      color: Color(0xff24A148),
                    ),
                    SizedBox(height: 25,),
                    Text("Whatsapp Autosender &", style: TextStyle(color: Color(0xff24A148), fontSize: 25, fontWeight: FontWeight.w700),),
                    Text("Whatsapp Blast", style: TextStyle(color: Color(0xff24A148), fontSize: 25, fontWeight: FontWeight.w700),),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  ListTile(
                    title:Text("Kirim pesan pemberitahuan atau mengirim pesan ke banyak nomor sekaligus, secara otomatis tanpa perlu membuka aplikasi WhatsApp"),
                    leading: Icon(Icons.circle_rounded, size: 13, color: Colors.black,),
                  ),
                  ListTile(
                    title:Text("Kirim pesan sekarang atau jadwalkan untuk nanti."),
                    leading: Icon(Icons.circle_rounded, size: 13, color: Colors.black,),
                  ),
                  ListTile(
                    title:Text("Satu nomor bisa digunakan banyak outlet."),
                    leading: Icon(Icons.circle_rounded, size: 13, color: Colors.black,),
                  ),
                ],
              ),
            ),
          ),
           Center(
             child: Stack(
              children: [
                Container(
                  height: 91,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                  ),
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      RichText(
                        text: TextSpan(
                          text: 'Biaya registrasi   : ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Rp 150.000 / nomor',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                        text: TextSpan(
                          text: 'Biaya langganan : ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Tersedia pilihan kuota pesan yang bisa digunakan.',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),   
          SizedBox(height: 30,),   
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width:double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff206CFF),),
                    child: Text("Daftar Sekarang", style: TextStyle(fontSize: 18),
                  ),
                  onPressed: ()=> Get.to(Registration(onSubmit: (String value) {},)),
                ),
              ),
            ),  
        ]
      ),
    );
  }
}