import 'package:flutter/material.dart';
import 'package:todo/src/widgets/backgroundImage.dart';
import 'package:todo/src/screens/signup_screen.dart';

class PrivacyPolicies extends StatelessWidget {
  const PrivacyPolicies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          BackgroundImage(),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) - 170),
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: privacyPolicies(),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              mini: true,
              backgroundColor: Colors.cyan.shade600,
              child: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SignUpScreen();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

Column _privacyPoliciesHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Privacy Policies",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      Divider(
        thickness: 1.2,
        color: Colors.grey.shade500,
      ),
    ],
  );
}

Column privacyPolicies() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      _privacyPoliciesHeader(),
      SizedBox(
        height: 28,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdaasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdaasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "aasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdasasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdaasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdaasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "aasdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
      Text(
          "asdassdadsadsadasdsad asdsa asdasd asda dasd asdasd asdas asdasd sadasd sdasdas dsad asdasd."),
      SizedBox(
        height: 12,
      ),
    ],
  );
}
