import 'package:custom_cakes/cakebaseitem/data/cake_base_detail_color_code.dart';
import 'package:custom_cakes/providers/cake_anim_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:rive/rive.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<homepage> {


  Artboard? _riveArtboard;
  RiveAnimationController? _controller;
  final List Cakebase_color_list = cakebase_color_list;


  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    //context.watch<cake_anim_notifier>().cake_anim_type

    rootBundle.load('assets/cake_base.riv').then(
      (data) async {
        final file = RiveFile.import(data);

        // Load the RiveFile from the binary data.
        if (file != null) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;

          print(Cakebase_color_list.elementAt(0));

          artboard.forEachComponent((child) {
            /*if (child is Shape && child.name == 'cakebase_base_top') {
              final Shape shape = child;
              shape.fills.first.paint.color = Cakebase_color_list.map(cakebase_base_top,0);
            }

            if (child is Shape && child.name == 'cakebase_creamfill') {
              final Shape shape = child;
              shape.fills.first.paint.color = cakebase_color_list!.cakebase_creamfill;
            }

            if (child is Shape && child.name == 'cakebase_top') {
              final Shape shape = child;
              shape.fills.first.paint.color = cakebase_color_list!.cakebase_top;
            }

            if (child is Shape && child.name == 'cakebase_sprinkle') {
              final Shape shape = child;
              shape.fills.first.paint.color = cakebase_color_list!.cakebase_sprinkle;
            }

            if (child is Shape && child.name == 'cakebase_bottom') {
              final Shape shape = child;
              shape.fills.first.paint.color = cakebase_color_list!.cakebase_bottom;
            }*/
          });
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('butterscotch'));
          setState(() => _riveArtboard = artboard);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Rive(artboard: _riveArtboard!),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _togglePlay,
        tooltip: isPlaying ? 'Pause' : 'Play',
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),*/
    );


  }
}
