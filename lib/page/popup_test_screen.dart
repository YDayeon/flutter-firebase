import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class PopUpTestPage extends StatelessWidget {
  const PopUpTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('이벤트 팝업 테스트'),
        ),
        body: const Center(child: EventDialog()));
  }
}

class EventDialog extends StatelessWidget {
  const EventDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => const TextEventWidget(),
      ),
      child: const Text('이벤트 팝업 띄우기'),
    );
  }
}

class EventAlert extends StatelessWidget {
  const EventAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(child: Text('이벤트 제목')),
      content: Row(
        children: [
          Container(
            color: Colors.amber,
            child: const Text('이벤트 내용 blabla'),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'CLOSE'),
          child: const Text('닫기'),
        )
      ],
    );
  }
}

class TextEventWidget extends StatelessWidget {
  const TextEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 359,
          height: 444,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 359,
                  height: 391,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF2ECAA1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(31),
                        bottomRight: Radius.circular(31),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 199,
                top: 222,
                child: Container(
                  width: 128,
                  height: 128,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: Svg(
                        "assets/images/checkList.svg",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 35,
                child: SizedBox(
                  width: 344,
                  child: Text(
                    '전문인배상책임보험\n가입 안내',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Noto Sans CJK KR',
                      fontWeight: FontWeight.w700,
                      height: 1.37,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 30,
                top: 306,
                child: Text(
                  '자세히 보기',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Noto Sans CJK KR',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    height: 2.73,
                  ),
                ),
              ),
              const Positioned(
                left: 275,
                top: 406,
                child: Text(
                  '닫기',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 407,
                child: Text(
                  '오늘 하루 그만보기',
                  style: TextStyle(
                    color: Color(0xFF8D8D8D),
                    fontSize: 16,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 408,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 3.36,
                        top: 2.52,
                        child: Container(
                          width: 14.47,
                          height: 10.71,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: Svg("assets/images/checkList.svg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 16,
                top: 143,
                child: Text(
                  '안전한 등기업무 수행을 위한\n법무사 전문인배상책임보험 \n가입절차가 시행됩니다.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Noto Sans KR',
                    fontWeight: FontWeight.w700,
                    height: 1.23,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
