import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//
// final Uri _url = Uri.parse('https://flutter.dev');
// Future<void> _launchUrl() async {
//   if (!await launchUrl(_url)) {
//     throw 'Unable to link to prject github $_url';
//   }
// }
class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
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
            Container(

              child: Text(
                  'here details will be updated.',
              ),
            ),
            // Center(
            //   child: ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.black,
            //       ),
            //       onPressed: _launchUrl,
            //       child: Text('Show Project On Github')
            //
            //   ),
            // ),
          ],
        ),

    );

  }
}
