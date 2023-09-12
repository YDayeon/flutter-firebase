import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg_provider;

class EventFormatPage extends StatelessWidget {
  const EventFormatPage({super.key});

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => const FullPopUpWidget(),
                ),
            child: const Text(
              'Full Pop-up',
              style: TextStyle(color: Colors.white),
            )),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.orange),
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const TextEventWidget(),
          ),
          child: const Text(
            '이벤트 팝업 Figma',
            style: TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return const BottomModalWidget();
                },
              );
            },
            child: const Text(
              'Bottom Modal',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}

class BottomModalWidget extends StatelessWidget {
  const BottomModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Modal BottomSheet'),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
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

class FullPopUpWidget extends StatelessWidget {
  const FullPopUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is Full Screen Event Pop-up template',
            style: TextStyle(color: Colors.pink[100]),
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pop(context, 'CLOSE'),
              child: const Text(
                'close',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
    );
  }
}

class TextEventWidget extends StatelessWidget {
  const TextEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
                    image: AssetImage(
                      "assets/images/icoCheckList.png",
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
              left: 45,
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
                      left: 3,
                      top: 2,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                svg_provider.Svg("assets/images/checkBox.svg"),
                            fit: BoxFit.contain,
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
    );
  }
}
