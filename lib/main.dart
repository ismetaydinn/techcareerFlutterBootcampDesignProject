import 'package:flutter/material.dart';
import 'package:techcareer_tasarim_odev/renkler.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('tr', '')
      ],
      home: const Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context);

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height; //683
    final double ekranGenisligi = ekranBilgisi.size.width; //411

    return Scaffold(
      backgroundColor: beyaz,
      appBar: AppBar(
        backgroundColor: beyaz,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: ekranGenisligi/8.22),
              child: Icon(
                Icons.subject,
                size: ekranGenisligi/10.275,
                color: acikMavi,
              ),
            ),
            SizedBox(
                width: ekranGenisligi/8.22,
                height: ekranYuksekligi/22.7,
                child: Image.asset("resimler/koc.png")
            ),
            Padding(
              padding: EdgeInsets.only(right: ekranGenisligi/11.7),
              child: Text("YapıKredi",
                style: TextStyle(fontFamily: "ykFont2", fontSize: ekranGenisligi/13.7, color: koyuMavi),),
            ),
            Padding(
              padding: EdgeInsets.only(left: ekranGenisligi/20.55, right: ekranGenisligi/41.1),
              child: Icon(
                Icons.mail_outline,
                size: ekranGenisligi/13.7,
                color: acikMavi,
              ),
            ),
            Icon(
              Icons.exit_to_app,
              size: ekranGenisligi/13.7,
              color: acikMavi,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: ekranGenisligi/18.68, bottom: ekranYuksekligi/227.6),
                  child: Text(d!.hesaplarim,
                    style: TextStyle(fontFamily: "hesaplarim",fontSize: ekranGenisligi/20.55, color: siyah, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: ekranGenisligi/20.55, right: ekranGenisligi/20.55),
                width: ekranGenisligi/1.11,
                height: ekranYuksekligi/5.464,
                decoration: BoxDecoration(
                  color: beyaz,
                  borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/41.1)),
                  border: Border.all(
                      color: acikGri,
                      width: ekranGenisligi/137,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: ekranYuksekligi/91.06),
                          child: SizedBox(width: ekranGenisligi/4.11, height:ekranYuksekligi/13.66,
                              child: Image.asset("resimler/cuzdan.PNG")),
                        ),
                        Text(d.vadesizTlHesabi, style: TextStyle(fontFamily: "hesaplarim", fontSize: ekranGenisligi/20.55),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: ekranGenisligi/5.87143, top: ekranYuksekligi/136.6),
                          child: Icon(Icons.more_vert, size: ekranGenisligi/13.7, color: Colors.blueGrey,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: ekranGenisligi/20.55, top: ekranYuksekligi/68.3),
                          child: Column(
                            children: [
                              Text("1582,76 TL", style: TextStyle(fontFamily: "hesaplarim",fontSize: ekranGenisligi/20.55, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: EdgeInsets.only(top: ekranYuksekligi/136.6),
                                child: Text(d.kullanilabilirBakiye, style: TextStyle(fontSize: ekranGenisligi/27.4),),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: ekranGenisligi/20.55),
                          child: Icon(Icons.arrow_forward, size: ekranGenisligi/16.44, color: Colors.blueGrey,),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: ekranGenisligi/13.7, top: ekranYuksekligi/68.3),
                          child: Column(
                            children: [
                              Text("1582,76 TL", style: TextStyle(fontFamily: "hesaplarim",fontSize: ekranGenisligi/20.55, fontWeight: FontWeight.bold),),
                              Padding(
                                padding: EdgeInsets.only(top: ekranYuksekligi/136.6),
                                child: Text(d.guncelBakiye, style: TextStyle(fontSize: ekranGenisligi/27.4),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: ekranGenisligi/1.4421, top: ekranYuksekligi/68.3),
            child: Text(d.kartlarim,
              style: TextStyle(fontFamily: "hesaplarim",fontSize: ekranGenisligi/20.55, color: siyah, fontWeight: FontWeight.bold),),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: ekranGenisligi/20.55, right: ekranGenisligi/20.55),
                width: ekranGenisligi/1.1108,
                height: ekranYuksekligi/5.464,
                decoration: BoxDecoration(
                  color: beyaz,
                  borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/41.1)),
                  border: Border.all(
                      color: acikGri,
                      width: ekranGenisligi/137
                  ),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: ekranGenisligi/41.1),
                          width: ekranGenisligi/4.11,
                          height: ekranYuksekligi/6.83,
                          decoration: BoxDecoration(
                            color: acikGri,
                            borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/4.11)),
                          ),
                          child: Icon(Icons.credit_card, size: ekranGenisligi/8.22, color: Colors.blueGrey,),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(d.kkYok, style: TextStyle(fontSize: ekranGenisligi/24.176, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
                          child: Container(
                            child: Center(
                              child: TextButton(
                                onPressed: (){print("Hemen Başvur");},
                                child: Text(d.hemenBasvur,
                                    style: TextStyle(fontSize: ekranGenisligi/22.83, color: beyaz, fontFamily: "hesaplarim")
                                ),
                                style: TextButton.styleFrom(backgroundColor: acikMavi),
                              ),
                            ),
                            width: ekranGenisligi/2.74,
                            height: ekranYuksekligi/13.66,
                            decoration: BoxDecoration(
                              color: acikMavi,
                              borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/68.3, bottom: ekranYuksekligi/68.3),
            child: Container(
              width: ekranGenisligi/1.1108,
              height: ekranYuksekligi/12.42,
              decoration: BoxDecoration(
                color: acikMavi,
                borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/27.4)),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: ekranGenisligi/20.55, right: ekranGenisligi/2.74),
                    child: Center(child: TextButton(
                      onPressed: (){print("Son Hareketler");},
                      child: Text(d.sonHareketler, style: TextStyle(fontFamily: "hesaplarim", fontSize: ekranGenisligi/20.55, color: beyaz)
                        ,),
                      style: TextButton.styleFrom(backgroundColor: acikMavi),
                    ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, size: ekranGenisligi/10.275, color: beyaz,),
                ],
              ),
            ),
          ),
          Container(
            width: ekranGenisligi/1.1108,
            height: ekranYuksekligi/12.42,
            decoration: BoxDecoration(
              color: acikMavi,
              borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/27.4)),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: ekranGenisligi/20.55, right: ekranGenisligi/3.38),
                  child: Center(child: TextButton(
                    onPressed: (){print("Aylık Ödeme Planı");},
                    child: Text(d.aylikOdemePlani, style: TextStyle(fontFamily: "hesaplarim", fontSize: ekranGenisligi/20.55, color: beyaz)
                      ,),
                    style: TextButton.styleFrom(backgroundColor: acikMavi),
                  ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, size: ekranGenisligi/10.275, color: beyaz,),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
                child: Container(
                  width: ekranGenisligi/3.288,
                  height: ekranYuksekligi/6.83,
                  decoration: BoxDecoration(
                    color: beyaz,
                    borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                    border: Border.all(
                        color: acikGri,
                        width: ekranYuksekligi/227.66
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(width: ekranGenisligi/8.22, height: ekranYuksekligi/13.66,child: Image.asset("resimler/varliklarim.PNG"),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: ekranGenisligi/3.288,
                            height: ekranYuksekligi/15.59,
                            child: Center(
                              child: TextButton(
                                onPressed: (){print("Varlıklarım");},
                                child: Text(d.varliklarim, style: TextStyle(fontSize: ekranGenisligi/23.5, fontFamily: "hesaplarim", color: siyah)
                                ),
                                style: TextButton.styleFrom(backgroundColor: acikGri),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: acikGri,
                              borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
                child: Container(
                  width: ekranGenisligi/3.288,
                  height: ekranYuksekligi/6.83,
                  decoration: BoxDecoration(
                    color: beyaz,
                    borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                    border: Border.all(
                        color: acikGri,
                        width: ekranGenisligi/137
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(width: ekranGenisligi/8.22, height: ekranYuksekligi/13.66,
                        child: Image.asset("resimler/qr.PNG"),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: ekranGenisligi/3.288,
                            height: ekranYuksekligi/15.59,
                            child: Center(
                              child: TextButton(
                                onPressed: (){print("Para Çek/Yatır");},
                                child: Text(d.paraCekYatir, style: TextStyle(fontSize: ekranGenisligi/27.4, fontFamily: "hesaplarim", color: siyah)
                                ),
                                style: TextButton.styleFrom(backgroundColor: acikGri),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: acikGri,
                              borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
                child: Container(
                  width: ekranGenisligi/3.288,
                  height: ekranYuksekligi/6.83,
                  decoration: BoxDecoration(
                    color: beyaz,
                    borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                    border: Border.all(
                        color: acikGri,
                        width: ekranYuksekligi/227.66
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(width: ekranGenisligi/8.22, height: ekranYuksekligi/13.66,child: Image.asset("resimler/aracim.PNG"),
                      ),
                      Stack(
                        children: [
                          Container(
                            width: ekranGenisligi/3.288,
                            height: ekranYuksekligi/15.59,
                            child: Center(
                              child: TextButton(
                                onPressed: (){print("Aracım+");},
                                child: Text(d.aracim, style: TextStyle(fontSize: ekranGenisligi/23.49, fontFamily: "hesaplarim", color: siyah)
                                ),
                                style: TextButton.styleFrom(backgroundColor: acikGri),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: acikGri,
                              borderRadius: BorderRadius.all(Radius.circular(ekranGenisligi/16.44)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi/68.3),
            child: Container(
              width: ekranGenisligi,
              height: ekranYuksekligi/27.32,
              color: acikGri,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: ekranGenisligi/41.1),
                    child: Icon(Icons.lock, size: ekranGenisligi/20.55, color: Colors.grey,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ekranGenisligi/41.1),
                    child: Text(d.sonBasarisizGiris, style: TextStyle(fontSize: ekranGenisligi/27.4, fontFamily: "hesaplarim"),),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ekranGenisligi/3.9143),
                    child: Text("22/08/2022 23:25", style: TextStyle(fontFamily: "hesaplarim", fontSize: ekranGenisligi/27.4),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
