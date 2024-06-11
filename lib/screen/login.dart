import 'package:bopat/screen/admin/home_screen.dart';
import 'package:bopat/screen/admin/dashboard_admin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:bopat/config/asset.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage('../asset/images/login.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // height: 250,
              // decoration: BoxDecoration(
              //   color: Asset.colorPrimaryDark,
              // ),
              // alignment: Alignment.bottomCenter,
              // padding: EdgeInsets.only(
              //   left: 20,
              //   bottom: 20,
              // ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bestari Cafe',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // TextFormField(
                    //   validator: (value) =>
                    //       value == '' ? 'Jangan Kosong' : null,
                    //   style: TextStyle(
                    //     color: Asset.colorPrimaryDark,
                    //   ),
                    //   decoration: InputDecoration(
                    //       hintText: 'Nama Pengguna',
                    //       hintStyle: TextStyle(
                    //         color: Asset.colorPrimaryDark,
                    //       ),
                    //       filled: true,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimaryDark,
                    //           width: 1,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimary,
                    //           width: 2,
                    //         ),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimary,
                    //           width: 1,
                    //         ),
                    //       ),
                    //       prefixIcon: Icon(
                    //         Icons.person_2,
                    //         color: Asset.colorPrimaryDark,
                    //       )),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    // TextFormField(
                    //   validator: (value) =>
                    //       value == '' ? 'Jangan Kosong' : null,
                    //   style: TextStyle(
                    //     color: Asset.colorPrimaryDark,
                    //   ),
                    //   obscureText: true,
                    //   decoration: InputDecoration(
                    //       hintText: 'Kata Sandi',
                    //       hintStyle: TextStyle(
                    //         color: Asset.colorPrimaryDark,
                    //       ),
                    //       filled: true,
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimaryDark,
                    //           width: 1,
                    //         ),
                    //       ),
                    //       focusedBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimary,
                    //           width: 2,
                    //         ),
                    //       ),
                    //       enabledBorder: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(10),
                    //         borderSide: BorderSide(
                    //           color: Asset.colorPrimary,
                    //           width: 1,
                    //         ),
                    //       ),
                    //       prefixIcon: Icon(
                    //         Icons.keyboard_alt_sharp,
                    //         color: Asset.colorPrimaryDark,
                    //       )),
                    // ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    Text(
                      'Mau makan di sini?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DashboardAdmin(), // Ganti HomeScreen dengan nama halaman homescreen Anda
                              ));
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          child: Text(
                            'Dine In',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Atau dibawa pulang?',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      width: double.infinity,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DashboardAdmin(), // Ganti HomeScreen dengan nama halaman homescreen Anda
                              ));
                        },
                        borderRadius: BorderRadius.circular(10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 12,
                          ),
                          child: Text(
                            'Take Away',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
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
