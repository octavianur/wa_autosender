import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wa_autosender/component/itempage.dart';
import 'package:wa_autosender/screens/step2registration.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key, required this.onSubmit}) : super(key: key);
  final ValueChanged<String> onSubmit;
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController _telp = new TextEditingController();
  TextEditingController _perangkat = new TextEditingController();
  var _text = '';

  String? get _errorText {
    final text = _perangkat.value.text;
    if (text.isEmpty){
      return 'Can\'t be empty';
    }if (text.length < 3) {
      return 'perangkat minimal 3 huruf';  
    }return null;
  }

  void _submit(){
    if (_errorText == null) {
      widget.onSubmit(_perangkat.value.text);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _perangkat.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Registrasi WA Autosender", 
          style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(height: 20,),
              ItemPage(page: "  Langkah 1/3  "),
              SizedBox(height: 20,),
              Text(
                "Silakan isi informasi mengenai nomor yang akan Anda gunakan.", 
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 40,),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Nomor WhastApp *"),
              ),
              SizedBox(height: 10,),
              IntlPhoneField(
              controller: _telp,
              decoration: InputDecoration(
                  hintText: '6281234567890',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(),
                  ),
              ),
              initialCountryCode: 'ID',
              onChanged: (phone) {
                  print(phone.completeNumber);
              },
              ),
              
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Nama Perangkat *"),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _perangkat,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Nama perangkat...',
                  errorText: _errorText,
                ), 
                onChanged: (text) => setState(()=> _text),
              ),
              SizedBox(height: 40,),        
               Column(
                mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                  SizedBox(
                    height: 50,
                    width:double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff206CFF),),
                        child: Text("Berikutnya", style: TextStyle(fontSize: 18),
                      ),
      
                      onPressed: (){
                        _perangkat.value.text.isNotEmpty ? _submit : null;
                        Get.to(Registration2(perangkat: _perangkat.text, telp: _telp.text,));
                      }
                    ),
                  ),
                 ],
               ),
            ],
          ),
        ),
      ),
    );
  }
}