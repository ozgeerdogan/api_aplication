import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_5/genel_widgets.dart';
import 'package:flutter_application_5/login/login_controller.dart';
import 'package:get/get.dart';

class LoginState extends StatefulWidget {
  const LoginState({super.key});

  @override
  State<LoginState> createState() => _LoginStateState();
}

class _LoginStateState extends State<LoginState> {
  final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.size.width,
        height: Get.size.height,
        child: Stack(children: [
          Container(
            height: Get.size.height,
            width: Get.size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/not.jpg", bundle: null),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: Get.size.height * .60,
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color.fromARGB(255, 171, 148, 123)),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "HESABINIZA GİRİŞ YAPIN",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        RegisterTextField(
                            baslik: "Kullanıcı Adı",
                            controller: loginController.kullaniciAdiController),
                        const SizedBox(
                          height: 7,
                        ),
                        RegisterTextField(
                            baslik: "Şifre",
                            controller: loginController.sifreController),
                        const SizedBox(
                          height: 20,
                        ),
                        RegisterDevamEtBtn(
                          function: () {},
                          width: Get.size.width,
                          btnAdi: "GİRİŞ YAP",
                          color: const Color.fromARGB(255, 111, 69, 21),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: "Hesabınız yok mu?",
                                style: const TextStyle(
                                    fontSize: 13, color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: " Hemen Kaydolun",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer() ..onTap = (){})
                                ]))
                      ],
                    ),
                  )
                ]),
              ))
        ]),
      ),
    );
  }
}
