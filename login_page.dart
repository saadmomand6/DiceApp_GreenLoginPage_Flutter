// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dice_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(child: Text("Login Page")),
        backgroundColor: const Color.fromRGBO(124, 252, 0, 0.8),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                      backgroundImage: AssetImage('images/loinb.png'),
                      backgroundColor: Colors.black,
                      radius: 50),
                  const SizedBox(
                    height: 30,
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: "Saad Khan Momand\n",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Comic Sans MS',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(124, 252, 0, 0.8),
                      ),
                      children: [
                        WidgetSpan(child: SizedBox(height: 30)),
                        TextSpan(
                          text: "FLUTTER DEVELOPER",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Comic Sans MS',
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20),
                color: Colors.transparent,
                width: 300,
                child: const Center(
                    child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter Your Email",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color.fromRGBO(254, 237, 0, 1),
                    ),
                  ),
                ))),
            const SizedBox(
              height: 10,
            ),
            Container(
                margin: const EdgeInsets.only(left: 20),
                color: Colors.transparent,
                width: 300,
                child: const Center(
                    child: TextField(
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter Password",
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.vpn_key_outlined,
                      color: Color.fromRGBO(254, 237, 0, 1),
                    ),
                  ),
                ))),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DicePage(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(124, 252, 0, 0.8),
                ),
              ),
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text.rich(
              TextSpan(
                text: "Not Registered? ",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  color: Color.fromRGBO(124, 252, 0, 0.8),
                ),
                children: [
                  TextSpan(
                    text: 'Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.red,
                    ),
                    // recognizer: TapGestureRecognizer()
                    //   ..onTap = () {
                    //     print('you clicked on Sign Up');
                    //   },
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    UpFileDown(
                      text: "Upload Resume",
                      iconData: Icons.file_upload_outlined,
                      color: Colors.deepPurple,
                    ),
                    UpFileDown(
                      text: "Download Resume",
                      iconData: Icons.file_download_outlined,
                      color: Colors.pinkAccent,
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Card(
                color: Color.fromRGBO(124, 252, 0, 0.8),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(
                        text: 'I ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: Colors.black,
                        ),
                        children: [
                          WidgetSpan(
                            child: Icon(
                              Icons.favorite_rounded,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(text: ' Flutter')
                        ]),
                  ),
                ),
              ),
            ),

            // =====container====
            // Center(
            //   child: Container(
            //     width: 200,
            //     height: 200,
            //     decoration: BoxDecoration(
            //      color: Colors.black,
            //      shape: BoxShape.circle,
            //      border: Border.all(color: Colors.black, width: 5,),
            //      image:const DecorationImage(image: AssetImage('images/pic2.jpg'),
            //      fit: BoxFit.cover,
            //      ),
            //      ),
            //      ),
            //     ),

            // =========Image=======
            // Column(
            //   children: [
            //     Image.asset(
            //     'images/pic3.jpg',
            //     fit: BoxFit.cover,
            //     ),
            //     const Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 5),),
            //     Image.asset('images/pic1.jpg',
            //     height: 300,

            //     ),
            //     ],

            //     )
          ],
        ),
      ),
    );
  }
}

class UpFileDown extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color;

  const UpFileDown({
    Key? key,
    required this.text,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Icon(iconData, color: color),
          decoration: BoxDecoration(
              color: color.withOpacity(0.25), shape: BoxShape.circle),
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
