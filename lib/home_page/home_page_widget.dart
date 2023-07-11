import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(13.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).borderIcons,
                        width: 2.0,
                      ),
                    ),
                    child: Icon(
                      FFIcons.kmenu,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  ),
                  Icon(
                    FFIcons.knike,
                    color: Color(0xFFEEEEF0),
                    size: 50.0,
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(13.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).borderIcons,
                        width: 2.0,
                      ),
                    ),
                    child: Icon(
                      FFIcons.kbag,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 22.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 0.0, 0.0),
              child: SelectionArea(
                  child: Text(
                'New Collection',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
              )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: SelectionArea(
                  child: Text(
                'Nike original 2022',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFFE05946),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
              )),
            ),
            Builder(
              builder: (context) {
                final itemsStock = getJsonField(
                  FFAppState().nikeStock,
                  r'''$.items[?(@.newCollection)]''',
                ).toList();
                return Container(
                  width: double.infinity,
                  height: 220.0,
                  child: Stack(
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                        child: PageView.builder(
                          controller: _model.pageViewController ??=
                              PageController(
                                  initialPage: min(0, itemsStock.length - 1)),
                          scrollDirection: Axis.horizontal,
                          itemCount: itemsStock.length,
                          itemBuilder: (context, itemsStockIndex) {
                            final itemsStockItem = itemsStock[itemsStockIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 200.0,
                                child: Stack(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 20.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 150.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF2F7FA),
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          shape: BoxShape.rectangle,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 2.0, 2.0, 2.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    120.0,
                                                                    0.0),
                                                        child: SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            itemsStockItem,
                                                            r'''$..name''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        )),
                                                      ),
                                                      SelectionArea(
                                                          child: Text(
                                                        'Men´s shoes',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              color: Color(
                                                                  0x80101213),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      )),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .pushNamed(
                                                                  'DetailsPage',
                                                                  queryParameters:
                                                                      {
                                                                    'item':
                                                                        serializeParam(
                                                                      itemsStockItem,
                                                                      ParamType
                                                                          .JSON,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              text: 'Shop now',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 110.0,
                                                                height: 40.0,
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: Colors
                                                                    .black,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                elevation: 2.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 0.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
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
                                    ),
                                    Hero(
                                      tag: getJsonField(
                                        itemsStockItem,
                                        r'''$..image''',
                                      ),
                                      transitionOnUserGestures: true,
                                      child: Image.network(
                                        getJsonField(
                                          itemsStockItem,
                                          r'''$..image''',
                                        ),
                                        width: 200.0,
                                        height: 200.0,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 25.0),
                          child: smooth_page_indicator.SmoothPageIndicator(
                            controller: _model.pageViewController ??=
                                PageController(
                                    initialPage: min(0, itemsStock.length - 1)),
                            count: itemsStock.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) async {
                              await _model.pageViewController!.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: smooth_page_indicator.SlideEffect(
                              spacing: 8.0,
                              radius: 16.0,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              dotColor: Color(0xFFE1E1E1),
                              activeDotColor: Color(0xFFE05946),
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().isLifestyleTab = true;
                      });
                      FFAppState().update(() {
                        FFAppState().isRunningTab = false;
                      });
                      FFAppState().update(() {
                        FFAppState().isTennisTab = false;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectionArea(
                            child: Text(
                          'Lifestyle',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().isLifestyleTab
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).inativeTab,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                        )),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SelectionArea(
                                child: Text(
                              '2 items',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FFAppState().isLifestyleTab
                                        ? FlutterFlowTheme.of(context).activeTab
                                        : FlutterFlowTheme.of(context)
                                            .inativeTab,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().isRunningTab = true;
                      });
                      FFAppState().update(() {
                        FFAppState().isLifestyleTab = false;
                      });
                      FFAppState().update(() {
                        FFAppState().isTennisTab = false;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectionArea(
                            child: Text(
                          'Running',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: valueOrDefault<Color>(
                                  FFAppState().isRunningTab
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context).inativeTab,
                                  FlutterFlowTheme.of(context).inativeTab,
                                ),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                        )),
                        SelectionArea(
                            child: Text(
                          '2  items',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().isRunningTab
                                    ? FlutterFlowTheme.of(context).activeTab
                                    : FlutterFlowTheme.of(context).inativeTab,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().isTennisTab = true;
                      });
                      FFAppState().update(() {
                        FFAppState().isLifestyleTab = false;
                      });
                      FFAppState().update(() {
                        FFAppState().isRunningTab = false;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectionArea(
                            child: Text(
                          'Tennis',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().isTennisTab
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context).inativeTab,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                        )),
                        SelectionArea(
                            child: Text(
                          '2 item',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FFAppState().isTennisTab
                                    ? FlutterFlowTheme.of(context).activeTab
                                    : FlutterFlowTheme.of(context).inativeTab,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                              ),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().isLifestyleTab)
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final itemsCategoryLifestyle = getJsonField(
                        FFAppState().nikeStock,
                        r'''$.items[?(@.category == 'Lifestyle')]''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: itemsCategoryLifestyle.length,
                        itemBuilder: (context, itemsCategoryLifestyleIndex) {
                          final itemsCategoryLifestyleItem =
                              itemsCategoryLifestyle[
                                  itemsCategoryLifestyleIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Container(
                              width: 160.0,
                              height: 380.0,
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Container(
                                    width: 170.0,
                                    height: 400.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F7FA),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 20.0, 40.0, 0.0),
                                                child: SelectionArea(
                                                    child: AutoSizeText(
                                                  getJsonField(
                                                    itemsCategoryLifestyleItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.black,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final colorsItemLifestyle =
                                                      getJsonField(
                                                    itemsCategoryLifestyleItem,
                                                    r'''$.colors''',
                                                  ).toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        colorsItemLifestyle
                                                            .length,
                                                        (colorsItemLifestyleIndex) {
                                                      final colorsItemLifestyleItem =
                                                          colorsItemLifestyle[
                                                              colorsItemLifestyleIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          width: 10.0,
                                                          height: 10.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                colorFromCssString(
                                                              colorsItemLifestyleItem
                                                                  .toString(),
                                                              defaultColor:
                                                                  Colors.black,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3.0),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            '\$',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          )),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            itemsCategoryLifestyleItem,
                                                            r'''$.price''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 24.0,
                                                              ),
                                                        )),
                                                      ],
                                                    ),
                                                    SelectionArea(
                                                        child: Text(
                                                      'Price',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x65101213),
                                                                fontSize: 10.0,
                                                              ),
                                                    )),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x4D000000),
                                                      borderRadius: 15.0,
                                                      borderWidth: 2.0,
                                                      buttonSize: 50.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        FFIcons.karrowRight,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 25.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'DetailsPage',
                                                          queryParameters: {
                                                            'item':
                                                                serializeParam(
                                                              itemsCategoryLifestyleItem,
                                                              ParamType.JSON,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
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
                                  Hero(
                                    tag: getJsonField(
                                      itemsCategoryLifestyleItem,
                                      r'''$.image''',
                                    ),
                                    transitionOnUserGestures: true,
                                    child: Image.network(
                                      getJsonField(
                                        itemsCategoryLifestyleItem,
                                        r'''$.image''',
                                      ),
                                      width: 140.0,
                                      height: 140.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            if (FFAppState().isRunningTab)
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final itemsCategoryRunning = getJsonField(
                        FFAppState().nikeStock,
                        r'''$.items[?(@.category == 'Running')]''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: itemsCategoryRunning.length,
                        itemBuilder: (context, itemsCategoryRunningIndex) {
                          final itemsCategoryRunningItem =
                              itemsCategoryRunning[itemsCategoryRunningIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Container(
                              width: 160.0,
                              height: 380.0,
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Container(
                                    width: 170.0,
                                    height: 400.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F7FA),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 20.0, 40.0, 0.0),
                                                child: SelectionArea(
                                                    child: AutoSizeText(
                                                  getJsonField(
                                                    itemsCategoryRunningItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final colorsItemLifestyle =
                                                      getJsonField(
                                                    itemsCategoryRunningItem,
                                                    r'''$.colors''',
                                                  ).toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        colorsItemLifestyle
                                                            .length,
                                                        (colorsItemLifestyleIndex) {
                                                      final colorsItemLifestyleItem =
                                                          colorsItemLifestyle[
                                                              colorsItemLifestyleIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          width: 10.0,
                                                          height: 10.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                colorFromCssString(
                                                              colorsItemLifestyleItem
                                                                  .toString(),
                                                              defaultColor:
                                                                  Colors.black,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3.0),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            '\$',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          )),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            itemsCategoryRunningItem,
                                                            r'''$.price''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 24.0,
                                                              ),
                                                        )),
                                                      ],
                                                    ),
                                                    SelectionArea(
                                                        child: Text(
                                                      'Price',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x65101213),
                                                                fontSize: 10.0,
                                                              ),
                                                    )),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x4D000000),
                                                      borderRadius: 15.0,
                                                      borderWidth: 2.0,
                                                      buttonSize: 50.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        FFIcons.karrowRight,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 25.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'DetailsPage',
                                                          queryParameters: {
                                                            'item':
                                                                serializeParam(
                                                              itemsCategoryRunningItem,
                                                              ParamType.JSON,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
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
                                  Hero(
                                    tag: getJsonField(
                                      itemsCategoryRunningItem,
                                      r'''$.image''',
                                    ),
                                    transitionOnUserGestures: true,
                                    child: Image.network(
                                      getJsonField(
                                        itemsCategoryRunningItem,
                                        r'''$.image''',
                                      ),
                                      width: 140.0,
                                      height: 140.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            if (FFAppState().isTennisTab)
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final itemsCategoryTennis = getJsonField(
                        FFAppState().nikeStock,
                        r'''$.items[?(@.category == 'Tennis')]''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: itemsCategoryTennis.length,
                        itemBuilder: (context, itemsCategoryTennisIndex) {
                          final itemsCategoryTennisItem =
                              itemsCategoryTennis[itemsCategoryTennisIndex];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 20.0, 0.0),
                            child: Container(
                              width: 160.0,
                              height: 380.0,
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                children: [
                                  Container(
                                    width: 170.0,
                                    height: 400.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F7FA),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 20.0, 40.0, 0.0),
                                                child: SelectionArea(
                                                    child: AutoSizeText(
                                                  getJsonField(
                                                    itemsCategoryTennisItem,
                                                    r'''$.name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                )),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 10.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Builder(
                                                builder: (context) {
                                                  final colorsItemLifestyle =
                                                      getJsonField(
                                                    itemsCategoryTennisItem,
                                                    r'''$.colors''',
                                                  ).toList();
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: List.generate(
                                                        colorsItemLifestyle
                                                            .length,
                                                        (colorsItemLifestyleIndex) {
                                                      final colorsItemLifestyleItem =
                                                          colorsItemLifestyle[
                                                              colorsItemLifestyleIndex];
                                                      return Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Container(
                                                          width: 10.0,
                                                          height: 10.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                colorFromCssString(
                                                              colorsItemLifestyleItem
                                                                  .toString(),
                                                              defaultColor:
                                                                  Colors.black,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        3.0),
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 20.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      4.0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            '\$',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          )),
                                                        ),
                                                        SelectionArea(
                                                            child: Text(
                                                          getJsonField(
                                                            itemsCategoryTennisItem,
                                                            r'''$.price''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 24.0,
                                                              ),
                                                        )),
                                                      ],
                                                    ),
                                                    SelectionArea(
                                                        child: Text(
                                                      'Price',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x65101213),
                                                                fontSize: 10.0,
                                                              ),
                                                    )),
                                                  ],
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Color(0x4D000000),
                                                      borderRadius: 15.0,
                                                      borderWidth: 2.0,
                                                      buttonSize: 50.0,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      icon: Icon(
                                                        FFIcons.karrowRight,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 25.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.pushNamed(
                                                          'DetailsPage',
                                                          queryParameters: {
                                                            'item':
                                                                serializeParam(
                                                              itemsCategoryTennisItem,
                                                              ParamType.JSON,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
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
                                  Hero(
                                    tag: getJsonField(
                                      itemsCategoryTennisItem,
                                      r'''$.image''',
                                    ),
                                    transitionOnUserGestures: true,
                                    child: Image.network(
                                      getJsonField(
                                        itemsCategoryTennisItem,
                                        r'''$.image''',
                                      ),
                                      width: 140.0,
                                      height: 140.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 40.0, 10.0, 50.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0.0,
                      ),
                    ),
                    child: Icon(
                      FFIcons.khome,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryText,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 16.0,
                          color: Color(0x41000000),
                          offset: Offset(0.0, 10.0),
                        )
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: Icon(
                      FFIcons.ksearch,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      size: 24.0,
                    ),
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 0.0,
                      ),
                    ),
                    child: Icon(
                      FFIcons.kheart,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
