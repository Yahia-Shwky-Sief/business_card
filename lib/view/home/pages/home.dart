import 'package:business_card/main.dart';
import 'package:business_card/view/core/localization/language.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              dropdownColor: Colors.white,
              icon: const Icon(
                Icons.language_outlined,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              onChanged: (Language? language) async {
                if (language != null) {
                  setState(() {
                    userlun!.put('lunguage', language.languageCode);
                  });
                }
              },
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                      value: e,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            e.flag,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            e.name,
                            style: const TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.indigoAccent,
                ),
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/1011b387-33eb-4707-a9bf-31a1e9abb9fa.jpg',
                        ),
                        radius: 80,
                      ),
                      const SizedBox(height: 20),
                      Text(
                          userlun!.get('lunguage') == 'en'
                              ? 'YAHIA SIEF'
                              : 'يحيى سيف',
                          style: const TextStyle(
                              height: 0.8,
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: 'Cairob')),
                      Text(
                          userlun!.get('lunguage') == 'en'
                              ? 'Flutter Developer'
                              : 'مطور تطبيقات فلاتر',
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Cairos')),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  textDirection: userlun!.get('lunguage') == 'en'
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.phone,
                      color: Colors.indigoAccent,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: userlun!.get('lunguage') == 'en'
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                            userlun!.get('lunguage') == 'en'
                                ? 'Phone'
                                : 'رقم الموبايل',
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.indigoAccent,
                                fontFamily: 'Cairos')),
                        const Text('01065049397',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Cairo')),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  textDirection: userlun!.get('lunguage') == 'en'
                      ? TextDirection.ltr
                      : TextDirection.rtl,
                  children: [
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.phone,
                      color: Colors.indigoAccent,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: userlun!.get('lunguage') == 'en'
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Text(
                            userlun!.get('lunguage') == 'en'
                                ? 'E-Mail'
                                : 'البريد الألكتروني',
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.indigoAccent,
                                fontFamily: 'Cairos')),
                        const Text('xyahiaxsiefx@gmail.com',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Cairo')),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ))),
                      child: const SizedBox(
                        child: FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 80,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(Icons.close))),
                                    const SizedBox(height: 10),
                                    const SizedBox(
                                      width: 300,
                                      height: 300,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/qrcode_28915368_.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const SizedBox(
                        width: 100,
                        height: 80,
                        child: Icon(
                          Icons.facebook,
                          size: 80,
                        ),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return SizedBox(
                              height: 400,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(Icons.close))),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(
                                      width: 300,
                                      height: 300,
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/qrcode_29032620_.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
