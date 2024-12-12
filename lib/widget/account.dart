import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool menShowData = false;
  bool womenShowData = false;
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            onPressed: () {
              analytics.logEvent(
                  name: 'button_click',
                  parameters: {'button_name': '[버튼01] 신랑측 계좌번호'});
              setState(() {
                menShowData = !menShowData;
              });
            },
            style: OutlinedButton.styleFrom(
              //foregroundColor: Colors.black,
              backgroundColor: const Color(0xFFE6F7F8),
              side: const BorderSide(color: Color(0xFFE6F7F8)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              //textStyle: const TextStyle(fontWeight: FontWeight.w700)
            ),
            child: const Text(
              '신랑측 계좌번호',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        if (menShowData)
          Column(
            //   mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: const Color(0x80E6F7F8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 신랑 ',
                      ),
                      TextSpan(
                          text: '김병현',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    Row(
                        //width: 100,
                        //height: 100,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(' 신한은행 110-475-039706'),
                          IconButton(
                              onPressed: () {
                                analytics.logEvent(
                                    name: 'button_click',
                                    parameters: {
                                      'button_name': '[버튼01] copy 신랑 계좌번호'
                                    });
                                Clipboard.setData(
                                    const ClipboardData(text: '110475039706'));
                              },
                              icon: const Icon(
                                Icons.copy,
                                size: 10,
                              )),
                        ]),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                color: const Color(0x80E6F7F8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 아버지 ',
                      ),
                      TextSpan(
                          text: '김상동',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    // const Text('  신랑 아버지 : 국민은행 513925-01-035551'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 국민은행 513925-01-035551'),
                        IconButton(
                            onPressed: () {
                              analytics.logEvent(
                                  name: 'button_click',
                                  parameters: {
                                    'button_name': '[버튼01] copy 신랑 아버지 계좌번호'
                                  });
                              Clipboard.setData(
                                  const ClipboardData(text: '51392501035551'));
                            },
                            icon: const Icon(
                              Icons.copy,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                color: const Color(0x80E6F7F8),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 어머니 ',
                      ),
                      TextSpan(
                          text: '최계봉',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 우리은행 1002-856-058754'),
                        IconButton(
                            onPressed: () {
                              analytics.logEvent(
                                  name: 'button_click',
                                  parameters: {
                                    'button_name': '[버튼01] copy 신랑 어머니 계좌번호'
                                  });
                              Clipboard.setData(
                                  const ClipboardData(text: '1002856058754'));
                            },
                            icon: const Icon(
                              Icons.copy,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        const SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: OutlinedButton(
            onPressed: () {
              analytics.logEvent(
                  name: 'button_click',
                  parameters: {'button_name': '[버튼01] 신부측 계좌번호'});
              setState(() {
                womenShowData = !womenShowData;
              });
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: const Color(0xFFFFF1F1),
              side: const BorderSide(color: Color(0xFFFFF1F1), width: 1.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              //textStyle: const TextStyle(fontWeight: FontWeight.w700)
            ),
            child: const Text('신부측 계좌번호'),
          ),
        ),
        if (womenShowData)
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: const Color(0x80FFF1F1),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 신부 ',
                      ),
                      TextSpan(
                          text: '유슬기',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 기업은행 043-118816-01-011'),
                        IconButton(
                            onPressed: () {
                              analytics.logEvent(
                                  name: 'button_click',
                                  parameters: {
                                    'button_name': '[버튼01] copy 신부 계좌번호'
                                  });
                              Clipboard.setData(
                                  const ClipboardData(text: '04311881601011'));
                            },
                            icon: const Icon(
                              Icons.copy,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                color: const Color(0x80FFF1F1),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 아버지 ',
                      ),
                      TextSpan(
                          text: '유성일',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 기업은행 033-074504-02-012'),
                        IconButton(
                            onPressed: () {
                              analytics.logEvent(
                                  name: 'button_click',
                                  parameters: {
                                    'button_name': '[버튼01] copy 신부 아버지 계좌번호'
                                  });
                              Clipboard.setData(
                                  const ClipboardData(text: '03307450402012'));
                            },
                            icon: const Icon(
                              Icons.copy,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                color: const Color(0x80FFF1F1),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(TextSpan(children: [
                      TextSpan(
                        text: ' 어머니 ',
                      ),
                      TextSpan(
                          text: '조선옥',
                          style: TextStyle(fontWeight: FontWeight.w700))
                    ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(' 국민은행 933901-01-078633 '),
                        IconButton(
                            onPressed: () {
                              analytics.logEvent(
                                  name: 'button_click',
                                  parameters: {
                                    'button_name': '[버튼01] copy 신부 어머니 계좌번호'
                                  });
                              Clipboard.setData(
                                  const ClipboardData(text: '93390101078633'));
                            },
                            icon: const Icon(
                              Icons.copy,
                              size: 10,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
      ]),
    );
  }
}
