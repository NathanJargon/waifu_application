import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/restaurant_info_medium_card.dart';
import 'package:flutter_application_1/components/section_title.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../demoData.dart';
import 'image_carousel.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(// better scrollview
        body: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                floating: true,
                backgroundColor: Colors.white,
                centerTitle: true,
                title: Column(
                  children: [
                    Text(
                        'Welcome To'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(color: kActiveColor))
                    ),
                    Text(
                        'Waifu Shop'.toUpperCase(),
                        style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.black))),
                  ],),
                actions: [TextButton(onPressed: () {},
                    child: Text("Filter", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: Colors.black))
                    ))],), // we can't use all widgets here so we use adapter
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: ImageCarousel(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: SectionTitle(
                    title: "Featured Waifus",
                    press: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(demoMediumCardData.length, (index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: defaultPadding),
                            child: RestaurantInfoMediumCard(
                              title: demoMediumCardData[index]["name"],
                              location: demoMediumCardData[index]["location"],
                              rating: demoMediumCardData[index]["rating"],
                              image: demoMediumCardData[index]["image"],
                              deliveryTime: demoMediumCardData[index]["deliveryTime"],
                              press: () {},
                            ),
                          ),),
                    ),
                  )
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: defaultPadding, left: defaultPadding, right: defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: Image.asset("assets/9.jpg"),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(defaultPadding),
                sliver: SliverToBoxAdapter(
                  child: SectionTitle(
                    title: "Best Waifus",
                    press: () {},
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(demoMediumCardData.length, (index) =>
                          Padding(
                            padding: const EdgeInsets.only(left: defaultPadding),
                            child: RestaurantInfoMediumCard(
                              title: demoMediumCardData[index]["name"],
                              location: demoMediumCardData[index]["location"],
                              rating: demoMediumCardData[index]["rating"],
                              image: demoMediumCardData[index]["image"],
                              deliveryTime: demoMediumCardData[index]["deliveryTime"],
                              press: () {},
                            ),
                          ),),
                    ),
                  )
              ),
            ]));
  }
}


