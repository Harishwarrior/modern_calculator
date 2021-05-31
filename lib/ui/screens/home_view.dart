import 'package:flutter/material.dart';
import 'package:modern_calculator/ui/widgets/custom_button.dart';
import 'package:modern_calculator/utils/media_query.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<bool> isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF22252E),
      child: SafeArea(
          child: Scaffold(
        backgroundColor: Color(0xFF22252E),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Container(
                              color: Color(0xFF292D36),
                              child: ToggleButtons(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/sun.png',
                                    color: Colors.grey,
                                  ),
                                  Image.asset(
                                    'assets/images/moon.png',
                                    color: Colors.white,
                                  ),
                                ],
                                onPressed: (int index) {
                                  setState(() {
                                    for (int i = 0;
                                        i < isSelected.length;
                                        i++) {
                                      isSelected[i] = i == index;
                                    }
                                  });
                                },
                                isSelected: isSelected,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('308',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30.0)),
                              Text(
                                ' x',
                                style: TextStyle(
                                    color: Colors.redAccent, fontSize: 30.0),
                              ),
                              Text(
                                ' 42',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30.0),
                              ),
                            ],
                          ),
                          Text(
                            '12,936',
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: displayHeight(context) * 0.60,
                decoration: BoxDecoration(
                    color: Color(0xFF292D36),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30))),
                width: displayWidth(context),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            text: 'AC',
                            color: Color(0xFF5CBFB1),
                          ),
                          CustomButton(
                            text: '±',
                            color: Color(0xFF5CBFB1),
                          ),
                          CustomButton(
                            text: '%',
                            color: Color(0xFF5CBFB1),
                          ),
                          CustomButton(
                            text: '÷',
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            text: '7',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '8',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '9',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: 'x',
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            text: '4',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '5',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '6',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '-',
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            text: '1',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '2',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '3',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '+',
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomButton(
                            text: 'C',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '0',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '.',
                            color: Colors.white,
                          ),
                          CustomButton(
                            text: '=',
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
