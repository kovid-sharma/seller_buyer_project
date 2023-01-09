import 'package:flutter/material.dart';
class choose extends StatefulWidget {
  const choose({Key? key}) : super(key: key);

  @override
  State<choose> createState() => _chooseState();
}

class _chooseState extends State<choose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Left Brain'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      body:
         Column(
          children: [
            Expanded(
                flex: 8,
              child: Container(

              ),
            ),
            Expanded(
              flex: 2,
              child: Container(

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(
                      fontSize: 20,
                    )
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, 'seog');
                  },
                  child: Text(
                    'Continue as Seller',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                      backgroundColor: Colors.black,
                      textStyle: TextStyle(
                        fontSize: 20,
                      )
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, 'buog');
                  },
                  child: Text(
                    'Continue as Buyer',
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                ),
              ),
            Expanded(
                flex: 1,

                child: Container(


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

            )
          ],
        ),
    );
  }
}
