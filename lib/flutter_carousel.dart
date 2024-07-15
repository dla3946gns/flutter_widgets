import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_widgets/main.dart';

class FlutterCarouselState extends State<MyHomePage> {
  final List<String> imgList = [
    "https://cdn.open-pr.com/T/5/T507166583_g.jpg",
    "https://www.retcustomsbrokerage.com/wp-content/themes/retcustoms/images/resource/br.jpg",
    "https://images.northerntrust.com/content/dam/northerntrust/pws/nt/images/wealth-management/brokerage_851x478.jpg",
    "https://media.istockphoto.com/id/1314018414/photo/home-brokerage-business-introduces-architectural-house-designs-to-clients-real-estate-concepts.jpg?s=612x612&w=0&k=20&c=39O3qnguCY9ogDoNQy3e4-0AymLwMfGjxNcJAKJ2pu8=",
  ];

  bool isSeveral = true;

  double getViewportFraction() {
    if (isSeveral) {
      return 0.5;
    } else {
      return 1.0;
    }
  }

  double getLeftMargin() {
    return isSeveral ? 0 : 16;
  }

  double getRightMargin() {
    return isSeveral ? 8 : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter Carousel Widget',
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: FlutterCarousel(
          options: CarouselOptions(
            height: 430,
            showIndicator: false,
            slideIndicator: CircularSlideIndicator(),
            enableInfiniteScroll: true,
            disableCenter: true,
            viewportFraction: getViewportFraction(),
            padEnds: false,
          ),
          items: imgList
              .map(
                (item) => Container(
                  margin: EdgeInsets.fromLTRB(
                    0,
                    0,
                    getRightMargin(),
                    0,
                  ),
                  child: Align(
                    // 좌측 정렬을 위해 Align 위젯 사용
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 430,
                      child: Image.network(
                        item,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
