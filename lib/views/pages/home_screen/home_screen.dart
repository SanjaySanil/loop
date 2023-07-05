import 'package:flutter/material.dart';
import 'package:loop/views/pages/home_screen/widgets/songs_card.dart';
import 'package:loop/views/widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800.withOpacity(0.8),
            Colors.deepPurple.shade300.withOpacity(0.8),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.grid_view_rounded),
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf7cjBh8rg0Pbd7o0YmzdiVtvQSFGFo3AIeCrFI494&s"),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.deepPurple.shade800,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: "Play",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline),
              label: "Profile",
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(12),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _DiscoverMusic(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SectionHeader(title: "Trending Music"),
                    SectionHeader(
                      title: "View More",
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
                SizedBox(height:20),
                _TrendingMusic()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height*0.27,
      child: ListView.builder(
        shrinkWrap:true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => const SongsCard()
      ),
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: "Welcome",
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        const SizedBox(
          height: 5,
        ),
        const SectionHeader(title: "Enjoy your favorite music"),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Search",
            isDense: true,
            hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Colors.grey.shade400,
                ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
