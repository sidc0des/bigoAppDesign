import 'dart:math';

import 'package:bingo/constants/keys.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

import '../../main.dart';

class GoLiveAlone extends StatefulWidget {
  @override
  _GoLiveAloneState createState() => _GoLiveAloneState();
}

class _GoLiveAloneState extends State<GoLiveAlone> {
  CameraController controller;
  String channelId = "sid";
  bool isJoined = false, switchCamera = true, switchRender = true;
  List<int> remoteUid = [];
  TextEditingController _controller;
  int _current = 0;
  RtcEngine _engine;
  List<String> titles = [
    "The Meme Team",
    "Best Fries Forever",
    "The Friendship Ship",
    "The Chamber of Secrets",
    "Taylor Swift's Squad",
    "Sisterhood",
    "The Pretty Committee",
    "7 Rings",
    "MerMAID To Be ",
    "The Schuyler Sisters",
    "All the Single Ladies",
    "The Powerpuff Girls",
    "The Heathers",
    "The Three Musketeers",
    "Will Trade As for Food",
    "Team Spirit",
    "Future Presidents",
    "Secret Society",
    "Master Minds",
    "Grammar Enthusiasts",
    "The Demoninators",
    "The Mitochondria",
    "The Brain Cells",
    "The Creators Collective",
  ];
  int random = 10;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      cameras[1],
      ResolutionPreset.high,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }

      setState(() {});
    });
  }

  // _initEngine() async {
  //   _engine = await RtcEngine.create(appId);
  //   this._addListeners();

  //   await _engine.enableVideo();
  //   await _engine.startPreview();
  //   await _engine.setChannelProfile(ChannelProfile.LiveBroadcasting);
  //   await _engine.setClientRole(ClientRole.Broadcaster);
  // }

  _addListeners() {
    _engine?.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (channel, uid, elapsed) {
        print('joinChannelSuccess ${channel} ${uid} ${elapsed}');
        setState(() {
          isJoined = true;
        });
      },
      userJoined: (uid, elapsed) {
        print('userJoined  ${uid} ${elapsed}');
        setState(() {
          remoteUid.add(uid);
        });
      },
      userOffline: (uid, reason) {
        print('userOffline  ${uid} ${reason}');
        setState(() {
          remoteUid.removeWhere((element) => element == uid);
        });
      },
      leaveChannel: (stats) {
        print('leaveChannel ${stats.toJson()}');
        setState(() {
          isJoined = false;
          remoteUid.clear();
        });
      },
    ));
  }

  _joinChannel({String token, int uid}) async {
    await [Permission.microphone, Permission.camera].request();
  }
  //   if ( == TargetPlatform.android) {
  //   }
  //   await _engine
  //       ?.joinChannel(token, channelId, null, uid);
  // }

  _leaveChannel() async {
    await _engine?.leaveChannel();
  }

  _switchCamera() {
    _engine?.switchCamera()?.then((value) {
      setState(() {
        switchCamera = !switchCamera;
      });
    })?.catchError((err) {
      print('switchCamera $err');
    });
  }

  _switchRender() {
    setState(() {
      switchRender = !switchRender;
      remoteUid = List.of(remoteUid.reversed);
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  _renderVideo() {
    return Expanded(
      child: Stack(
        children: [
          RtcLocalView.SurfaceView(),
          if (remoteUid != null)
            Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.of(remoteUid.map(
                    (e) => GestureDetector(
                      onTap: this._switchRender,
                      child: Container(
                        width: 120,
                        height: 120,
                        child: RtcRemoteView.SurfaceView(
                          uid: e,
                        ),
                      ),
                    ),
                  )),
                ),
              ),
            )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: (!controller.value.isInitialized)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                CameraPreview(controller),
                Positioned(
                    top: 15,
                    right: 15,
                    child: Image.asset(
                      'assets/close.png',
                      color: Colors.white,
                      height: 16,
                      width: 16,
                    )),
                Positioned(
                    top: 80,
                    left: 15,
                    child: Container(
                      width: size.width - 30,
                      height: 130,
                      // color: Colors.red,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Container(
                                      height: ScreenUtil().setWidth(120),
                                      width: ScreenUtil().setWidth(120),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              ScreenUtil().setWidth(8)),
                                          color: Colors.grey[400]),
                                      child: Image.asset(
                                        "assets/bigo.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: size.width -
                                        ScreenUtil().setWidth(120) -
                                        40,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              titles[random],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  int randomnew = Random()
                                                      .nextInt(titles.length);
                                                  random = randomnew;
                                                });
                                              },
                                              child: Container(
                                                height: 25,
                                                width: 25,
                                                child: Image.asset(
                                                  'assets/dice.png',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: ScreenUtil().setWidth(170),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: Colors.black12),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "select tag",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(
                                                    width: 4,
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 13,
                                                    color: Colors.grey,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Text(
                                      "share to",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black12,
                                    child: Icon(
                                      Icons.share,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black12,
                                    child: Icon(
                                      Icons.copy,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black12,
                                    child: Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Colors.black12,
                                    child: Image.asset(
                                      "assets/bean.png",
                                      color: Colors.yellow,
                                      height: 12,
                                      width: 12,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                  bottom: 50,
                  child: Container(
                    height: 160,
                    width: size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Go Live",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            //  color: Color(0xff01c5c4),

                            minWidth: 150,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Live",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
