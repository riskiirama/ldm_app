import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/views/home_page.dart';
import 'package:ldm_app/views/register.dart';
import 'package:ldm_app/views/welcome_supervisor.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var hidden = true.obs;

  var box = GetStorage();

  TextEditingController usernameC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F2F7),
      body: ListView(
        padding: EdgeInsets.only(left: 37, right: 37, top: 200),
        children: [
          Image.asset(
            'assets/images/komputer.png',
            width: 135,
            height: 78,
          ),
          Text(
            'Login',
            style: blackStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Silahkan Login Untuk Melanjutkan',
            style: blackStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 18),
          Text('Username'),
          SizedBox(height: 6),
          Container(
            width: 286,
            height: 46,
            child: TextFormField(
              controller: usernameC,
              decoration: InputDecoration(
                  filled: true,
                  //  fillColor: Colors.black,
                  prefixIcon: Icon(Icons.person),
                  contentPadding: EdgeInsets.only(top: 7, bottom: 6),
                  hintText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  )),
            ),
          ),
          SizedBox(height: 18),
          Text('Password'),
          SizedBox(height: 6),
          Container(
            width: 286,
            height: 46,
            child: Obx(() {
              return TextFormField(
                obscureText: hidden.value,
                decoration: InputDecoration(
                  filled: true,
                  //  fillColor: Colors.black,
                  prefixIcon: Icon(Icons.lock),
                  contentPadding: EdgeInsets.only(top: 7, bottom: 6),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => hidden.toggle(),
                    icon: hidden.isTrue
                        ? Icon(Icons.remove_red_eye)
                        : Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.grey,
                          ),
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 42),
          Container(
            width: 248,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: blueColor,
            ),
            child: TextButton(
              onPressed: () {
                if (usernameC.text == 'admin') {
                  Get.offAll(
                    WelcomeSupervisorPage(),
                  );
                  box.write(
                    'key',
                    {
                      'role': usernameC.text,
                    },
                  );
                } else if (usernameC.text == 'supervisor') {
                  Get.offAll(
                    WelcomeSupervisorPage(),
                  );
                  box.write(
                    'key',
                    {
                      'role': usernameC.text,
                    },
                  );
                } else if (usernameC.text == 'boss') {
                  Get.offAll(
                    WelcomeSupervisorPage(),
                  );
                  box.write(
                    'key',
                    {
                      'role': usernameC.text,
                    },
                  );
                } else if (usernameC.text == 'teknisi') {
                  Get.offAll(
                    WelcomeSupervisorPage(),
                  );
                  box.write(
                    'key',
                    {
                      'role': usernameC.text,
                    },
                  );
                } else if (usernameC.text == 'gudang') {
                  Get.offAll(
                    WelcomeSupervisorPage(),
                  );
                  box.write(
                    'key',
                    {
                      'role': usernameC.text,
                    },
                  );
                }
              },
              child: Text(
                'Login',
                style: blackStyle.copyWith(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 18),
          TextButton(
            onPressed: () {
              Get.to(RegisterPage());
            },
            child: Text('Register'),
          )
        ],
      ),
    );
  }
}
