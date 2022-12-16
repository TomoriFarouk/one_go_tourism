import 'package:flutter/material.dart';
import 'package:one_go_tourism/Screens/TourDetailsPages/check_availability.dart';
import 'package:one_go_tourism/Screens/tour_agent_page.dart';
import 'package:one_go_tourism/custom_widgets/reusable_button.dart';
import 'package:one_go_tourism/models/foods_inqatar%20model.dart';
import 'package:one_go_tourism/models/places_inQatarModel.dart';
import 'package:video_player/video_player.dart';

import '../custom_widgets/constants.dart';

class Qatar extends StatefulWidget {
  static const String id = 'Qatarpage';

  const Qatar({Key? key}) : super(key: key);
  @override
  State<Qatar> createState() => _QatarState();
}

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({Key? key}) : super(key: key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;
  late Future<void> initializeVideoPlayerfuture;

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    try {
      controller = VideoPlayerController.network(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    } catch (e) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(fetchVideoError);
      });
    }
    controller.addListener(() {
      setState(() {});
    });
    controller.setLooping(false);
    initializeVideoPlayerfuture = controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: initializeVideoPlayerfuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(children: [
              AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: Stack(children: [
                  VideoPlayer(controller),
                  Center(
                    child: IconButton(
                        iconSize: 90,
                        onPressed: () {
                          if (controller.value.isPlaying) {
                            controller.pause();
                          } else {
                            controller.play();
                          }

                          setState(() {});
                        },
                        icon: Icon(
                          controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          color: Colors.white,
                        )),
                  ),
                ]),
              ),
              Text("Total Duration: ${controller.value.duration}"),
              VideoProgressIndicator(controller,
                  allowScrubbing: true,
                  colors: const VideoProgressColors(
                    backgroundColor: Colors.redAccent,
                    playedColor: Colors.green,
                    bufferedColor: Colors.purple,
                  )),
              // Row(
              //   children: [
              //     // IconButton(
              //     //     onPressed: () {
              //     //       if (controller.value.isPlaying) {
              //     //         controller.pause();
              //     //       } else {
              //     //         controller.play();
              //     //       }

              //     //       setState(() {});
              //     //     },
              //     //     icon: Icon(controller.value.isPlaying
              //     //         ? Icons.pause
              //     //         : Icons.play_arrow)),
              //     // IconButton(
              //     //     onPressed: () {
              //     //       controller.seekTo(const Duration(seconds: 0));

              //     //       setState(() {});
              //     //     },
              //     //     icon: const Icon(Icons.stop))
              //   ],
              // )
            ]);
          } else {
            return const Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
              ),
            );
          }
        });
  }
}

class _QatarState extends State<Qatar> {
  String? image;
  String? titleoflocation;
  String? locationDescription;
  Function? onpress;
  final FoodsInQatars _foodsInQatar = FoodsInQatars();
  final PlacesInQatar _placesInQatar = PlacesInQatar();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          floating: true,
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VideoPlayerWidget(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: const TextSpan(
                              text: 'Did you know that:',
                              style: kMediumTextStyleBlack,
                              children: <TextSpan>[
                            TextSpan(
                              text:
                                  ' Doha, Qatar is one of the 7 wonder cities of the world',
                              style: kBlackText,
                            )
                          ])),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Places to visit in Qatar',
                        style: kMediumTextStyleBlack,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        // physics: const PageScrollPhysics(),
                        children: _placesInQatar.getPlacesInQatar(context),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Foods to enjoy in qatar',
                        style: kMediumTextStyleBlack,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const ClampingScrollPhysics(),
                        children: _foodsInQatar.getFoodsInQatar(context),
                      ),
                    ),
                    SizedBox(
                        height: 150,
                        child: ReusableButton(const Text('Continue'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckAvailability()));
                          // Navigator.pushNamed(context, TourAgentPage.id);
                        }))
                  ],
                )),
          ),
        ]))
      ],
      scrollDirection: Axis.vertical,
    )));
  }
}

class PlacesinQatarContainer extends StatelessWidget {
  final image;
  final titleoflocation;
  final locationDescription;
  final onpress;
  const PlacesinQatarContainer(
      this.image, this.titleoflocation, this.locationDescription, this.onpress);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onpress,
        child: Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.6), BlendMode.dstATop),
                image: AssetImage(image),
                fit: BoxFit.fill,
              )),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleoflocation,
                  style: kBoldTextStyleWhite,
                ),
                addVerticalSpacing(5),
                Text(
                  locationDescription,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
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
