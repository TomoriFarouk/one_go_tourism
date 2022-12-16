import 'dart:core';

import 'package:flutter/material.dart';
import 'package:one_go_tourism/View%20Templates/foods_inQatar_view.dart';
import 'package:one_go_tourism/custom_widgets/constants.dart';
import 'package:page_transition/page_transition.dart';

class FoodsInQatars {
  static TextStyle boldStyle = const TextStyle(
      color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);

  List<String> imagespaths = [
    'assets/FoodsinQatar/Kunafa.webp',
    'assets/FoodsinQatar/karak1.webp',
    'assets/FoodsinQatar/Warak-Enab.jpg',
    'assets/FoodsinQatar/Thareed.jpg',
    'assets/FoodsinQatar/samboosa.jpg',
    'assets/FoodsinQatar/Shawarma-2.webp',
    'assets/FoodsinQatar/Khanfaroush.jpg',
    'assets/FoodsinQatar/Balaleet1.webp',
    'assets/FoodsinQatar/Luqaimat.jpg',
    'assets/FoodsinQatar/Umm Ali.jpg',
    'assets/FoodsinQatar/crepe1.jpg',
    'assets/FoodsinQatar/Machboos.jpg',
    'assets/FoodsinQatar/Saloona.jpg'
  ];
  List<String> imagespaths2 = [
    'assets/FoodsinQatar/Kunafa-with-cheese.jpg',
    'assets/FoodsinQatar/karakchai2.webp',
    'assets/FoodsinQatar/Waraq-Enab1.webp',
    'assets/FoodsinQatar/Thareed1.webp',
    'assets/FoodsinQatar/Samboosa (1).jpg',
    'assets/FoodsinQatar/Shawarma3.jpg',
    'assets/FoodsinQatar/Khanfaroush1.webp',
    'assets/FoodsinQatar/Balaleet2.jpg',
    'assets/FoodsinQatar/Luqaimat-2.webp',
    'assets/FoodsinQatar/Umm-Ali (1).jpg',
    'assets/FoodsinQatar/Crepe2.jpg',
    'assets/FoodsinQatar/Majboos2.webp',
    'assets/FoodsinQatar/saloona1.webp'
  ];

  List<String> imagespaths3 = [
    'assets/FoodsinQatar/kunafanew.jpg',
    'assets/FoodsinQatar/karak1.webp',
    'assets/FoodsinQatar/Warak enab2.webp',
    'assets/FoodsinQatar/Thareed2.webp',
    'assets/FoodsinQatar/Samboosa2.webp',
    'assets/FoodsinQatar/Shawarma4.jpg',
    'assets/FoodsinQatar/khanfaroush2.webp',
    'assets/FoodsinQatar/Baleelat3.jpg',
    'assets/FoodsinQatar/luqaimat3.jpg',
    'assets/FoodsinQatar/Umm-Ali2.webp',
    'assets/FoodsinQatar/Crepe 3.jpg',
    'assets/FoodsinQatar/Majboos3.jpg',
    'assets/FoodsinQatar/saloonanew1.jpg'
  ];

  List<Widget> body = [
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Do you have a sweet tooth or just love eating all kinds of foods that comes your way? One of the most traditional sweets in the Middle East, Kunafa with cheese makes the mouth water and crave for more once you take a bite. With some added flavors, it has made its way to the top of the Qatari food in Doha. It is one of the foods people often eat during Ramadan. The idea of biting into something that is soaked in sugar and melted cheese, will transport people into heaven or rather take you on a journey to the land of sweets. It is too good to believe, isn't it?

People can always give themselves a treat to this sweet every year. Al Aker Sweets is one of the places in Doha people can give themselves a treat to Kunafa, nestled in the middle of Souq Waqif. In case you are craving for that extra sweetness, then Nutella Kunafa is the thing for you.'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''You may have heard of karak, Qatar’s most popular drink. It is so popular, that you can find several karak shops open 24 hours.
What is it, you may ask? It is a type of Qatari tea that contains milk, cardamom, and sugar. It is boiled three times to maximize the taste of the flavors.
Now, don’t underestimate the process; boiling the ingredients all together three times is a must, and any shortcuts will immediately affect the final taste.
Like we said, the people of Qatar are patient with the preparation of their food, because the result is always worth it!.'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Karaka',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 15),
                text:
                    '  Karaka is an exquisite Qatari tea lounge serving karak with various snacks',
              ),
            ]),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''A portion of traditional food of Qatar and one of the best Qatari dishes that can be tried as a snack, Warak Enab can be tasted at any time of the day. This is a light snack that is filled with a number of ingredients and is highly popular amongst travelers. Souq Waqif, one of the most popular places to visit in Qatar, is home to a range of restaurants and small cafés that serve Warak Enab in its most authentic taste.

