import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ex1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xfffa7842);
    }

    return Scaffold(
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xfffa7847), Color(0xfff5346d)]),
            ),
            child: SafeArea(
                child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32, top: 56, right: 32),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 240,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Find and Meet people around\nyou to find LOVE',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Text(
                          'SIGN IN',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Email',
                                  hintStyle:
                                      TextStyle(color: Color(0xfff89592)),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xfff89592))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xfff89592)))),
                              cursorColor: Colors.white,
                              maxLines: 1,
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle:
                                        TextStyle(color: Color(0xfff89592)),
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xfff89592))),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xfff89592)))),
                                cursorColor: Colors.white,
                                maxLines: 1,
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              value: isChecked,
                              onChanged: (bool value) {
                                setState(() {
                                  isChecked = value;
                                });
                              },
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => const BorderSide(
                                    width: 1, color: Color(0xfff89592)),
                              ),
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                            ),
                            Padding(
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Remember Password',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 48, vertical: 16),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32))),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              "Get Started".toUpperCase(),
                              style: const TextStyle(color: Color(0xfff5346d)),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Material(
                              child: Container(
                                width: 56,
                                height: 56,
                                child:
                                    Image.asset('assets/images/facebook.png'),
                              ),
                            ),
                          ),
                          const SizedBox(width: 24),
                          ClipOval(
                            child: Material(
                              child: Container(
                                width: 56,
                                height: 56,
                                child: Image.asset('assets/images/twitter.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'FORGOT PASSWORD',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 64,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Opacity(
                        opacity: 0.3,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DONT HAVE ACCOUNT?',
                            style: TextStyle(
                                color: Color(0xfff67749), fontSize: 12),
                          ),
                          const SizedBox(width: 8),
                          const Text('SIGN UP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ))));
  }
}
