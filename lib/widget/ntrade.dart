import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NTradeCard extends StatelessWidget {
  NTradeCard(this.trade);
  Map<String, dynamic> trade;
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.only(bottom: 4),
        elevation: 0,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Center(
                            child: Text(
                              '${trade['neg']}',
                              style: GoogleFonts.roboto()
                                  .copyWith(color: Colors.blue, fontSize: 12),
                            ),
                          )),
                      Flexible(
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${trade['item']}',
                                style: GoogleFonts.roboto().copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'in ${trade['location']}',
                                style:
                                    GoogleFonts.roboto().copyWith(fontSize: 14),
                              )
                            ],
                          )),
                      Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Center(
                              child: trade['sell'] == true
                                  ? FaIcon(
                                      FontAwesomeIcons.arrowCircleUp,
                                      color: Colors.green,
                                    )
                                  : FaIcon(
                                      FontAwesomeIcons.arrowCircleDown,
                                      color: Colors.lime,
                                    ))),
                    ],
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Row(children: [
                              FaIcon(
                                FontAwesomeIcons.balanceScale,
                                size: 16,
                                color: Color(0xFF757575),
                              ),
                              Text(
                                '${trade['qty']}',
                                style: GoogleFonts.roboto().copyWith(
                                    fontSize: 10, color: Color(0xFF757575)),
                              )
                            ])),
                        Flexible(
                            flex: 2,
                            child: Row(children: [
                              FaIcon(
                                FontAwesomeIcons.bullhorn,
                                size: 16,
                                color: Color(0xFF757575),
                              ),
                              Text(
                                '  ${trade['price']}',
                                style: GoogleFonts.roboto().copyWith(
                                    fontSize: 10, color: Color(0xFF757575)),
                              )
                            ])),
                        Flexible(
                            flex: 2,
                            child: Row(children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                color: Colors.green,
                                child: Text(
                                  'LIVE',
                                  style: GoogleFonts.roboto().copyWith(
                                      fontSize: 8, color: Colors.white),
                                ),
                              ),
                              Text(
                                '  Ends on 31-01-2021',
                                style: GoogleFonts.roboto().copyWith(
                                    fontSize: 10, color: Color(0xFF757575)),
                              )
                            ])),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
