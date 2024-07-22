import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/main.dart';

class QuickLinkState extends State<MyHomePage> {
  List<String> imgList = [
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
    'https://via.placeholder.com/52',
  ];

  List<String> textList = [
    '회원가입',
    '회원가입',
    '회원가입',
    '회원가입',
    '회원가입',
    '회원가입',
    '회원가입',
    '회원가입',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Link'),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(
            9,
            0,
            9,
            0,
          ),
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(
                7,
                0,
                7,
                0,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 52,
                    width: 52,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                      child: Image.network(
                        imgList[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(
                      0,
                      8,
                      0,
                      0,
                    ),
                    child: Center(
                      child: Text(
                        textList[index],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
