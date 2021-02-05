import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile',
            style: GoogleFonts.roboto().copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 4,
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: Color(0xFFFAFAFA),
                  leading: FaIcon(
                    Icons.person,
                    size: 34,
                  ),
                  title: Text(
                    'Roshan Singh',
                    style: GoogleFonts.roboto().copyWith(fontSize: 16),
                  ),
                  subtitle: Text(
                    'thisisroshans@gmail.com\n+918169777677',
                    style: GoogleFonts.roboto().copyWith(fontSize: 14),
                  ),
                  trailing: FlatButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Scaffold(
                                appBar: AppBar(
                                  title: Text('Edit Profile'.toUpperCase(),
                                      style: GoogleFonts.roboto().copyWith(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500)),
                                ),
                                body: SingleChildScrollView(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8.0, horizontal: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ListView(
                                          shrinkWrap: true,
                                          primary: false,
                                          children: [
                                            TextFormField(
                                              maxLength: 10,
                                              decoration: InputDecoration(
                                                  labelText: 'Full Name'),
                                              keyboardType: TextInputType.name,
                                            ),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                  labelText: 'Email'),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                            TextFormField(
                                              maxLength: 10,
                                              decoration: InputDecoration(
                                                  labelText: 'Phone'),
                                              keyboardType: TextInputType.phone,
                                            ),
                                          ],
                                        ),
                                        RaisedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'SAVE',
                                            style: GoogleFonts.roboto()
                                                .copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                          ),
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                          });
                    },
                    child: Text(
                      'Edit',
                      style: GoogleFonts.roboto().copyWith(fontSize: 12),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white,
                child: ListView(
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                          tileColor: Colors.white,
                          title: Text(
                            'Bank Account Details',
                            style: GoogleFonts.roboto().copyWith(fontSize: 16),
                          ),
                          subtitle: Text(
                            'Manage your bank account you use\nfor trading',
                            style: GoogleFonts.roboto().copyWith(fontSize: 14),
                          ),
                          trailing: FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 12,
                          ),
                          onTap: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                          tileColor: Colors.white,
                          title: Text(
                            'Trading documents',
                            style: GoogleFonts.roboto().copyWith(fontSize: 16),
                          ),
                          subtitle: Text(
                            'Complete your e-KYC to start\ntrading/bidding',
                            style: GoogleFonts.roboto().copyWith(fontSize: 14),
                          ),
                          trailing: FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 12,
                          ),
                          onTap: () {}),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                          tileColor: Colors.white,
                          title: Text(
                            'Terms of Use',
                            style: GoogleFonts.roboto().copyWith(fontSize: 16),
                          ),
                          subtitle: Text(
                            'Terms of Use, buyer & seller\nagreement, privacy policy',
                            style: GoogleFonts.roboto().copyWith(fontSize: 14),
                          ),
                          trailing: FaIcon(
                            FontAwesomeIcons.chevronRight,
                            size: 12,
                          ),
                          onTap: () {}),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Out',
                    style: GoogleFonts.roboto().copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
