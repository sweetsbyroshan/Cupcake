import 'package:cupcake/data/homedata.dart';
import 'package:cupcake/widget/commodities.dart';
import 'package:cupcake/widget/ntrade.dart';
import 'package:cupcake/widget/trade.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BazaarPage extends StatefulWidget {
  @override
  _BazaarPageState createState() => _BazaarPageState();
}

class _BazaarPageState extends State<BazaarPage> {
  bool bazaar = true;
  String c = HomeData.commodity.first;
  String l = HomeData.location.first;
  String m = HomeData.market.first;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        if (bazaar == false) {
          setState(() {
            bazaar = true;
          });
          return Future.value(false);
        } else
          return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(bazaar == true ? 'Cupcake' : 'Trades',
              style: GoogleFonts.roboto().copyWith(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(75),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0x0D000000), width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 8),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.mic,
                    color: Color(0x8C000000),
                  ),
                ),
                leading: Icon(
                  Icons.search_outlined,
                  color: Color(0x8C000000),
                ),
                title: TextFormField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: GoogleFonts.roboto()
                          .copyWith(fontSize: 13, color: Color(0x8C000000))),
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
                icon: bazaar == true
                    ? Icon(Icons.more_vert)
                    : FaIcon(FontAwesomeIcons.filter),
                onPressed: () {
                  if (bazaar != true)
                    showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Scaffold(
                            resizeToAvoidBottomInset: false,
                            appBar: AppBar(
                              title: Text('Filter',
                                  style: GoogleFonts.roboto().copyWith(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500)),
                              actions: [
                                FlatButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Clear'.toUpperCase(),
                                      style: GoogleFonts.roboto().copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ))
                              ],
                            ),
                            body: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    value: c,
                                    hint: Text(
                                      'Commodity',
                                      style: GoogleFonts.roboto()
                                          .copyWith(fontSize: 16),
                                    ),
                                    items:
                                        HomeData.commodity.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: GoogleFonts.roboto()
                                              .copyWith(fontSize: 16),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (_) {
                                      setState(() {
                                        c = _;
                                      });
                                    },
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    value: l,
                                    hint: Text(
                                      'Location',
                                      style: GoogleFonts.roboto()
                                          .copyWith(fontSize: 16),
                                    ),
                                    items:
                                        HomeData.location.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: GoogleFonts.roboto()
                                              .copyWith(fontSize: 16),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (_) {
                                      setState(() {
                                        l = _;
                                      });
                                    },
                                  ),
                                  DropdownButton<String>(
                                    isExpanded: true,
                                    value: m,
                                    hint: Text(
                                      'Market',
                                      style: GoogleFonts.roboto()
                                          .copyWith(fontSize: 16),
                                    ),
                                    items: HomeData.market.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: GoogleFonts.roboto()
                                              .copyWith(fontSize: 16),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (_) {
                                      setState(() {
                                        m = _;
                                      });
                                    },
                                  ),
                                  RaisedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'APPLY',
                                      style: GoogleFonts.roboto().copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                    color: Colors.green,
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                })
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'profile');
                },
                child: Container(
                  padding: EdgeInsets.only(top: 40, left: 8, right: 8),
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [Colors.green, Colors.green.shade800],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(0.0, 1.0),
                        stops: [1, 0.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 64,
                        margin: EdgeInsets.only(
                          left: 8,
                        ),
                        height: 64,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/en/0/03/Hamtaro_cover.jpg')),
                            color: Color(0xFFE0E0E0),
                            shape: BoxShape.circle),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.pushNamed(context, 'profile');
                        },
                        title: Text('Roshan Singh',
                            style: GoogleFonts.roboto()
                                .copyWith(color: Colors.white, fontSize: 14)),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                ),
              ),
              Container(
                height: 500,
                alignment: Alignment.topCenter,
                child: ListView(
                    primary: false,
                    children: HomeData.drawer
                        .map((e) => ListTile(
                              onTap: () {
                                if (e.title.contains('Bazaar')) {
                                  setState(() {
                                    bazaar = true;
                                  });
                                } else if (e.title
                                    .toLowerCase()
                                    .contains('documents')) {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, 'docs');
                                } else {
                                  setState(() {
                                    bazaar = false;
                                  });
                                  Navigator.pop(context);
                                }
                              },
                              leading: Icon(
                                e.icon,
                                color: e.isSelected == true
                                    ? Colors.blue
                                    : Color(0xFF757575),
                              ),
                              title: Text(
                                e.title,
                                style: GoogleFonts.roboto().copyWith(
                                    color: e.isSelected == true
                                        ? Colors.blue
                                        : Color(0xFF757575),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ))
                        .toList()),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xFFE5E5E5),
        body: bazaar == true
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 4),
                      color: Colors.white,
                      padding: EdgeInsets.only(
                          left: 16, top: 8, bottom: 8, right: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Commodities',
                                style:
                                    GoogleFonts.roboto().copyWith(fontSize: 14),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Text(
                                  'SEE MORE',
                                  style: GoogleFonts.roboto().copyWith(
                                      fontSize: 12, color: Color(0XFF757575)),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              height: 100,
                              child: ListView.builder(
                                itemCount: commodities.length,
                                itemBuilder: (context, i) =>
                                    Commodities(commodities[i], true),
                                shrinkWrap: true,
                                primary: false,
                                scrollDirection: Axis.horizontal,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 4),
                      padding: EdgeInsets.only(
                          left: 16, top: 8, bottom: 8, right: 16),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Market',
                                style:
                                    GoogleFonts.roboto().copyWith(fontSize: 14),
                              ),
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    bazaar = true;
                                  });
                                },
                                child: Text(
                                  'SEE MORE',
                                  style: GoogleFonts.roboto().copyWith(
                                      fontSize: 12, color: Color(0XFF757575)),
                                ),
                              ),
                            ],
                          ),
                          Container(
                              height: 105,
                              child: ListView.builder(
                                itemCount: market.length,
                                itemBuilder: (context, i) =>
                                    Commodities(market[i], false),
                                shrinkWrap: true,
                                primary: false,
                                scrollDirection: Axis.horizontal,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 4),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 16, top: 8, bottom: 8, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Negotiable Trades',
                                  style: GoogleFonts.roboto()
                                      .copyWith(fontSize: 14),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Create New Trade'.toUpperCase(),
                                    style: GoogleFonts.roboto().copyWith(
                                        fontSize: 12, color: Color(0XFF757575)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              color: Color(0xFFE5E5E5),
                              child: ListView.builder(
                                itemBuilder: (context, i) =>
                                    NTradeCard(ntrade[i]),
                                shrinkWrap: true,
                                primary: false,
                                itemCount: ntrade.length,
                              ))
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16, top: 8, bottom: 8, right: 16),
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                'SEE MORE',
                                style: GoogleFonts.roboto()
                                    .copyWith(fontSize: 12, color: Colors.blue),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(top: 16),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: 16, top: 8, bottom: 8, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Trades',
                                  style: GoogleFonts.roboto()
                                      .copyWith(fontSize: 14),
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'CREATE NEW TRADES',
                                    style: GoogleFonts.roboto().copyWith(
                                        fontSize: 12, color: Color(0XFF757575)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              color: Color(0xFFE5E5E5),
                              child: ListView.builder(
                                itemBuilder: (context, i) =>
                                    TradeCard(trade[i]),
                                shrinkWrap: true,
                                primary: false,
                                itemCount: trade.length,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            : ListView.builder(
                itemBuilder: (context, i) {
                  if (i % 2 != 0)
                    return NTradeCard(ntrade[i]);
                  else
                    return TradeCard(trade[i]);
                },
                itemCount: trade.length,
                shrinkWrap: true,
              ),
        bottomNavigationBar: bazaar == true
            ? Container(
                color: Colors.green.shade50,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        flex: 5,
                        child: Text(
                          'To place bids and manage trades, Sign-In/ Register',
                          style: GoogleFonts.roboto().copyWith(
                              fontSize: 12, color: Colors.blue.shade900),
                        )),
                    Flexible(
                        flex: 2,
                        child: FlatButton(
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Scaffold(
                                      resizeToAvoidBottomInset: false,
                                      appBar: AppBar(
                                        title: Text('Sign In/ Register',
                                            style: GoogleFonts.roboto()
                                                .copyWith(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                      ),
                                      body: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0, horizontal: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Welcome,',
                                                  style: GoogleFonts.roboto()
                                                      .copyWith(
                                                          fontSize: 24,
                                                          color: Colors.green),
                                                ),
                                                Text(
                                                  'Enter your mobile number to\ncontinue',
                                                  style: GoogleFonts.roboto()
                                                      .copyWith(fontSize: 16),
                                                ),
                                                TextFormField(
                                                  maxLength: 10,
                                                  keyboardType:
                                                      TextInputType.phone,
                                                ),
                                                RaisedButton(
                                                  onPressed: () {},
                                                  child: Text(
                                                    'NEXT',
                                                    style: GoogleFonts.roboto()
                                                        .copyWith(
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                Colors.white),
                                                  ),
                                                  color: Colors.green,
                                                ),
                                              ],
                                            ),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Divider(),
                                                  Text(
                                                      'By signing in I agee with Cupcake Terms of Use')
                                                ])
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Text(
                              'PROCEED',
                              style: GoogleFonts.roboto().copyWith(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500),
                            )))
                  ],
                ),
              )
            : null,
      ),
    );
  }
}

