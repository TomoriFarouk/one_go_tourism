import 'package:flutter/material.dart';
import 'package:one_go_tourism/View%20Templates/placesInQatar_view.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:page_transition/page_transition.dart';

class PlacesInQatar {
  static TextStyle boldStyle = const TextStyle(
      color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);

  List<String> imagespaths = [
    'assets/Al khor mall1.jpg',
    'assets/hm6.jpg',
    'assets/s15.jpg',
    'assets/s1.jpg',
    'assets/mia1.jpg',
    'assets/s7.jpg',
    'assets/s10.jpg',
    'assets/purpleisland3.jpg',
    'assets/s4.jpg',
    'assets/souq-waqif-doha.jpg',
    'assets/vilagio1.jpg',
  ];
  List<String> imagespaths2 = [
    'assets/Al khor mall2.jpg',
    'assets/hm7.jpg',
    'assets/s13.jpg',
    'assets/s2.jpg',
    'assets/mia2.jpg',
    'assets/s9.jpg',
    'assets/s11.jpg',
    'assets/purpleisland2.jpg',
    'assets/s5.jpg',
    'assets/souqwaqif2.jpg',
    'assets/vilagio2.jpg',
  ];

  List<String> imagespaths3 = [
    'assets/Alhkor mall.jpg',
    'assets/hm8.jpg',
    'assets/s14.jpg',
    'assets/s3.jpg',
    'assets/mia3.jpg',
    'assets/s8.jpg',
    'assets/s12.jpg',
    'assets/purpleisland1.jpg',
    'assets/s6.jpg',
    'assets/souqwaqif3.jpg',
    'assets/vilagio3.jpg',
  ];

