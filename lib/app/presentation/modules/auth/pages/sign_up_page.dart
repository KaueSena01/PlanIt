import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 0,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/star.png',
                  width: 250,
                  height: 250,
                  filterQuality: FilterQuality.high,
                  cacheHeight: 250,
                  cacheWidth: 250,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 75,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/fox.png',
                  width: 350,
                  height: 350,
                ),
              ),
            ),
            Positioned(
              top: 150,
              right: -80,
              child: Opacity(
                opacity: 0.1,
                child: Image.asset(
                  'assets/images/cloud.png',
                  width: 400,
                  height: 400,
                ),
              ),
            ),
            // Modal fixo (Container)
            Center(
              child: Container(
                width: 528,
                height: 456,
                padding: const EdgeInsets.symmetric(
                    vertical: 32.0, horizontal: 48.0),
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 55,
                      height: 55,
                    ),
                    const SizedBox(height: 16.0),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(text: 'Bem-vindo a '),
                          TextSpan(
                            text: 'PlanIt',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          TextSpan(
                              text:
                                  '!\nCrie sua conta agora e organize suas tarefas!'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    SizedBox(
                      height: 42,
                      child: TextFormField(
                        style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.singleLineFormatter,
                        ],
                        decoration: InputDecoration(
                          fillColor: const Color(0xFF3A3A3A),
                          filled: true,
                          hintText: 'Digite seu email ou nome de usuário',
                          hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF757575),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFF757575),
                              width: 0.7,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFF757575),
                              width: 0.7,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: const BorderSide(
                              color: Color(0xFF4200FF),
                              width: 1.0,
                            ),
                          ),
                          contentPadding:
                              const EdgeInsets.fromLTRB(16, 10, 16, 10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 42,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6A00FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          "Continuar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 22.0),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 6.0),
                            child: const Divider(
                              color: Color(0xFF757575),
                              height: 0.6,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            "ou",
                            style: TextStyle(
                              color: Color(0xFF757575),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 6.0),
                            child: const Divider(
                              color: Color(0xFF757575),
                              height: 0.6,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 22.0),
                    SizedBox(
                      height: 42,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3A3A3A),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: const BorderSide(
                              color: Color(0xFF757575),
                              width: 0.7,
                            ),
                          ),
                          elevation: 0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 8.0),
                            const Text(
                              "Continuar com Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(height: 22.0),
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                        children: [
                          TextSpan(text: 'Já possui uma conta? '),
                          TextSpan(
                            text: 'Entre aqui',
                            style: TextStyle(fontWeight: FontWeight.w600),
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
    );
  }
}
