import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:mpcore/mpcore.dart';
import 'package:mpflutter_template/animations/animated_container_page.dart';
import 'package:mpflutter_template/animations/animation_controller_page.dart';
import 'package:mpflutter_template/contents/icon_page.dart';
import 'package:mpflutter_template/contents/image_page.dart';
import 'package:mpflutter_template/contents/map_view_page.dart';
import 'package:mpflutter_template/contents/text_page.dart';
import 'package:mpflutter_template/contents/video_view_page.dart';
import 'package:mpflutter_template/contents/web_view_page.dart';
import 'package:mpflutter_template/customs/custom_paint_page.dart';
import 'package:mpflutter_template/exts/clip_board_page.dart';
import 'package:mpflutter_template/exts/http_network_page.dart';
import 'package:mpflutter_template/exts/plugin_page.dart';
import 'package:mpflutter_template/exts/shared_preference_page.dart';
import 'package:mpflutter_template/exts/universal_miniprogram_api_page.dart';
import 'package:mpflutter_template/layouts/aspect_ratio_page.dart';
import 'package:mpflutter_template/layouts/center_page.dart';
import 'package:mpflutter_template/layouts/column_row_page.dart';
import 'package:mpflutter_template/layouts/container_page.dart';
import 'package:mpflutter_template/layouts/padding.dart';
import 'package:mpflutter_template/layouts/stack_page.dart';
import 'package:mpflutter_template/layouts/transform_page.dart';
import 'package:mpflutter_template/layouts/wrap_page.dart';
import 'package:mpflutter_template/list/custom_scroll_view_page.dart';
import 'package:mpflutter_template/list/grid_view_page.dart';
import 'package:mpflutter_template/list/grid_view_waterfall_page.dart';
import 'package:mpflutter_template/list/list_view_loadmore_page.dart';
import 'package:mpflutter_template/list/list_view_page.dart';
import 'package:mpflutter_template/list/page_view.dart';
import 'package:mpflutter_template/pages/defered_page.dart'
    deferred as deferedPage;
import 'package:mpflutter_template/pages/dialogs_page.dart';
import 'package:mpflutter_template/pages/forms_page.dart';
import 'package:mpflutter_template/pages/scaffold_page.dart';
import 'package:mpflutter_template/pages/tab_page.dart';
import 'package:mpflutter_template/styles/clip_oval_page.dart';
import 'package:mpflutter_template/styles/clip_r_rect_page.dart';
import 'package:mpflutter_template/styles/offstage_page.dart';
import 'package:mpflutter_template/styles/opacity_page.dart';
import 'package:mpflutter_template/touches/absorb_pointer_page.dart';
import 'package:mpflutter_template/touches/editable_text_page.dart';
import 'package:mpflutter_template/touches/gesture_detector_page.dart';
import 'package:mpflutter_template/touches/ignore_pointer_page.dart';
import 'package:mpflutter_template/touches/signature_page.dart';

import 'animations/animation_performance_test_page.dart';
import 'home.dart';
import 'pages/main_tab_view_page.dart';

void main() {
  runApp(MyApp());
  MPCore().connectToHostChannel();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MPApp(
      title: 'MPFlutter Demo',
      color: Colors.blue,
      routes: {
        '/': (context) => MyHomePage(),
        '/container': (context) => ContainerPage(),
        '/padding': (context) => PaddingPage(),
        '/aspectRatio': (context) => AspectRatioPage(),
        '/center': (context) => CenterPage(),
        '/columnRow': (context) => ColumnRowPage(),
        '/stack': (context) => StackPage(),
        '/transform': (context) => TransformPage(),
        '/wrap': (context) => WrapPage(),
        '/customScrollView': (context) => CustomScrollViewPage(),
        '/gridView': (context) => GridViewPage(),
        '/gridViewWaterfall': (context) => GridViewWaterfallPage(),
        '/listView': (context) => ListViewPage(),
        '/listViewLoadMore': (context) => ListViewLoadmorePage(),
        '/pageView': (context) => PageViewPage(),
        '/icon': (context) => IconPage(),
        '/image': (context) => ImagePage(),
        '/text': (context) => TextPage(),
        '/videoView': (context) => VideoViewPage(),
        '/webView': (context) => WebViewPage(),
        '/clipOval': (context) => ClipOvalPage(),
        '/clipRRect': (context) => ClipRRectPage(),
        '/offstage': (context) => OffstagePage(),
        '/opacity': (context) => OpacityPage(),
        '/absorbPointer': (context) => AbsorbPointerPage(),
        '/gestureDetector': (context) => GestureDetectorPage(),
        '/ignorePointer': (context) => IgnorePointerPage(),
        '/editableText': (context) => EditableTextPage(),
        '/animationController': (context) => AnimationControllerPage(),
        '/animatedContainer': (context) => AnimatedContainerPage(),
        '/animatedPerformanceTest': (context) => AnimatedPerformanceTestPage(),
        '/scaffold': (context) => ScaffoldPage(),
        '/mainTabView': (context) => MainTabViewPage(),
        '/dialogs': (context) => DialogsPage(),
        '/tabPage': (context) => TabPage(),
        '/deferedPage': (context) => FutureBuilder(
              future: deferedPage.loadLibrary(),
              builder: (context, snapshot) {
                if (snapshot.connectionState != ConnectionState.done)
                  return Container();
                return deferedPage.DeferedPage();
              },
            ),
        '/sharedPreference': (context) => SharedPreferencePage(),
        '/httpNetwork': (context) => HTTPNetworkPage(),
        '/plugin': (context) => PluginPage(),
        '/miniprogramApi': (context) => MiniProgramApiPage(),
        '/customPaint': (context) => CustomPaintPage(),
        '/forms': (context) => FormsPage(),
        '/signature': (context) => SignaturePage(),
        '/mapView': (context) => MapViewPage(),
        '/clipBoard': (context) => ClipBoardPage(),
      },
      navigatorObservers: [MPCore.getNavigationObserver()],
    );
  }
}