  List<Widget> body = [
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Perhaps the first mall to be built in the city, the Al Khor mall is one the best places to visit in Al Khor, Qatar. The mall offers a wide range of global brands and budget shopping options for other visitors alongside its wide range of other facilities from the finest dining options to the entertainment facilities that visitors can enjoy the whole day. There is something for everyone at Al Khor mall.'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''The biggest park in Doha, it is located in the Aspire zone in the southern district of Baaya in Doha. From beautiful fountains to playgrounds for children and other features, Aspire park is a great place to have picnics and family outdoors while overlooking the Aspire tower especially at night. The Aspire tower(as can be seen in the photo above) is a 300–meter high modern hotel, which served as a giant torch for the 15th Asian games'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Clean, beautiful and perfect for taking a walk, the Doha corniche is one of the most popular tourist site in Qatar and one of the finest places to visit in case you are headed for Doha sightseeing. It is a waterfront promenade that welcomes visitors all year round and offers a number of attractions like sunset view and Dhow cruise tours which are a real treat for the visitors. Also the jet-skiing experience is really something else, one can rent a jet ski at nominal price and explore the city’s gorgeous skyline right from the waters, while feeling the adrenaline running down the spine.'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text(
              '''A private beach, arts, theater, music, literature, exhibitions and culture. Katara cultural center is one of the best places to visit in Doha. It is currently the largest multi-cultural project and offers a unique once in a lifetime experience. It is home to huge events like the Doha Tribeca film festival, TEDx Doha and Ajyal youth film festival. People from different walks of life, diverse cultures and varied religions come together to experience and explore different cultures and gain knowledge about them. The beauty of Katara lies in the fact that people come here and forget their differences and overcome preconceived notions and boundaries.'''),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              addVerticalSpacing(30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Location ',
                    style: kBoldTextStyleBlack.copyWith(fontSize: 17.0),
                  ),
                  const Text('Doha, Qatar'),
                ],
              ),
              addVerticalSpacing(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Timings ',
                    style: kBoldTextStyleBlack.copyWith(fontSize: 17),
                  ),
                  const Text('Open 24hrs'),
                ],
              ),
              addVerticalSpacing(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Price:  ',
                    style: kBoldTextStyleBlack.copyWith(fontSize: 17),
                  ),
                  const Text('No entry fee.'),
                ],
              ),
              addVerticalSpacing(20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Famous for: ',
                    style: kBoldTextStyleBlack.copyWith(fontSize: 17),
                  ),
                  const Text('Holding various events'),
                ],
              ),
              addVerticalSpacing(50),
            ],
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Situated adjacent to the museum of Islamic art, MIA park is a scenic park that has a lovely waterfront promenade lined with Arabian palm trees, small hills, green lawns and children play areas. There is also a Richard Serra sculpture in the park, which is in a great setting for a photo opportunity. Also there is a number of cafes in the park for snacks and coffees(Moons café is simply one of the best).'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''This interesting architectural structure houses a large permanent exhibit of artifacts from across the ancient and current Islamic region(ranging from Spain to central Asia). The museum of Islamic art is a shining gem that shines light on the Doha corniche and pays respect to the 14th-century Islamic heritage from the Muslim world. The museum of Islamic art along with the bank of china in Hongkong and the Louvre’s glass pyramid in Paris was designed by I. M. Pei, a world renowned architect. The museum of Islamic art is of the most beautiful places to visit in Qatar. Also don’t forget to visit their wonderful in-house restaurant, IDAM.'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Qatar national museum is the second largest museum in Doha, Qatar and presents tourists with an impressive range of relics and artifacts. One of the famous Doha sightseeing, this famous museum is a fine example of an Arabian culture that won the Agha Khan award for the rehabilitation of Islamic architecture in 1980. A must visit attraction, one can enjoy several kinds of exhibitions that are arranged at different times of the year. This is one of the famous Doha tourist places. Built by Jean Nouvel, an architect whose inspiration arouse from the desert rose crystal found in Qatar. It is really worth a visit, even just to look at the cool architecture and have a cup of coffee at a nice coffee shop.'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Location:',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  Museum park St,Doha Qatar',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Timing:',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  9AM to 7PM',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Price:',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  INR1000',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Famous for',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  The history of the tiny Arabian Gulf country',
              ),
            ]),
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''The history of the purple island dates back to the second millennium BC as the site of operation of a Kassite-controlled purple dye industry. If you are looking for something different than the heritage sites in Qatar, then we would suggest you explore these natural wonders which will offer a total breathtaking experience. Kayaking through the mangroves is also one of the major activities to try out at this island.'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''An oasis of tranquility, this resort is located amidst the dunes of the Arabian desert by the blue waters of the Arabian sea. It is most popular in Doha for weekends gatherings and other than reveling in a luxurious stay one can simply rent a dune buggy on the beach near the resort and go for a dune bashing as well which remains a popular sport with both Qataris and travelers. Other options for adventure includes; swimming, bike rides, camel riding on sand dune, camping etc. Having said that, this one of the most visited Doha tourist places.'''),
        ),
      ],
    ),
    Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              '''Old, beautiful and traditional, Souq waqif(which means “The standing market” in Arabic) is a marketplace in Doha, it is packed with various vendors selling traditional foods, spices, handicrafts and souvenirs. Souq waqif was founded at least a century ago. It was a gathering place where Bedouins and locals would trade a variety of goods more especially livestock. A trip to Souq Waqif is incomplete without a visit to;''',
              style: kBlackText.copyWith(fontSize: 17),
            )),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Al Bidda Boutique Hotel',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text:
                    '  An iconic hotel which is a collection of nine beautifully designed buildings with an exquisite interior and its in-house dining menus which includes gourmet goodies and traditional Arabian feasts.',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Le Pouce',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text:
                    '  A public art piece by acclaimed french  artist Cersar Baldaccini(as can be see in the photo above). it is a good photo opportunity for visitors.',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Falafel kareem',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: ' Breakfast restaurant',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Queen Art',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  Art Supply shop',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'SAAD & SONS TRADING',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  Doha Spices',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'AL QarMouty Seafood',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  Seafood restaurant',
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Turkish Ice coffee and ice cream',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  Ice cream',
              ),
            ]),
          ),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Bring home to your loved ones beautiful items purchased from the Villaggio mall!\n\nOne of the finest places to go shopping in Qatar, the Villaggio mall is a place you can’t afford to miss when on a vacation in Doha. The mall boasts of its majestic architecture and top of the line facilities for visitors. It host some of the world’s most luxurious and sought after brands like; Christian Dior, Louis Vuitton, Gucci, Dolce & Gabbana etc. Besides the haute couture fashion, the mall is known for its elegant yet exotic interiors. The main highlight at the Villaggio is the indoor canal gondola boat rides, which offer an exclusive and romantic experience. One can either take a gondola ride in the indoor canals of the mall or head over to the cinema or ice rink to experience true enjoyment with family. The Villaggio mall even has a number of food outlets and stalls functioning within its premises that offers the best feasts to visitors. From the finest clothing stores to the best of entertainment options, visitors get a whole lot to enjoy at the place.'''),
        ),
      ],
    ),
  ];

  List<String> titles = [
    'Al Khor Mall',
    'Aspire Park',
    'Corniche',
    'Katara Cultural Center',
    'Mia Park',
    'Museum of Islamic Arts',
    'National Museum',
    'Purple Island',
    'Sealine Beach',
    'Souq Waqif',
    'Villagio',
  ];

  List<String> titlesdesc = [
    'A shopaholics love',
    'Serene Views',
    'Recreational Fun',
    'Relish the events',
    'Scenic Beauty',
    'Impressive Artifacts',
    'Architectural Gem',
    'Kayaking through history',
    'A tranquil bliss',
    'Shop the culture',
    'Beyond Shopping',
  ];

  List<GestureDetector> getPlacesInQatar(BuildContext context) {
    List<GestureDetector> locationsList = [];
    for (int i = 0; i < imagespaths.length; i++) {
      String imagePath = imagespaths[i];
      String title = titles[i];
      String desc = titlesdesc[i];
      var newPlace = GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: PlacesInQatarView(imagespaths[i], imagespaths2[i],
                      imagespaths3[i], body[i], titles[i]),
                  type: PageTransitionType.bottomToTop));
        },
        child: Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                )),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  addVerticalSpacing(5),
                  Text(
                    desc,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      locationsList.add(newPlace);
    }
    return locationsList;
  }
}
