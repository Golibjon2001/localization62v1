import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'generated/locale_keys.welcome.dart';
class HomPage extends StatefulWidget {
  static const String id="hom_page";
  const HomPage({Key? key}) : super(key: key);

  @override
  _HomPageState createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Expanded(
              child:Center(
                child: const Text('welcome').tr(),
              ),
            ),
            Row(
              children: [
                Expanded(child:FlatButton(
                  onPressed: (){
                    context.setLocale(const Locale('en','US'));
                  },
                  child: Text("English"),
                  color: Colors.green,

                ),
                ),
                const SizedBox(width: 10,),
                Expanded(child:FlatButton(
                  onPressed: (){
                    context.setLocale( Locale('ru','RU'));
                  },
                  child: Text("Russian"),
                  color: Colors.red,
                ),
                ),
                const SizedBox(width: 10,),
                Expanded(child:FlatButton(
                  onPressed: (){
                    context.setLocale(const Locale('uz','UZ'));
                  },
                  child: Text("Uzbek"),
                  color: Colors.blue,

                ),
                ),
                const SizedBox(width: 10,),
                Expanded(child:FlatButton(
                  onPressed: (){
                    context.setLocale( Locale('fr','FR'));
                  },
                  child: Text("Franche"),
                  color: Colors.amber,

                ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
