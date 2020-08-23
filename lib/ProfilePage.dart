import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
//          color: Colors.white,
          child: new ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  new Container(
                    height: 400.0,
//                    color: Colors.white,
                   decoration: new BoxDecoration(
//                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                        image: new ExactAssetImage(
                                            'assets/header.jpeg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                    child: new Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, top: 10.0),
                            child: new Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Container(
                                    color: Colors.transparent,
                                  child: Image(
                                    color: Colors.transparent,
                                    image: AssetImage(
                                      'assets/logo.png',
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                  height: 95,
                                  width: 150,
                                )
                                ),
//                                new ImageIcon(
//                                  AssetImage("assets/saras.jpeg"),
////                                  size: 22.0,
//                                ),
//                                Padding(
//                                  padding: EdgeInsets.only(left: 25.0),
//                                  child: new Text('PROFILE',
//                                      style: TextStyle(
//                                          fontWeight: FontWeight.bold,
//                                          fontSize: 20.0,
//                                          fontFamily: 'sans-serif-light',
//                                          color: Colors.black)),
//                                )
                              ],
                            )),
                        Padding(
                          padding: EdgeInsets.only(top: 50.0,left: 20.0,right: 20.0),
                          child: new Stack(fit: StackFit.loose, children: <Widget>[
                            new Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
//                                Padding(
//                                  padding: EdgeInsets.only(left: 25.0),
//                                  child:
                                  new Expanded(child:
                                   new Text('Together we build a safer society',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30.0,
                                          fontFamily: 'sans-serif-light',
                                          color: Colors.white)
                                       , maxLines: 2,
                                       overflow: TextOverflow.ellipsis
                                   ),

                                )
//                                )
//                                new Container(
//                                    width: 140.0,
//                                    height: 140.0,
////                                    decoration: new BoxDecoration(
////                                      shape: BoxShape.circle,
////                                      image: new DecorationImage(
////                                        image: new ExactAssetImage(
////                                            'assets/images/as.png'),
////                                        fit: BoxFit.cover,
////                                      ),
////                                    )
//                                ),
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 90.0, right: 20.0,left: 10.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    new Expanded(child:
                                    new Text('We can achieve that with your help. '
                                        'Take action today and report an abuse.',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            fontFamily: 'sans-serif-light',
                                            color: Colors.white)
                                        , maxLines: 3,
                                        overflow: TextOverflow.ellipsis
                                    ),

                                    )

//                                    new CircleAvatar(
//                                      backgroundColor: Colors.red,
//                                      radius: 25.0,
//                                      child: new Icon(
//                                        Icons.camera_alt,
//                                        color: Colors.white,
//                                      ),
//                                    )
                                  ],
                                )),
                          ]),
                        )
                      ],
                    ),
                  ),
                  new Container(
                    color: Color(0xffFFFFFF),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[

                                  new Container(
                                    width: 140.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0) //                 <--- border radius here
                                      ),
                                    ),
                                    child: new Row(
                                      children: <Widget>[

                                        new Icon( Icons.public,
                                          color: Colors.grey,
                                          size: 25.0,),

                                        Padding(
                                           padding:EdgeInsets.all(5.0),
                                        child:
                                        new Text("Default Language",style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10.0,
                                            fontFamily: 'sans-serif-light',
                                            color: Colors.grey)),
                               ),

                                        new Icon( Icons.expand_more,
                                          color: Colors.blue,
                                          size: 25.0,),
                                      ],
                                    ),
                                  )
//                                  new Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    mainAxisSize: MainAxisSize.min,
//                                    children: <Widget>[
//                                      new Text(
//                                        'Parsonal Information',
//                                        style: TextStyle(
//                                            fontSize: 18.0,
//                                            fontWeight: FontWeight.bold),
//                                      ),
//                                    ],
//                                  ),
//                                  new Column(
//                                    mainAxisAlignment: MainAxisAlignment.end,
//                                    mainAxisSize: MainAxisSize.min,
//                                    children: <Widget>[
//                                      _status ? _getEditIcon() : new Container(),
//                                    ],
//                                  )
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child:Container(
//                              new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                children: <Widget>[
//                                  new Column(
////                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: <Widget>[
                                   child:Center(
                                     child: new Text(
                                        'I am reporting an abuse as:',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                   )
//                                    ],
//                                  ),
//                                ],
                              )
                  ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child:new Container(
                                      width: double.infinity,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0) //                 <--- border radius here
                                      ),
                                    ),
                                   child: Center(
                                     child: new Text("Witness" ,textAlign: TextAlign.center,
                                     style: TextStyle(
                                         fontSize: 16.0,
                                         color: Colors.red,
                                         fontWeight: FontWeight.bold),)
//
                                   )
                                    ),
                                  ),
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child:new Container(
                                        width: double.infinity,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.red),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5.0) //                 <--- border radius here
                                          ),
                                        ),
                                        child: Center(
                                            child: new Text("Victim" ,textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),)
