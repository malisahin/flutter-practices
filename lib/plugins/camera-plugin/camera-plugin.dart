import 'package:camera/camera.dart';
import 'package:combine_mobile/util/logger.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CameraPluginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CameraPlugin(),
    );
  }
}

class CameraPlugin extends StatefulWidget {
  @override
  _CameraPluginState createState() => _CameraPluginState();
}

IconData getCameraLensIcon(CameraLensDirection direction) {
  switch (direction) {
    case CameraLensDirection.back:
      return Icons.camera_rear;
    case CameraLensDirection.front:
      return Icons.camera_front;
    case CameraLensDirection.external:
      return Icons.camera;
    default:
      return Icons.photo_camera;
  }
}

class _CameraPluginState extends State<CameraPlugin>
    with WidgetsBindingObserver {
  CameraController controller;
  String imagePath;
  String videoPath;
  VideoPlayerController videoPlayerController;
  VoidCallback videoPlayerListener;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.inactive) {
      controller?.dispose();
    } else if (state == AppLifecycleState.resumed) {
      if (controller != null) {
        onNewCameraSelected(controller.description);
      }
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void showInSnackBar(String message) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void onNewCameraSelected(CameraDescription description) async {
    if (controller != null) {
      await controller.dispose();
    }

    controller = CameraController(description, ResolutionPreset.high);

    controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (controller.value.hasError) {
        showInSnackBar('Camera error ${controller.value.errorDescription}');
      }
    });
    try {
      await controller.initialize();
    } on CameraException catch (e) {
      _showCameraException(e);
    }
    if (mounted) {
      setState(() {});
    }
  }

  void _showCameraException(CameraException e) {
    Logger.logError(e.code, e.description);
    showInSnackBar('Error: ${e.code}\n${e.description}');
  }
}
