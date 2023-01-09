import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class buylog extends StatefulWidget {
  const buylog({Key? key}) : super(key: key);

  @override
  State<buylog> createState() => _buylogState();
}

class _buylogState extends State<buylog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Left Brain'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 6,
            child:Container(

              child: Text('Buyer Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),

            ),
          ),
          Expanded(
            flex: 1,

            child:ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,

              ),
              onPressed: ()
              {
                    Navigator.pushNamed(context, 'buew');
              },
              icon: FaIcon(FontAwesomeIcons.google,color: Colors.orange,),
              label: Text('Continue with Google'),
            ),
          ),
          Expanded(
            flex: 6,
            child:Container(),
          ),
          Container(
            color: Colors.black,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,

              ),
              onPressed: ()
              {
                Navigator.pushNamed(context, 'details');
              },
              child: Text(

                'Project Details',
                textAlign: TextAlign.center,
                style: TextStyle(

                  fontSize: 25,

                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
