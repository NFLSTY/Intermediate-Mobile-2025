import 'package:flutter/material.dart';
import 'package:serene/shared/theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  color: lightPink,
                  height: 320,
                  width: double.infinity,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Image.asset(
                        "assets/logo.png",
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(82)
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 32,
                          ),
                          Center(
                            child: Text(
                              'Sign Up',
                              style: blackColorTextStyle.copyWith(
                                fontSize: 24
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            'Username',
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: white,
                              hintText: 'Masukkan username',
                              hintStyle: greyColorTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w200
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Email',
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: white,
                              hintText: 'Masukkan Email',
                              hintStyle: greyColorTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w200
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Password',
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w200
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: white,
                              hintText: 'Masukkan Password',
                              hintStyle: greyColorTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w200
                              ),
                              suffixIcon: Icon(Icons.visibility),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            'Konfirmasi Password',
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                            )
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              fillColor: white,
                              hintText: 'Konfirmasi Password',
                              hintStyle: greyColorTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w200
                              ),
                              suffixIcon: Icon(Icons.visibility),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12)
                              )
                            ),
                          ),
                          SizedBox(
                            height: 42,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                // router
                              }, 
                              child: Text(
                                'Sign Up'
                              )
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // login Google
                              }, 
                              icon: Image.asset(
                                'assets'
                              ),
                              label: Text('Masuk dengan Google',
                              style: blackColorTextStyle.copyWith(
                                fontSize: 14
                              ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12)
                                )
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Sudah memiliki akun?',
                                style: blackColorTextStyle.copyWith(
                                  fontSize: 12
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // router
                                }, 
                                child: Text(
                                  'Login Disini',
                                  style: blackColorTextStyle.copyWith(
                                    fontSize: 12
                                  ),
                                )
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),),
                  ),  
                )
              ],
            )
          ],
        )
      ),
    );
  }
}