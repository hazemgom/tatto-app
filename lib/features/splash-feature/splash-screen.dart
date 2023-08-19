





import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tattoapp/features/splash-feature/splash-model.dart';

class SplashscreenWidget extends StatefulWidget {
  const SplashscreenWidget({Key? key}) : super(key: key);

  @override
  _SplashscreenWidgetState createState() => _SplashscreenWidgetState();
}

class _SplashscreenWidgetState extends State<SplashscreenWidget> {
  late SplashscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // _model = createModel(context, () => SplashscreenModel());
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
        backgroundColor: Colors.grey,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: 849,
            child: Stack(
              children: [
                PageView(
                  controller: _model.pageViewController ??=
                      PageController(initialPage: 0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Tattoo.png',
                          ).image,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  '“Ink Your Imagination”',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFFB7B8BA),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                child: Text(
                                  'Embrace the power of imagination and ink your wildest dreams with our revolutionary app',
                                  textAlign: TextAlign.center,
                                  style:
                                  TextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Tattoo_2.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Text(
                                '“Virtual Tattoos, Real Expressions”',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                              child: Text(
                                'Unleash your true self with virtual tattoos that mirror your authentic expressions and unique identity',
                                textAlign: TextAlign.center,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Tattoo_3.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 350, 10, 5),
                              child: Text(
                                '“Ink Your World, Your Way”',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Embark on a journey of self-expression, where you have the freedom to ink your world, your story, and your way',
                                textAlign: TextAlign.center,

                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 200, 0, 0),
                                child: Text(''),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
                    child: SmoothPageIndicator(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      count: 3,
                      axisDirection: Axis.horizontal,
                      onDotClicked: (i) async {
                        await _model.pageViewController!.animateToPage(
                          i,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      effect: ExpandingDotsEffect(
                        expansionFactor: 3,
                        spacing: 8,
                        radius: 16,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: Color(0xFFF7A4A8),
                        activeDotColor: Color(0xFFDE2C2C),
                        paintStyle: PaintingStyle.fill,
                      ),
                    ),
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
