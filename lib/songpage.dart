import 'package:flutter/material.dart';
import 'package:music_player_v01/neubox.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(child: Icon(Icons.arrow_back)),
                ),
                const Text('P L A Y L I S T'),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: NeuBox(child: Icon(Icons.menu)),
                ),
              ],
            ),
            const SizedBox(
              height: 27.0,
            ),
            NeuBox(
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset('lib/Images/Jupitormazha.jpg')),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dhawin KB,Apoorva Sandhya',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey.shade700),
                            ),
                            const SizedBox(height: 6),
                            const Text(
                              'Jupitor Mazha',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 22),
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('00:00'),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text('03:41'),
              ],
            ),
            SizedBox(height: 30),
            NeuBox(
              child: LinearPercentIndicator(
                lineHeight: 10,
                percent: .5,
                progressColor: Colors.green,
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Expanded(
                      child: NeuBox(
                          child: Icon(
                    Icons.skip_previous,
                    size: 32,
                  ))),
                  Expanded(
                      flex: 2,
                      child: NeuBox(
                          child: Icon(
                        Icons.play_arrow,
                        size: 32,
                      ))),
                  Expanded(
                      child: NeuBox(
                          child: Icon(
                    Icons.skip_next,
                    size: 32,
                  ))),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
