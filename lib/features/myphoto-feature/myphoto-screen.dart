
import 'package:flutter/material.dart';

import 'myphoto-model.dart';


class MyPhotoWidget extends StatefulWidget {
  const MyPhotoWidget({Key? key}) : super(key: key);

  @override
  _MyPhotoWidgetState createState() => _MyPhotoWidgetState();
}

class _MyPhotoWidgetState extends State<MyPhotoWidget> {
  late MyPhotoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => MyPhotoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'My Photos',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: Color(0xFF484949),
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
              child: Icon(
                Icons.format_list_bulleted_sharp,
                color: Color(0xFF484949),
                size: 25,
              ),
            ),
          ],
          centerTitle: true,
          elevation: 3,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
            child: GridView(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1567595747763-457af09b35f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHRhdHRvb3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1562962230-16e4623d36e6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHRhdHRvb3N8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1598371839696-5c5bb00bdc28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGF0dG9vc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://media.istockphoto.com/id/182877210/photo/tattoo-artist-at-work.webp?s=170667a&w=0&k=20&c=K-9y9qukRM-anCkVTy4cThIwGCKg3GuCwBDwJBV_q2w=',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://media.istockphoto.com/id/488769916/photo/beautiful-pattern-on-a-naked-body-of-the-girl.webp?s=170667a&w=0&k=20&c=wxJvZIgh5bf-3PeznvMQetYztd_LnYd3uezgKZ_LQuA=',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://media.istockphoto.com/id/1360676798/photo/female-tattoo-artist-working.webp?s=170667a&w=0&k=20&c=6aVxhVKwHVJvAjY1JcDFVWjO4_-6iV2cLljvLO3GRuQ=',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1607382007937-fe3a9d196b7a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://media.istockphoto.com/id/177717203/photo/girl-with-the-dragon-tattoo.jpg?s=612x612&w=0&k=20&c=vI1bpH66vFDuFsKkkabLYI0N38w4TXPsskeDpyXJyTE=',
                    width: 300,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
