import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:project_1/src/constants/colors.dart';
import 'package:project_1/src/constants/image_strings.dart';
import 'package:project_1/src/constants/text_string.dart';
import 'package:project_1/src/features/authentication/services/shared_pref_service/shared_pref_helper.dart';

import 'menu_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String userEmail = '';
  String userName = '';
  @override
  void initState(){
    super.initState();
    loadEmail();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          profileAppBar,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: tDarkColor,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(profileImage),
                ),
                SizedBox(height: 10),
                Text(
                  userName,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  userEmail,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: tDarkColor,
                      backgroundColor: tPrimaryColor,
                    ),
                    child: Text(
                      profileButton,
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: Colors.white),
                SizedBox(height: 20),
                MenuList(
                  leadingIcon: LineAwesomeIcons.cog_solid,
                  menuName: menu1,
                  prefixIcon: true,
                ),
                MenuList(
                  leadingIcon: LineAwesomeIcons.wallet_solid,
                  menuName: menu2,
                  prefixIcon: true,
                ),
                MenuList(
                  leadingIcon: LineAwesomeIcons.user_check_solid,
                  menuName: menu3,
                  prefixIcon: true,
                ),
                Divider(color: Colors.white),
                SizedBox(height: 10),
                MenuList(
                  leadingIcon: LineAwesomeIcons.info_solid,
                  menuName: menu4,
                  prefixIcon: true,
                ),
                MenuList(
                  leadingIcon: LineAwesomeIcons.sign_out_alt_solid,
                  menuName: menu5,
                  prefixIcon: false,
                  textColor: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loadEmail() async{
    final email = await SharedPrefHelper.getUserEmail();
    final name = await SharedPrefHelper.getUserName();
    setState(() {
      userEmail = email ?? 'user@email.com';
      userName = name ?? 'No Name';
    });
  }
}



