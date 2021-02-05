import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commodities extends StatelessWidget {
  Map<String, String> item;
  Commodities(this.item, this.isCommodity);
  bool isCommodity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: isCommodity
                ? ClipOval(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .2,
                      child: Image.asset(item['asset'], fit: BoxFit.cover),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: isCommodity
                              ? null
                              : Border.all(color: Colors.green, width: 1)),
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width * .2,
                    padding: EdgeInsets.all(1),
                    child: Image.asset(item['asset'], fit: BoxFit.cover),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.green, width: 1)),
                  ),
          ),
          Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  '${item['name']}',
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: GoogleFonts.roboto().copyWith(fontSize: 12),
                ),
              )),
        ],
      ),
    );
  }
}