The dish is often recognized by the name stuffed grape leaves and consists of ingredients like rice, herbs, lemon juice, tomatoes, salt, pepper, and so much more. One can also stuff the leaves with minced beef or lamb instead of rice.

Interestingly, you can also have this famous food in Qatar served as per your preference. So, if you're visiting Qatar on a holiday, make sure to taste Warak Enab from any authentic restaurant in the country.'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Shisha Garden',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 15),
                text: '  You really need to try Shisha gardens Warak Enab',
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
              '''Middle East is full of tempting dishes that expats and excursionist might have never heard about. But this is where the beauty of Qatar originated from. The food represents the cultural traditions and hospitality of the country and thus it is a thing that must be relished there. Thareed is amongst the most authentic food in Qatar that can be tried. Just like a pot of stew, Thareed consists of a blend of veggies, roots and meat of various animals. This popular Qatari it is usually served alongside bread and it is said to soak all the juices and give mouthful. This dish is popularly known as the Qatari style lasagna.'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Familiar with a samosa in India? Now taste the delicious Samboosa in Qatar. A delicacy that can be found in African and Chinese cuisines, Samboosa is often regarded as the modern version of stuffed fried dumplings. While Samosa is bigger in South Asia with a thick crust and potato filling, Samboosa is much smaller and is served in a thin crust.

In Qatar, travelers can find Samboosa served as street food at some of the finest joints in the country. This famous food in Qatar is stuffed with minced meat, spinach, or even cheese. The dish is also served with a range of chutneys, each with a completely different flavor.

But what about the Indian version and what similarities does it have with Samboosa? Well, in terms of looks, both Samosa and Samboosa look exactly the same. In fact, one can now find smaller versions of Samosas filled with cheese or chicken in India as well.

For foodies traveling in Qatar, this is a snack that can be tasted at any time of the day. However, evening tea time is probably the best. Places like Delhi Bakery in Doha Jadeeda or the Spice Market At W Doha Hotel & Residences are some of the best places to taste Samboosa'''),
        ),
      ],
    ),
    Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''We all know Shawarma, right? One of the most popular street foods around the world, not just in Qatar, Shawarma can be found easily on the streets of Doha. This is a snack that is prepared from boneless strips of chicken or beef which are stacked and then grilled on a rotating skewer. As the meat cooks slowly, the edges are sliced and wrapped in bread. Shawarma is often served with sauce, pickles, and fries. However, an interesting thing to note here is that every restaurant or street food outlet has its own style of preparing Shawarma.

For foodies, street food outlets in Qatar have multiple options as far as pieces of bread are concerned. One can opt for flat pita bread or an Arabic ghubuz, the choices are plenty. As for the prices, most street food joints in Qatar would serve you Shawarma at modest prices. Hence, travelers can keep it on their budget food list.'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Ever heard about a perfect blend of cake and biscuit? Well, that's Khanfaroush for you. Another popular traditional food in Qatar, this is a fried sweet that is aromatic in every sense and is served in the form of a disc. For travelers, this is a must-taste food in Doha and other parts of Qatar. Much like some other desserts served in the country, Khanfaroush is also deep-fried and is served with either sugar or a little drizzle of honey which adds to the taste of the dish.

