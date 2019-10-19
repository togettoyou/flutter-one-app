///音乐播放控件

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';
import 'package:cached_network_image/cached_network_image.dart';

enum PlayerState { stopped, playing, paused }

class musicPlayWidget extends StatefulWidget {
  String url;
  String imgUrl;

  musicPlayWidget(this.url, this.imgUrl);

  @override
  _musicPlayWidgetState createState() {
    return _musicPlayWidgetState();
  }
}

class _musicPlayWidgetState extends State<musicPlayWidget> {
  Duration duration;
  Duration position;

  AudioPlayer audioPlayer;

  PlayerState playerState = PlayerState.stopped;

  get isPlaying => playerState == PlayerState.playing;

  get isPaused => playerState == PlayerState.paused;

  get durationText =>
      duration != null ? duration.toString().split('.').first : '';

  get positionText =>
      position != null ? position.toString().split('.').first : '';

  bool isMuted = false;

  StreamSubscription _positionSubscription;
  StreamSubscription _audioPlayerStateSubscription;

  @override
  void initState() {
    super.initState();
    initAudioPlayer();
  }

  @override
  void dispose() {
    _positionSubscription.cancel();
    _audioPlayerStateSubscription.cancel();
    audioPlayer.stop();
    super.dispose();
  }

  void initAudioPlayer() {
    audioPlayer = new AudioPlayer();
    _positionSubscription = audioPlayer.onAudioPositionChanged
        .listen((p) => setState(() => position = p));
    _audioPlayerStateSubscription =
        audioPlayer.onPlayerStateChanged.listen((s) {
      if (s == AudioPlayerState.PLAYING) {
        setState(() => duration = audioPlayer.duration);
      } else if (s == AudioPlayerState.STOPPED) {
        onComplete();
        setState(() {
          position = duration;
        });
      }
    }, onError: (msg) {
      setState(() {
        playerState = PlayerState.stopped;
        duration = new Duration(seconds: 0);
        position = new Duration(seconds: 0);
      });
    });
  }

  Future play() async {
    await audioPlayer.play(widget.url);
    setState(() {
      playerState = PlayerState.playing;
    });
  }

  Future pause() async {
    await audioPlayer.pause();
    setState(() => playerState = PlayerState.paused);
  }

  Future stop() async {
    await audioPlayer.stop();
    setState(() {
      playerState = PlayerState.stopped;
      position = new Duration();
    });
  }

  void onComplete() {
    setState(() => playerState = PlayerState.stopped);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.0,
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            padding: EdgeInsets.all(12.0),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: widget.imgUrl,
            ),
          ),
          _buildPlayer(),
        ],
      ),
    );
  }

  Widget _buildPlayer() => new Container(
      padding: new EdgeInsets.all(16.0),
      child: new Column(mainAxisSize: MainAxisSize.min, children: [
        new Row(mainAxisSize: MainAxisSize.min, children: [
          new IconButton(
              onPressed: isPlaying ? null : () => play(),
              iconSize: 64.0,
              icon: new Icon(Icons.play_arrow),
              color: Colors.cyan),
          new IconButton(
              onPressed: isPlaying ? () => pause() : null,
              iconSize: 64.0,
              icon: new Icon(Icons.pause),
              color: Colors.cyan),
          new IconButton(
              onPressed: isPlaying || isPaused ? () => stop() : null,
              iconSize: 64.0,
              icon: new Icon(Icons.stop),
              color: Colors.cyan),
        ]),
        duration == null
            ? new Container()
            : new Slider(
                value: position?.inMilliseconds?.toDouble() ?? 0.0,
                onChanged: (double value) =>
                    audioPlayer.seek((value / 1000).roundToDouble()),
                min: 0.0,
                max: duration.inMilliseconds.toDouble()),
        new Row(mainAxisSize: MainAxisSize.min, children: [
          new Padding(
              padding: new EdgeInsets.all(12.0),
              child: new Stack(children: [
                new CircularProgressIndicator(
                    value: 1.0,
                    valueColor: new AlwaysStoppedAnimation(Colors.grey[300])),
                new CircularProgressIndicator(
                  value: position != null && position.inMilliseconds > 0
                      ? (position?.inMilliseconds?.toDouble() ?? 0.0) /
                          (duration?.inMilliseconds?.toDouble() ?? 0.0)
                      : 0.0,
                  valueColor: new AlwaysStoppedAnimation(Colors.cyan),
                  backgroundColor: Colors.yellow,
                ),
              ])),
          new Text(
              position != null
                  ? "${positionText ?? ''} / ${durationText ?? ''}"
                  : duration != null ? durationText : '',
              style: new TextStyle(fontSize: 24.0))
        ])
      ]));
}
