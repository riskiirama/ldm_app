import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/routes/route_app.dart';
import 'package:ldm_app/views/auth/register.dart';

class LoginPage extends StatelessWidget {
  var hidden = true.obs;

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
                obscureText: true,
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
                Get.toNamed(RouteHelper.role);
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