List<Map<String, String>> commodities = [
  {'name': 'Rice', 'asset': 'assets/rice.png'},
  {'name': 'Wheat', 'asset': 'assets/wheat.png'},
  {'name': 'Ragi', 'asset': 'assets/ragi.png'},
  {'name': 'Bajra', 'asset': 'assets/bajra.png'},
  {'name': 'Jowar', 'asset': 'assets/jowar.png'},
  {'name': 'Corn', 'asset': 'assets/corn.png'},
];
List<Map<String, String>> market = [
  {'name': 'PRESK', 'asset': 'assets/apmc.jpeg'},
  {'name': 'SMNation', 'asset': 'assets/apmc.jpeg'},
  {'name': 'Siege', 'asset': 'assets/apmc.jpeg'},
  {'name': 'Cupcake', 'asset': 'assets/apmc.jpeg'},
  {'name': 'Chitta', 'asset': 'assets/apmc.jpeg'},
  {'name': 'KARMA', 'asset': 'assets/apmc.jpeg'},
];
List<Map<String, String>> trade = [
  {
    'neg': 'NEG-001',
    'type': 'Selling Type',
    'market': 'PRESK',
    'asset': 'assets/rice.png',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-002',
    'type': 'Milling Type',
    'market': 'PRESK',
    'asset': 'assets/rice.png',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-003',
    'type': 'Milling Type',
    'market': 'Siege',
    'asset': 'assets/ragi.png',
    'item': 'Ragi',
    'location': 'Maharashtra, Mira Road',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-004',
    'type': 'Compound Type',
    'market': 'Wheat',
    'asset': 'assets/wheat.png',
    'item': 'Ragi',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-005',
    'type': 'Milling Type',
    'market': 'PRESK',
    'asset': 'assets/ragi.png',
    'item': 'Ragi',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-006',
    'type': 'Selling Type',
    'market': 'Seige',
    'asset': 'assets/ragi.png',
    'item': 'Ragi',
    'location': 'Maharashtra, Mira Road',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-007',
    'type': 'Compound Type',
    'market': 'Seige',
    'asset': 'assets/rice.png',
    'item': 'Rice',
    'location': 'Maharashtra, Mira Road',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-008',
    'type': 'Selling Type',
    'market': 'SMNation',
    'asset': 'assets/jowar.png',
    'item': 'Jowar',
    'location': 'Delhi, Delhi APMC',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-009',
    'type': 'Compound Type',
    'market': 'PRESK',
    'asset': 'assets/wheat.png',
    'item': 'Wheat',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-010',
    'type': 'Milling Type',
    'market': 'PRESK',
    'asset': 'assets/ragi.png',
    'item': 'Ragi',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-011',
    'type': 'Compound Type',
    'market': 'PRESK',
    'asset': 'assets/bajra.png',
    'item': 'Bajra',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
  {
    'neg': 'NEG-012',
    'type': 'Compound Type',
    'market': 'PRESK',
    'asset': 'assets/corn.png',
    'item': 'Corn',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT'
  },
];
List<Map<String, dynamic>> ntrade = [
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT',
    'sell': true,
  },
  {
    'neg': 'NEG-051',
    'price': '₹ 26000/ QTL',
    'item': 'Wheat',
    'location': 'Punjab, Mohalli',
    'qty': '15.8 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-052',
    'price': '₹ 1000/ QTL',
    'item': 'Jowar',
    'location': 'Punjab, Mohalli',
    'qty': '3.2 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT',
    'sell': true,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '54.8 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 29900/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '67.8 MT',
    'sell': true,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24000/ QTL',
    'item': 'Rice',
    'location': 'Punjab, Mohalli',
    'qty': '25.8 MT',
    'sell': false,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 25000/ QTL',
    'item': 'Corn',
    'location': 'Punjab, Mohalli',
    'qty': '108 MT',
    'sell': true,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 21200/ QTL',
    'item': 'Corn',
    'location': 'Punjab, Mohalli',
    'qty': '88 MT',
    'sell': true,
  },
  {
    'neg': 'NEG-050',
    'price': '₹ 24400/ QTL',
    'item': 'Corn',
    'location': 'Punjab, Mohalli',
    'qty': '51.8 MT',
    'sell': false,
  },
];
