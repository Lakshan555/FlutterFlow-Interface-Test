
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MaterialApp(
  home: HomePageWidget(),
  debugShowCheckedModeBanner: false,
));



class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late DateTime datePicked;
  late TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Material(
              color: Colors.transparent,
              elevation: 5,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 240,
                decoration: const BoxDecoration(
                  color: Color(0xFF0C9869),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.menu,
                      ),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {},
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: TextFormField(
                                        controller: textController,
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                          hintText: 'Search',
                                          hintStyle: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF969696),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                            BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF969696),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: const Icon(
                                      Icons.search,
                                    ),
                                    iconSize: 30,
                                    color: Color(0xC30C9869),
                                    splashColor: Colors.purple,
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width:116,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(25),
                              color: Color(0xFFFDFDFD),

                            ),
                            child: FlatButton(
                              onPressed: () async {
                                await DatePicker.showDatePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked = date);
                                  },


                                );
                              },
                              child:  Row( // Replace with a Row for horizontal icon + text
                                children: const <Widget>[
                                  Icon(
                                    Icons.calendar_today_sharp,
                                    color: Color(0xFF969696),
                                  ),
                                  Text(" Date",
                                    style: TextStyle(
                                      color: Color(0xFF969696),
                                    )
                                    ,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xFF969696),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width:116,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(25),
                              color: Color(0xFFFDFDFD),

                            ),
                            child: FlatButton(
                              onPressed: () async {
                                await DatePicker.showTimePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked = date);
                                  },

                                );
                              },
                              child:  Row( // Replace with a Row for horizontal icon + text
                                children: const <Widget>[
                                  Icon(
                                    Icons.more_time_rounded,
                                    color: Color(0xFF969696),
                                  ),
                                  Text(" Time",
                                    style: TextStyle(
                                      color: Color(0xFF969696),
                                    )
                                    ,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xFF0C9869),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width:116,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(25),
                              color: Color(0xFFFDFDFD),

                            ),
                            child: FlatButton(
                              onPressed:() {} ,
                              child:  Row( // Replace with a Row for horizontal icon + text
                                children: const <Widget>[
                                  Icon(
                                    Icons.attach_money_outlined,
                                    color: Color(0xFF969696),
                                  ),
                                  Text(" Price",
                                    style: TextStyle(
                                      color: Color(0xFF969696),
                                    )
                                    ,
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down,
                                    color: Color(0xFF0C9869),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(25, 15, 25, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width:140,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(25),

                            ),
                            child: OutlineButton(
                              onPressed:() {} ,
                              borderSide: BorderSide(color: Colors.white),
                              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20.0)),
                              // style: ButtonStyle(
                              //   shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              // ),
                              child: const Text(
                                'Search',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 15),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20,
                              color: Color(0x2E0C9869),
                              offset: Offset(2, 20),
                              spreadRadius: 4,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.2, -0.4),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/sea-164989.jpg',
                                  width: double.infinity,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          3, 5, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'SRI LANKA',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            '2Kms away',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              color: Color(0xB20C9869),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      66, 0, 0, 0),
                                  child: Container(
                                    width: 130,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 5, 0, 0),
                                          child: Text(
                                            'Rs.4000 | 24hrs',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              color: Color(0xFF0C9869),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 15, 10, 40),
                      child: Container(
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 20,
                              color: Color(0x2E0C9869),
                              offset: Offset(2, 20),
                              spreadRadius: 4,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.2, -0.4),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0),
                                  bottomRight: Radius.circular(0),
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/view-hotel-by-secret.jpg',
                                  width: double.infinity,
                                  height: 170,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Container(
                                    width: 150,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          3, 5, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'BALI',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            '5Kms away',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              color: Color(0xB20C9869),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      66, 0, 0, 0),
                                  child: Container(
                                    width: 130,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFEEEEEE),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              10, 5, 0, 0),
                                          child: Text(
                                            'Rs.4000 | 24hrs',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              color: Color(0xFF0C9869),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
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
              ),
            ),
            Material(
              color: Colors.transparent,
              elevation: 2,
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  boxShadow: [BoxShadow(blurRadius: 20,color: Color(0x5733C791),offset: Offset(0,-15))],

                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:  [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child:  IconButton(
                                    icon: const Icon(
                                      Icons.search,
                                    ),
                                    iconSize: 30,
                                    color: Color(0xFF0C9869),
                                    splashColor: Colors.blueGrey,
                                    onPressed: () {},
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Text(
                                    'Rent',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0C9869),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.move_to_inbox_outlined,
                                    ),
                                    iconSize: 30,
                                    color: Color(0xFF0C9869),
                                    splashColor: Colors.blueGrey,
                                    onPressed: () {},
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Text(
                                    'Inbox',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0C9869),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:  [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.directions_car,
                                    ),
                                    iconSize: 30,
                                    color: Color(0xFF0C9869),
                                    splashColor: Colors.blueGrey,
                                    onPressed: () {},
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Homes',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0C9869),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding:
                            EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:  [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.person_outline_outlined,
                                    ),
                                    iconSize: 30,
                                    color: Color(0xFF0C9869),
                                    splashColor: Colors.blueGrey,
                                    onPressed: () {},
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0C9869),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
