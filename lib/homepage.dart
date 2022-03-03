
import 'package:flutter/material.dart';


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
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 230,
              decoration: const BoxDecoration(
                boxShadow: [BoxShadow(spreadRadius: 4,blurRadius: 15,color: Color(0x2E0C9869),offset: Offset(2,20))],
                color: Color(0xFF0C9869),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),

                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Hi Sample !',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/469-600x600.jpg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        15, 0, 0, 0),
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        hintText: 'Search',
                                        hintStyle:
                                        TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xC30C9869),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style:
                                      const TextStyle(
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
                ],
              ),
            ),

            //Recommended,More Button
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 15),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF5F5F5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(22, 20, 0, 0),
                              child: Text(
                                'Recommended',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 5),
                              child: Container(
                                width:110,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(25),
                                  color: Color(0xFF0C9869),
                                ),
                                child: FlatButton(
                                  onPressed:() {} ,
                                  child: const Text(
                                    'More',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                          width: double.infinity,
                          height: 270,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF5F5F5),
                          ),
                          child:// Generated code for this ListView Widget...
                          // Generated code for this ListView Widget...
                          ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 25, 40),
                                child: Container(
                                  width: 300,
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
                                          borderRadius: BorderRadius.only(
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
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 8, 0, 0),
                                            child: Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(3, 5, 0, 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                            child: Container(
                                              width: 130,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(1, 5, 0, 0),
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
                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 25, 40),
                                child: Container(
                                  width: 300,
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
                                            'assets/images/room-10.jpeg',
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
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 8, 0, 0),
                                            child: Container(
                                              width: 150,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(3, 5, 0, 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                            child: Container(
                                              width: 130,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEEEEEE),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: const [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(1, 5, 0, 0),
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
                          )


                      ),
                    ),



                    //Special,More Button
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 15),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(22, 20, 0, 0),
                              child: Text(
                                'Special',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 10, 5),
                              child: Container(
                                width:110,
                                decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(25),
                                  color: Color(0xFF0C9869),
                                ),
                                child: FlatButton(
                                  onPressed:() {} ,
                                  child: const Text(
                                    'More',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      child: Container(
                        width: double.infinity,
                        height: 230,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(15, 0, 18, 5),

                              //2nd row 1st Card
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                // color: Color(0xFFF5F5F5),
                                // elevation: 8,
                                // shadowColor: Color(0x5733C791),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, -0.9),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/room-10.jpeg',
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.3,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 18, 5),

                              //2nd row 2nd Card
                              child: Card(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                // color: Color(0xFFF5F5F5),
                                // elevation: 8,
                                // shadowColor: Color(0x5733C791),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0, -0.9),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/sea-164989.jpg',
                                      width: MediaQuery.of(context).size.width *
                                          0.85,
                                      height:
                                      MediaQuery.of(context).size.height *
                                          0.3,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFFF5F5F5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              height: 180,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Support',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Cancellations',
                                      // style: FlutterFlowTheme.bodyText1,
                                    ),
                                    Text(
                                      'Whats the refund policy?',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF969696),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Payments',
                                      // style: FlutterFlowTheme.bodyText1,
                                    ),
                                    Text(
                                      'How can i make the payments?',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF969696),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 160,
                              height: 180,
                              decoration: BoxDecoration(
                                color: Color(0xFFF5F5F5),
                              ),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Hosting',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Renting',
                                      // style: FlutterFlowTheme.bodyText1,
                                    ),
                                    Text(
                                      'How can i rent my home',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF969696),
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      'Guide',
                                      // style: FlutterFlowTheme.bodyText1,
                                    ),
                                    Text(
                                      'View the guide on hosting',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF969696),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
