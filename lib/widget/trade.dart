import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TradeCard extends StatelessWidget {
  Map<String, String> trade;
  TradeCard(this.trade);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 4),
      elevation: 0,
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '${trade['neg']}',
                      style: GoogleFonts.roboto()
                          .copyWith(color: Colors.blue, fontSize: 12),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      color: Colors.blue.shade900,
                      child: Text(
                        '${trade['type']}',
                        style: GoogleFonts.roboto()
                            .copyWith(fontSize: 10, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      child: FaIcon(
                        FontAwesomeIcons.store,
                        size: 16,
                        color: Color(0xFF757575),
                      ),
                    ),
                    Text(
                      '${trade['market']}',
                      style: GoogleFonts.roboto()
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        color: Color(0xFFE5E5E5),
                        child: Image.asset(trade['asset']),
                        height: 60,
                        width: 60,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${trade['item']}',
                            style: GoogleFonts.roboto().copyWith(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'in ${trade['location']}',
                            style: GoogleFonts.roboto().copyWith(fontSize: 14),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${trade['qty']}',
                                style: GoogleFonts.roboto().copyWith(
                                    color: Color(0xFF757575),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              FaIcon(
                                FontAwesomeIcons.solidStar,
                                size: 10,
                                color: Color(0xFF757575),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'RESERVE PRICE --',
                                style: GoogleFonts.roboto().copyWith(
                                    color: Color(0xFF757575), fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      width: 76,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          color: Colors.green,
                          child: Text(
                            'LIVE',
                            style: GoogleFonts.roboto()
                                .copyWith(fontSize: 8, color: Colors.white),
                          ),
                        ),
                        Text(
                          '  Ends on 31-01-2021',
                          style: GoogleFonts.roboto()
                              .copyWith(fontSize: 10, color: Color(0xFF757575)),
                        )
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
