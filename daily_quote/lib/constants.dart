import 'package:flutter/cupertino.dart';

const String kLanguageCode = 'en';
const String kAppName = 'Quotes';
const Color kLightGrey = Color(0xFFFEFEFF);
const String kTimesFamily = 'Times';
const Radius kBottomBarUpBorder = Radius.circular(50);
const Radius kBottomBarBottomBorder = Radius.zero;

const BorderRadius kBottomBarBorder = BorderRadius.only(
  topLeft: kBottomBarUpBorder,
  bottomLeft: kBottomBarBottomBorder,
  bottomRight: kBottomBarBottomBorder,
  topRight: kBottomBarUpBorder,
);

const NotchedShape kRoundedBottomBar = AutomaticNotchedShape(
  RoundedRectangleBorder(borderRadius: kBottomBarBorder),
  StadiumBorder(),
);

const NotchedShape kRoundedBottomFAB = CircularNotchedRectangle();

// TODO: add the Constants of Quotes API.
const String url = 'https://quotes15.p.rapidapi.com/quotes/random/';

const Map<String, String> headers = {
  'X-RapidAPI-Host': 'quotes15.p.rapidapi.com',
  'X-RapidAPI-Key': '341df03672msh37dd75eaa3cc2a7p1fea4cjsn4689f810105b'
};
