import 'package:bmicalculator/homepage/homepagecontainers.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmistatus;
  final Color staustextcolor;
  final String bmivalue;
  final String suggestion;

  const ResultPage(
      {@required this.bmistatus,
      @required this.staustextcolor,
      @required this.bmivalue,
      @required this.suggestion});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              child: Text("Your Result",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ),
          ),
          Expanded(
              flex: 6,
              child: Mycontainer(
                color: Color(0xFB1F233D),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      bmistatus.toUpperCase(),
                      style: TextStyle(
                          fontSize: 20,
                          color: staustextcolor,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmivalue,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
                    ),
                    Column(
                      children: [
                        Text(
                          'Normal BMI Range :',
                          maxLines: 2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white54),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '18.5 - 24.9 kg/m2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        suggestion,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
      bottomNavigationBar: BottomButton(
        buttontext: "Recalculate",
        onpressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