//
                                        )
                                    ),
                                  ),
                                ],
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 25.0),
                              child:Container(
//                              new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                children: <Widget>[
//                                  new Column(
////                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: <Widget>[
                                  child:Center(
                                    child: new Text(
                                      'Please fill in the form:',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  )
//                                    ],
//                                  ),
//                                ],
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child:Container(height: 40.0,
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(

                                      decoration: const InputDecoration(
                                          hintText: "Enter Name",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                          borderSide: BorderSide(color: Colors.grey, ),
                                        ),),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              ))),
//                          Padding(
//                              padding: EdgeInsets.only(
//                                  left: 25.0, right: 25.0, top: 25.0),
//                              child: new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                children: <Widget>[
//                                  new Column(
//                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    mainAxisSize: MainAxisSize.min,
//                                    children: <Widget>[
//                                      new Text(
//                                        'Mobile',
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 20.0),
                              child:Container( height: 45.0,
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Container(
                                    width: 110.0,
                                    height: 50.0,
//                                    color: Colors.grey,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0) //                 <--- border radius here
                                      ),
                                    ),
                                    child: new Row(
                                      children: <Widget>[

                                        new Icon( Icons.public,
                                          color: Colors.grey,
                                          size: 25.0,),

                                        Padding(
                                          padding:EdgeInsets.all(5.0),
                                          child:
                                          new Text(" +91",style: TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 10.0,
                                              fontFamily: 'sans-serif-light',
                                              color: Colors.grey)),
                                        ),

//                                        new Icon( Icons.expand_more,
//                                          color: Colors.blue,
//                                          size: 25.0,),
                                      ],
                                    ),
                                  ),

                                  new Flexible(
                                    child: new TextField(
                                      decoration: const InputDecoration(
                                          hintText: "Enter Mobile Number",
                                        border:  OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                          borderSide: BorderSide(color: Colors.grey, width: 2),
                                        ),
                                      ),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              ))
                          ),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 20.0),
                            child:Container(height: 40.0,
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Flexible(
                                    child: new TextField(

                                      decoration:  new InputDecoration(
                                        hintText: "Enter Email",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                          borderSide: BorderSide(color: Colors.grey, ),
                                        ),),
                                      enabled: !_status,
                                    ),
                                  ),
                                ],
                              ))),
//                          Padding(
//                              padding: EdgeInsets.only(
//                                  left: 25.0, right: 25.0, top: 25.0),
//                              child: new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                children: <Widget>[
//                                  Expanded(
//                                    child: Container(
//                                      child: new Text(
//                                        'Pin Code',
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold),
//                                      ),
//                                    ),
//                                    flex: 2,
//                                  ),
//                                  Expanded(
//                                    child: Container(
//                                      child: new Text(
//                                        'State',
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontWeight: FontWeight.bold),
//                                      ),
//                                    ),
//                                    flex: 2,
//                                  ),
//                                ],
//                              )),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child: new Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[


                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15.0),
                                    child: Container(height: 50.0,
                                      child: new TextField(
                                        decoration: const InputDecoration(
                                            hintText: "Choose an offense",
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                            borderSide: BorderSide(color: Colors.grey, width: 2),
                                          ),
                                        ),
//                                        enabled: !_status,
                                      )),
                                    ),
                                    flex: 2,
                                  ),
//                                  Flexible(
//                                    child: new TextField(
//                                      decoration: const InputDecoration(
//                                          hintText: "Enter State",
//                                        enabledBorder: OutlineInputBorder(
//                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                          borderSide: BorderSide(color: Colors.red, width: 2),
//                                        ),
//                                      ),
////                                      enabled: !_status,
//                                    ),
//                                    flex: 2,
//                                  ),
                                ],
                              )
                          ),

                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 20.0),
                              child:
//                              new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                mainAxisAlignment: MainAxisAlignment.start,
//                                children: <Widget>[


//                                  Flexible(
//                                    child: Padding(
//                                      padding: EdgeInsets.only(top: 15.0),
//

//                                      child:
                                      Container(height: 150.0,
                                          child: new TextField(
                                            decoration: const InputDecoration(
                                              hintText: "Description of the offense",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                                borderSide: BorderSide(color: Colors.grey, width: 2),
                                              ),
                                            ),
//                                        enabled: !_status,
                                          )),
