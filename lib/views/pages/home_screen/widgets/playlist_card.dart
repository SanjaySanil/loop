import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop/routes/routes.dart';
import 'package:loop/views/widgets/section_header.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.playListScreen);
        },
        child: Container(
          height: 75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                        height: 50,
                        width: 50,
                        "https://www.befunky.com/images/prismic/1f427434-7ca0-46b2-b5d1-7d31843859b6_funky-focus-red-flower-field-after.jpeg?auto=avif,webp&format=jpg&width=863"),
                  ),
                  const SizedBox(width: 20),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionHeader(
                        title: "Romantic",
                        fontSize: 12,
                      ),
                      SectionHeader(
                        title: "Romantic",
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.play_fill,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
