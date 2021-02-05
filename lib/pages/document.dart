import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DocumentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        title: Text('Documents',
            style: GoogleFonts.roboto().copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w500)),
      ),
      body: ListView(
        children: [
          ListTile(
            tileColor: Color(0xFFFAFAFA),
            leading: FaIcon(
              FontAwesomeIcons.idCard,
              color: Colors.brown.shade900,
            ),
            title: Text(
              'ADHAAR CARD',
              style: GoogleFonts.roboto().copyWith(fontSize: 16),
            ),
            subtitle: Text(
              '3120 XXX XXX 4096',
              style: GoogleFonts.roboto().copyWith(fontSize: 14),
            ),
            onTap: () => show(context),
            trailing: FlatButton(
              onPressed: () => show(context),
              child: Text(
                'Edit',
                style: GoogleFonts.roboto().copyWith(fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ListTile(
            tileColor: Color(0xFFFAFAFA),
            leading: FaIcon(
              FontAwesomeIcons.moneyBill,
              color: Colors.brown.shade900,
            ),
            title: Text(
              'GST',
              style: GoogleFonts.roboto().copyWith(fontSize: 16),
            ),
            subtitle: Text(
              '27SNIPL8694PIZ4',
              style: GoogleFonts.roboto().copyWith(fontSize: 14),
            ),
            onTap: () => show(context),
            trailing: FlatButton(
              onPressed: () => show(context),
              child: Text(
                'Edit',
                style: GoogleFonts.roboto().copyWith(fontSize: 12),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          ListTile(
            tileColor: Color(0xFFFAFAFA),
            leading: FaIcon(
              FontAwesomeIcons.piggyBank,
              color: Colors.brown.shade900,
            ),
            title: Text(
              'PAN CARD',
              style: GoogleFonts.roboto().copyWith(fontSize: 16),
            ),
            subtitle: Text(
              'NBXXX29D',
              style: GoogleFonts.roboto().copyWith(fontSize: 14),
            ),
            onTap: () => show(context),
            trailing: FlatButton(
              onPressed: () => show(context),
              child: Text(
                'Edit',
                style: GoogleFonts.roboto().copyWith(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }

  show(context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Upload'.toUpperCase(),
                    style: GoogleFonts.roboto().copyWith(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500)),
              ),
              body: ListView(
                children: [
                  ListTile(
                      tileColor: Color(0xFFFAFAFA),
                      leading: FaIcon(FontAwesomeIcons.image),
                      title: Text(
                        'Gallery',
                        style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      ),
                      onTap: () => Navigator.pop(context)),
                  ListTile(
                      tileColor: Color(0xFFFAFAFA),
                      leading: FaIcon(FontAwesomeIcons.googleDrive),
                      title: Text(
                        'Drive',
                        style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      ),
                      onTap: () => Navigator.pop(context)),
                  ListTile(
                      tileColor: Color(0xFFFAFAFA),
                      leading: FaIcon(FontAwesomeIcons.folder),
                      title: Text(
                        'Files',
                        style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      ),
                      onTap: () => Navigator.pop(context)),
                  ListTile(
                      tileColor: Color(0xFFFAFAFA),
                      leading: FaIcon(FontAwesomeIcons.camera),
                      title: Text(
                        'Take a photo',
                        style: GoogleFonts.roboto().copyWith(fontSize: 16),
                      ),
                      onTap: () => Navigator.pop(context)),
                ],
              ));
        });
  }
}
