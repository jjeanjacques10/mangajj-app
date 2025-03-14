import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mangajj/api/models/chapter.model.dart';
import 'package:mangajj/layout/colors.dart';
import 'package:shimmer/shimmer.dart';

class CardChapter extends StatelessWidget {
  final String? urlImage;
  final Chapter chapter;
  final void Function()? onTap;

  const CardChapter({
    Key? key,
    required this.chapter,
    required this.urlImage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: onTap,
            child: Container(
              width: size.width * 0.25,
              height: size.width * 0.25,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    SizedBox(
                      width: size.width * 0.25,
                      child: CachedNetworkImage(
                        imageUrl: urlImage ?? '',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Shimmer.fromColors(
                          child: Container(
                            width: size.width * 0.25,
                            height: size.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(30),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                          ),
                          baseColor: Colors.black12,
                          highlightColor: Colors.black26,
                        ),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                    if (chapter.status == 'Not Found')
                      Stack(
                        children: [
                          Container(
                            width: size.width * 0.25,
                            height: size.width * 0.25,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          Center(
                            child: SizedBox(
                              height: 35,
                              width: 35,
                              child: SvgPicture.asset(
                                'assets/svg/download.svg',
                              ),
                            ),
                          )
                        ],
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.25,
          child: Text(
            chapter.number,
            style: GoogleFonts.robotoCondensed(
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColors.textPrimary,
              ),
            ),
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
