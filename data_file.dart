import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class MiscOs{
  String orgName, orgUrl;

  MiscOs(this.orgName, this.orgUrl)
};

List<MiscOs> dataList = [
  MiscOs('Mercer University', 'https://www.mercer.edu/')
];


List<RaisedButton> myRaisedButtonList = dataList.map(

        (dataList){  // this method maps each item in
      // dataList to each item in
      // myRaisedButtonList

      return RaisedButton(

          child: Text(dataList),

          onPressed: ( ) {
            _onBtnClicked(dataList);
          }

      );
    }

).toList( );


_onBtnClicked (String item) async {

  String url = 'https://' +  	item		 + '.com' ;

  if(await canLaunch(url))
    await launch(url);
  else
    throw 'Could not launch $url';
}