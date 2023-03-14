import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class RestaurantInfoMediumCard extends StatelessWidget {
  const RestaurantInfoMediumCard({
    super.key,
    required this.title,
    required this.image,
    required this.deliveryTime,
    required this.rating,
    required this.press, required this.location,
  });

  final String title, image, location;
  final int deliveryTime;
  final double rating;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        borderRadius: BorderRadius.all(
            Radius.circular(20),
        ),
        onTap: press,
        child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0), //add border radius
          child: SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(image),
                  ),
                  const SizedBox(
                      height: defaultPadding/2
                  ),
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.montserrat(
                        textStyle:
                        Theme.of(context)
                            .textTheme.headline6),
                  ),
                  Text(
                      location,
                      maxLines: 1,
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(color: kBodyTextColor))),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2,
                    horizontal: defaultPadding),
                    child: DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding / 4,
                                vertical: defaultPadding / 8),
                            decoration: BoxDecoration(color: kActiveColor,
                              borderRadius:
                              BorderRadius.all(Radius.circular(6)),
                            ),
                            child: Text(
                                rating.toString(),
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(color: Colors.white))),
                          ),
                          Spacer(),
                          Text(
                              "$deliveryTime min",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: kBodyTextColor))),
                          Spacer(),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Color(0xFF868686),
                          ),
                          Spacer(),
                          Text(
                              "Free delivery",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(color: kBodyTextColor))),
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}