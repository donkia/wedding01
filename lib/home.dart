import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding01/widget/GallerypageView.dart';
import 'package:wedding01/widget/account.dart';
import 'package:wedding01/widget/bottom.dart';
import 'package:wedding01/widget/customCalendar.dart';
import 'package:wedding01/widget/naverMap.dart';
import 'package:wedding01/widget/notice.dart';
import 'package:wedding01/widget/openMapApp.dart';
import 'package:wedding01/widget/share.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  int getDday() {
    DateTime today = DateTime.now();
    DateTime targetDate = DateTime(2025, 1, 18);

    Duration differenceDate = targetDate.difference(today);
    return differenceDate.inDays > 0 ? differenceDate.inDays : 0;
  }

  @override
  Widget build(BuildContext context) {
    analytics.logEvent(
        name: 'page_view', parameters: {'page_name': '[01] home_page'});

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                Image.network(
                  'https://res.cloudinary.com/dzlinhsg8/image/upload/v1731236305/19_nlx6ii.webp',
                  //  width: 891, // 화면의 25% 크기로 설정
                  //  height: 1260

                  //  width: 512,
                  // height: 512,
                )
                // Image.network(
                //   //'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201839/3_m4vvht.webp',
                //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729905546/19_rxpjdy.webp',
                //   // height: 500,
                // ),
                ,
                Positioned.fill(
                    child: Image.network(
                  'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729779457/snow_mmgitq.png',
                  fit: BoxFit.cover,
//                  width: 512,
                  //  height: 512,
                )

                    //     Image.network(
                    //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729779457/snow_mmgitq.png',
                    //   fit: BoxFit.cover,
                    //   // height: 500,
                    // )

                    )
              ],
              //child:
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          const SizedBox(
            height: 20,
          ),
          Text(
            '2025년 1월 18일 토요일 12시',
            //style: TextStyle(fontWeight: FontWeight.w700),
            // style: GoogleFonts.notoSerif(),
            textAlign: TextAlign.center,
            //style: GoogleFonts.notoSerif(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '레노스블랑쉬웨딩홀 블랑쉬홀',
            //style: GoogleFonts.notoSerif(),
            //style: TextStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
            //       style: GoogleFonts.notoSerif(),
          ),
          const SizedBox(
            height: 80,
          ),

          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729895485/leaf1_tamo4w.png',
            color: const Color.fromRGBO(113, 150, 187, 1),
            width: 50,
            height: 50,
          )

              //  Image.network(
              //   color: const Color.fromRGBO(245, 224, 224, 1),
              //   //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201840/2_pdb7km.webp',
              //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729895485/leaf1_tamo4w.png',
              //   // height: 500,
              // ),
              ),

          const SizedBox(
            height: 20,
          ),
          Text(
            '6번째의 겨울이 지나',
            // style: GoogleFonts.notoSerif(),
          ),
          //_buildAnimatedText('6번째의 계절이 지나', 0),
          const SizedBox(
            height: 10,
          ),
          //_buildAnimatedText('7번째 계절부터는', 1),
          Text(
            '7번째의 겨울부터는',
            //  style: GoogleFonts.notoSerif(),
          ),
          const SizedBox(
            height: 10,
          ),
          //_buildAnimatedText('함께하고자 합니다.', 2),
          Text(
            '사랑의 결실을 맺고자합니다.',
            // style: GoogleFonts.notoSerif(),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1731236304/16_ilgvfo.webp',
            //    width: 4480,
            //   height: 6720,
            //    width: 512,
            // height: 512
          )

              // Image.network(
              //   //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201840/2_pdb7km.webp',
              //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729904922/16_e9uiwp.webp',
              //   // height: 500,
              // ),
              ),
          const SizedBox(
            height: 30,
          ),
          Text(
            '대학교 어느 수업\n프로젝트에서 한팀이 되어 처음 만났습니다.\n이제는 한 가정으로써\n프로젝트를 다시 시작하려고 합니다.',
            textAlign: TextAlign.center,
            //   style: GoogleFonts.notoSerif(),
          ),

          const SizedBox(
            height: 30,
          ),
          Text(
            '프로젝트가 성공적으로 오픈할 수 있도록\n참석하여 지혜와 용기를\n저희에게 나누어주십시오.',
            textAlign: TextAlign.center,
            //    style: GoogleFonts.notoSerif(),
          ),

          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '김상동(기철)·최계봉',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('의 아들'),
              Text(
                '   병현',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '          유성일·조선옥',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text('의   딸  '),
              Text(
                '   슬기',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1731236311/18_vzujye.webp',
            // width: 6720,
            //height: 4480,
          )

              // Image.network(
              //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729904925/18_fhsr0p.webp',
              //   // height: 500,
              // ),
              ),

          const SizedBox(
            height: 20,
          ),

          const SizedBox(
            height: 10,
          ),
          const CustomCalendar(),

          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '병현❤️슬기 결혼식이 ${getDday()}일 남았습니다.',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),

          // 사진 갤러리 보여주기
          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1731224462/gallery_plbv6w.webp',
            width: 30,
            height: 30,
            color: const Color.fromRGBO(113, 150, 187, 1),
          )),

          Text(
            'Gallery',
            textAlign: TextAlign.left,
            style: //GoogleFonts.notoSerif(
                //textStyle:
                const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),

          //사진 갤러리 보여주기
          const SizedBox(height: 550, child: GalleryPageView()),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729902480/information2_in126f.png',
            color: const Color.fromRGBO(113, 150, 187, 1),
            width: 30,
            height: 30,
          )

              //  Image.network(
              //     color: const Color.fromRGBO(245, 224, 224, 1),
              //     //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201840/2_pdb7km.webp',
              //     'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729902480/information2_in126f.png'
              //     // height: 500,
              //     ),
              ),
          Text(
            '마음 전하실 곳',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),

          const Account(),
          const SizedBox(
            height: 30,
          ),
          // 오시는길
          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729901963/location_ihcw6p.png',
            width: 30,
            height: 30,
            color: const Color.fromRGBO(113, 150, 187, 1),
          )

              // Image.network(
              //   color: const Color.fromRGBO(245, 224, 224, 1),
              //   //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201840/2_pdb7km.webp',
              //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729901963/location_ihcw6p.png',
              //   // height: 500,
              // ),
              ),
          Text(
            'Location',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '서울특별시 성동구 고산자로 202',
            textAlign: TextAlign.center,
            //  style: GoogleFonts.notoSerif(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '레노스블랑쉬웨딩홀 블랑쉬홀',
                //   style: GoogleFonts.notoSerif(),
              ),
              IconButton(
                  onPressed: () {
                    Clipboard.setData(
                            const ClipboardData(text: '서울특별시 성동구 고산자로 202'))
                        .then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                        '주소 복사가 완료되었습니다!',
                        //       style: GoogleFonts.notoSerif(),
                      )));
                    });
                  },
                  icon: const Icon(
                    Icons.copy,
                    size: 10,
                  )),
            ],
          ),

          // 네이버 지도
          const SizedBox(
            height: 400,
            child: NaverMap(),
          ),
          // 지도 어플리케이션 연동
          const OpenMapApp(),
          const SizedBox(
            height: 30,
          ),

          SizedBox(
              child: Image.network(
            'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729902480/information2_in126f.png',
            color: const Color.fromRGBO(113, 150, 187, 1),
            width: 30,
            height: 30,
          )

              //  Image.network(
              //     color: const Color.fromRGBO(245, 224, 224, 1),
              //     //   'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729201840/2_pdb7km.webp',
              //     'https://res.cloudinary.com/dzlinhsg8/image/upload/v1729902480/information2_in126f.png'
              //     // height: 500,
              //     ),
              ),
          Text(
            'Information',
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              thickness: 1,
              color: Color.fromRGBO(113, 150, 187, 1),
            ),
          ),
          const Notice(),

          SizedBox(
            child: Image.network(
              'https://res.cloudinary.com/dzlinhsg8/image/upload/v1731236306/20_v1blfn.webp',
            ),
          ),

          const Share(),
          const Buttom()
        ],
      ),
    ));
  }
}
