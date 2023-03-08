import 'package:flutter/material.dart';
import 'package:health_app_ui/utils/emoji_card_item.dart';
import 'package:health_app_ui/utils/exercise_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      ///BOTTOM NAVIGATION BAR
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.blue[700],
          showSelectedLabels: false,
          unselectedItemColor: Colors.blueGrey[100],
          backgroundColor: Colors.white,
          elevation: 0,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      ),

      ///SAFE AREA
      body: SafeArea(
        ///MAIN PARENT
        child: Column(
          children: [
            ///TOP HALF SECTION
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  ///NAME & NOTIFICATION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///NAME & DATE
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi, Pawan!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "28 May, 1996",
                            style: TextStyle(
                                color: Colors.blue[200],
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),

                      ///NOTIFICATION ICON
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[500],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),

                  ///SEARCH BAR
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),

                  ///HOW DO YOU FEEL?
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),

                  ///EMOJIS
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      EmojiItem(emoji: "😞", labelText: "Badly"),
                      EmojiItem(emoji: "☺️", labelText: "Fine"),
                      EmojiItem(emoji: "😁", labelText: "Well"),
                      EmojiItem(emoji: "😃", labelText: "Excellent"),
                    ],
                  ),
                ],
              ),
            ),

            ///BOTTOM HALF SECTION
            const SizedBox(height: 40),
            Expanded(
              ///BOTTOM SHEET PARENT
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),

                ///BOTTOM SHEET PADDING
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 8,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      ///EXERCISES TITLE AND DOTS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Exercises",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.black87,
                            size: 30,
                          ),
                        ],
                      ),

                      ///EXERCISES LIST
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseItem(
                              title: "Speaking skills",
                              numberOfExercises: 16,
                              iconBgColor: Colors.orangeAccent,
                              exerciseIcon: Icons.favorite,
                            ),
                            ExerciseItem(
                              title: "Reading speed",
                              numberOfExercises: 16,
                              iconBgColor: Colors.blueAccent,
                              exerciseIcon: Icons.book,
                            ),
                            ExerciseItem(
                              title: "Writing skills",
                              numberOfExercises: 16,
                              iconBgColor: Colors.pinkAccent,
                              exerciseIcon: Icons.edit,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
