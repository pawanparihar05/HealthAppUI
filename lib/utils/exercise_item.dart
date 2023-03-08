import 'package:flutter/material.dart';

/// EXERCISE LIST ITEM
class ExerciseItem extends StatelessWidget {
  //params
  final String title;
  final int numberOfExercises;
  final IconData exerciseIcon;
  final Color? iconBgColor;

  //constructor
  const ExerciseItem(
      {Key? key,
      required this.title,
      required this.numberOfExercises,
      required this.exerciseIcon,
      required this.iconBgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///LIST ITEM PARENT
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, //New
                blurRadius: 5.0,
                offset: Offset(0, 5))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ///TITLE AND MORE ICON
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ///ICON
                    Container(
                      decoration: BoxDecoration(
                        color: iconBgColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        exerciseIcon,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    ///TITLE AND NUMBER OF EXERCISES
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "$numberOfExercises Exercises",
                          style: TextStyle(
                            color: Colors.blueGrey[400],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                ///MORE ICON
                Icon(
                  Icons.more_horiz,
                  color: Colors.blueGrey[400],
                  size: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
