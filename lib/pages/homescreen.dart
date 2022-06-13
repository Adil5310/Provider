import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/providers/Homepageprovider.dart';
class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Learning Provider"),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ChangeNotifierProvider<Homepageprovider>(
            create: (context)=> Homepageprovider(),
            child: Consumer<Homepageprovider>(
              builder: (context, provider, child ){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(provider.eliginilitymessage.toString(), style: TextStyle(
                      color: (provider.eligible == true) ? Colors.green : Colors.red,
                    ),),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter your age",
                      ),
                      onChanged: (val){
                        provider.checkEliginility(int.parse(val));
                      },
                    ),
                  ],
                );
              }
            )
          )
        ),
      ),
    );
  }
}