But hang on, do you know what is the best part about Khanfaroush? Well, this dessert is crispy on the outside while the use of rosewater in the making process gives it a floral fragrance that is nothing short of dream-like for a foodie. The best part? It also enhanced the taste of the dish'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Hawn cafe',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 15),
                text: '  You just need to try it',
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
              '''Are you a foodie who likes to try all kinds of cuisines or a fussy eater who likes only certain kinds of flavors? Well, either way, you should give yourself a treat to some of the finest Qatari cuisine. A blend of the rich heritage and culture of Qatar is seen through its generosity, open-heartedness and hospitality. Its food is similar, as its flavors, taste and uniqueness are a part of its heritage. Baleelat is one of Qatar’s favorite traditional breakfasts that attracts people from around the world. It is often served as a dessert that represents the diversity of the yummy cuisine'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Another traditional food in Qatar, Luqaimat isn't just a popular food in Doha but in the whole country. This is a dish that is usually served in the Holy month of Ramadan when families and friends come together to enjoy a dessert-filled evening. Made with butter, milk, flour, sugar, saffron, and cardamom, Luqaimat has many similarities to a dumpling.

The dumplings are deep fried and then dipped in sugar syrup or honey. What comes next is a feast filled with sweetness and different flavors. This is a dish that is crunchy on the outside and soft on the inside which is set to satisfy your tooth.

Today, many restaurants in Qatar that serve authentic Qatari dishes serve Luqaimat to diners. This is, in fact, a delicacy that is prepared in just about every house in Qatar during the holy month of Ramadan. So, why not try Luqaimat at any restaurant in Qatar?'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Chai Halib',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 15),
                text: '  serves authentic Luqaimat',
              ),
            ]),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Have you tried one of the most delightful desserts in the Middle East? One of the most ideal desserts, Umm Ali is linked with Egypt, but the Middle East has its own style of making it. Like a bread pudding, Umm Ali is created with raisins, chopped buts and condensed milk and then baked till its brown and crispy on top, the sweetest dessert in Qatar.

Umm Ali has made a name for itself with desserts and pastries along with Karaki, a sweet Karak tea. The creamy filing with dried fruit and a blend of all kinds of spices, makes the mouth water. What more can anyone want when it comes to giving their mouth a treat to one of the most authentic deserts?'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Karaki',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 15),
                text:
                    '  Karaki is an exquisite Qatari tea lounge, serving karak(a special tea) with various snacks.',
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
              '''An Arabic street food in Qatar that is highly popular amongst the locals and travelers alike, Crepe is often called by the name Ragag. This may not be the best food in Qatar but it certainly has all the attributes to be a popular street snack in the country. In fact, most cafés and street food outlets in Qatar serve Crepe to tourists.

A paper-thin snack is folded or rolled in the shape of a cone and is often crispy. One can taste it with tea, a kebab, some toppings of cheese, eggs and so much more. Locals in Qatar also love to spread honey or a thick fish paste on the Crepe which enhances the flavor of the snack'''),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
                '''Perhaps the best food in Qatar that is largely connected to the hearts of natives, Machboos is a spiced rice dish that can be prepared by marinating chicken, beef, lamb, camel, or even fish. Being the national dish of Qatar, it is easy to find Machboos in the country as every restaurant offers it in one way or the other.For foodies, Machboos is a perfect blend of flavors, thanks to the slow cooking process of the dish.In fact, as far as Qatari dishes go, this is a dish you've got to try when in Qatar. But hang on, do you know what is interesting about Machboos? Well, every restaurant in Qatar has its own fusion of Machboos. While some serve it in their own way, other restaurants focus more on providing the most authentic taste.''')),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preffered Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Al Manchab ',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                text: 'Serves really nice Machboos(one of the best indeed)',
                style: kBlackText.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
      ],
    ),
    Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
              '''Saloona isn't a new name in Qatar Cuisine. This is a dish that can be prepared with virtually any kind of ingredients that are available. Highly popular in Qatar, most of the restaurant in Doha have Saloona on their menu. During family gatherings in Qatar, this is one dish that certainly features while the aroma of ginger, garlic along with beef, fish, or lamb makes it even more special.

As for the other ingredients, Saloona contains ingredients like tomatoes, aubergine, carrots, and potatoes. Usually, restaurants in the Qatari capital serve the dish with broth which is the way to go about enjoying it.

Wondering where you can taste it? Well, Saloona can be tried at many top restaurants in the country. This famous food in Qatar is available at restaurants in areas like Souq Waqif, or even the Pearl Qatar. There are many restaurants in Souq Waqif that serve Saloona in its authentic taste. So, visit any traditional restaurant and try the classic dish Saloona in Doha.'''),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Preferred Restaurant',
                style: boldStyle.copyWith(fontSize: 15),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Walima',
                style: boldStyle.copyWith(fontSize: 15),
              ),
              TextSpan(
                style: kBlackText.copyWith(fontSize: 17),
                text: '  serves one of the best Saloona in the country.',
              ),
            ]),
          ),
        ),
      ],
    ),
  ];

  List<String> titles = [
    'Kunafa',
    'Karak',
    'Warak Enab',
    'Thareed',
    'Samboosa',
    'Shawarma',
    'Khanfaroush',
    'Baleelat',
    'Luqaimat',
    'Umm Ali',
    'Crepe',
    'Machboos',
    'Saloona',
  ];

  List<String> titlesdesc = [
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
    'Situated in the capital outskirts of qatar',
  ];

  List<GestureDetector> getFoodsInQatar(BuildContext context) {
    List<GestureDetector> foodsList = [];
    for (int i = 0; i < imagespaths.length; i++) {
      String imagePath = imagespaths[i];
      String title = titles[i];
      String desc = titlesdesc[i];
      var newPlace = GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              PageTransition(
                  child: FoodsInQatarView(imagespaths[i], imagespaths2[i],
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
      foodsList.add(newPlace);
    }
    return foodsList;
  }
}
