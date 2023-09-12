import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class HTMLPage extends StatelessWidget {
  const HTMLPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("html page"),
      ),
      body: Row(children: [
        Expanded(
            child: Html(
          data: htmlData,
          style: {"h1": Style(fontSize: FontSize.xLarge)},
          shrinkWrap: true,
          //other params
        )),
        //whatever other widgets
      ]),
    );
  }
}

const htmlData = r"""
  <div>
    <h1>h1: This page is for testing flutter_html</h1>
    <p>If there is an event wriiten by HTML code, then use this format!!</p>
    <span>😵‍💫😳🤪😎</span>
  </div>
""";