//                                    ),
//                                    flex: 2,
//                                  ),
//                                  Flexible(
//                                    child: new TextField(
//                                      decoration: const InputDecoration(
//                                          hintText: "Enter State",
//                                        enabledBorder: OutlineInputBorder(
//                                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
//                                          borderSide: BorderSide(color: Colors.red, width: 2),
//                                        ),
//                                      ),
////                                      enabled: !_status,
//                                    ),
//                                    flex: 2,
//                                  ),
//                                ],
//                              )
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0),
                              child:Container(
//                              new Row(
//                                mainAxisSize: MainAxisSize.max,
//                                children: <Widget>[
//                                  new Column(
////                                    mainAxisAlignment: MainAxisAlignment.start,
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: <Widget>[
                                  child:Center(
                                    child: new Text(
                                      'Location of the offense',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
//                                    ],
//                                  ),
//                                ],
                              )
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child:Container(height: 40.0,
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextField(

                                          decoration: const InputDecoration(
                                            hintText: "State",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                              borderSide: BorderSide(color: Colors.grey, ),
                                            ),),
//                                      enabled: !_status,
                                        ),
                                      ),
                                    ],
                                  ))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 10.0),
                              child:Container(height: 40.0,
                                  child: new Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      new Flexible(
                                        child: new TextField(

                                          decoration: const InputDecoration(
                                            hintText: "Post Code",
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                              borderSide: BorderSide(color: Colors.grey, ),
                                            ),),
//                                      enabled: !_status,
                                        ),
                                      ),
                                    ],
                                  ))),

//                          Padding(
//                              padding: EdgeInsets.only(
//                                  left: 25.0, right: 25.0, top: 10.0),
//                              child:Container(height: 40.0,
//                                  child: new Row(
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: <Widget>[
//                                      new Flexible(
//                                        child: new TextField(
//
//                                          decoration: const InputDecoration(
//                                            hintText: "Additional",
//                                            border: OutlineInputBorder(
//                                              borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                              borderSide: BorderSide(color: Colors.grey, ),
//                                            ),),
////                                      enabled: !_status,
//                                        ),
//                                      ),
//                                    ],
//                                  ))),

//                          Padding(
//                              padding: EdgeInsets.only(
//                                  left: 25.0, right: 25.0, top: 25.0),
//                              child: new Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                mainAxisSize: MainAxisSize.max,
//                                children: <Widget>[
//
//                                  new Container(
//                                    width: double.infinity,
//                                    height: 40.0,
//                                    decoration: BoxDecoration(
//                                      border: Border.all(color: Colors.blue),
//                                      borderRadius: BorderRadius.all(
//                                          Radius.circular(5.0) //                 <--- border radius here
//                                      ),
//                                    ),
//                                    child: new Row(
//                                      children: <Widget>[
//
////                                        new Icon( Icons.public,
////                                          color: Colors.grey,
////                                          size: 25.0,),
//
//                                        Padding(
//                                          padding:EdgeInsets.all(5.0),
//                                          child:
//                                          new Text("Additional Details",style: TextStyle(
//                                              fontWeight: FontWeight.normal,
//                                              fontSize: 10.0,
//                                              fontFamily: 'sans-serif-light',
//                                              color: Colors.blue)),
//                                        ),
//
//                                        new Icon( Icons.expand_more,
//                                          color: Colors.blue,
//                                          size: 25.0,),
//                                      ],
//                                    ),
//                                  )
////                                  new Column(
////                                    mainAxisAlignment: MainAxisAlignment.start,
////                                    mainAxisSize: MainAxisSize.min,
////                                    children: <Widget>[
////                                      new Text(
////                                        'Parsonal Information',
////                                        style: TextStyle(
////                                            fontSize: 18.0,
////                                            fontWeight: FontWeight.bold),
////                                      ),
////                                    ],
////                                  ),
////                                  new Column(
////                                    mainAxisAlignment: MainAxisAlignment.end,
////                                    mainAxisSize: MainAxisSize.min,
////                                    children: <Widget>[
////                                      _status ? _getEditIcon() : new Container(),
////                                    ],
////                                  )
//                                ],
//                              )),



                          !_status ? _getActionButtons() : new Container(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getActionButtons() {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
      child: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Save"),
                    textColor: Colors.white,
                    color: Colors.green,
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  child: new RaisedButton(
                    child: new Text("Cancel"),
                    textColor: Colors.white,
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _status = true;
                        FocusScope.of(context).requestFocus(new FocusNode());
                      });
                    },
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                  )),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}