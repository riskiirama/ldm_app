import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ldm_app/components/theme.dart';
import 'package:ldm_app/components/widgets/card_profile.dart';
import 'package:ldm_app/routes/route_app.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF1F2F7),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                'Profil',
                style: blackStyle.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'John Doe',
                style: blackStyle.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Teknisi',
                style: blackStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CardProfile(
                icon: Icon(
                  Icons.email_outlined,
                ),
                title: 'Email',
                desc: 'johndoe@mail.com',
              ),
              SizedBox(height: 30),
              CardProfile(
                icon: Icon(
                  Icons.location_on_outlined,
                ),
                title: 'Alamat',
                desc: 'Street 14, Seokarno hatta',
              ),
              SizedBox(height: 30),
              CardProfile(
                icon: Icon(
                  Icons.email_outlined,
                ),
                title: 'Nomor Telepon',
                desc: '+62821XXXXXX',
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.only(top: 17, left: 20, bottom: 17),
                height: 74,
                width: 304,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:
                          Icon(Icons.login_outlined, color: Color(0xffF9232E)),
                    ),
                    SizedBox(width: 23),
                    InkWell(
                        onTap: () {
                          Get.toNamed(RouteHelper.login);
                        },
                        child: Text('Logout')),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
