import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listview2Widget extends StatefulWidget {
  const Listview2Widget({Key key}) : super(key: key);

  @override
  _Listview2WidgetState createState() => _Listview2WidgetState();
}

class _Listview2WidgetState extends State<Listview2Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Image.network(
                'https://picsum.photos/seed/383/600',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Image.network(
                    'https://picsum.photos/seed/194/600',
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
