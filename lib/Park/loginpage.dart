import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'findid.dart';
import 'findpassword.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    '초기 ID : 회원번호',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    '초기 비밀번호 : 회원번호',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            TextField(
              controller: idController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'ID',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 112, 203, 245), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 112, 203, 245), width: 3.0),
                ),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              controller: passwordController,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                labelStyle: TextStyle(color: Colors.grey),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 112, 203, 245), width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromARGB(255, 112, 203, 245), width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // 로그인 버튼 클릭 시 MyHomePage로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '로그인',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 50),
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    // FindIdPage로 이동
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindId()),
                    );
                  },
                  child: Text(
                    '회원번호 찾기',
                    style: TextStyle(
                      color: Color.fromARGB(255, 138, 138, 138),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // FindPassword로 이동
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindPassword()),
                    );
                  },
                  child: Text(
                    '비밀번호 찾기',
                    style: TextStyle(
                      color: Color.fromARGB(255, 138, 138, 138),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            if (errorMessage.isNotEmpty)
              Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}