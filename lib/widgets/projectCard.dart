import 'package:flutter/material.dart';
import 'package:webtest/models/languages.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

Widget languageRow({
  String language,
}) {
  return Row(
    children: [
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: languageColors[language],
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(language),
    ],
  );
}

Widget projectCard(
    {String title, String description, String language, String url}) {
  return Card(
    elevation: 0,
    shape: RoundedRectangleBorder(
        side: new BorderSide(color: Colors.grey[300], width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 22),
                ),
                IconButton(
                  icon: Icon(Icons.code),
                  onPressed: () {
                    js.context.callMethod('openLink', [url, '_blank']);
                  },
                ),
              ],
            ),
            Expanded(flex: 1, child: Text(description)),
            languageRow(
              language: language,
            ),
          ],
        ),
      ),
    ),
  );
}
