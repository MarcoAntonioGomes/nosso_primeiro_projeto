
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/difficulty.dart';
import 'dart:math' as math;

class Task extends StatefulWidget {
  final String nome;
  final String foto;
  final int dificuldade;

  const Task({super.key, required this.foto, required this.nome, required this.dificuldade});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  Mastery mastery = Mastery();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration (
            borderRadius: BorderRadius.circular(4),
            color: mastery.getMasteryColor(nivel, widget.dificuldade),
          ),
          height: 140,
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.black26,
                    ),
                    width: 72,
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.network(
                        widget.foto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.nome,
                                style: const TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis)),
                            Difficulty(difficultyLevel: widget.dificuldade)
                          ],
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 60,
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(12), // <-- Radius
                            )),
                        onPressed: () {
                          setState(() {
                            nivel++;
                          });
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.arrow_drop_up,
                              color: Colors.white,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              'UP',
                              style:
                              TextStyle(fontSize: 10, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: LinearProgressIndicator(
                        color: Colors.white, value: nivel / 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Nivel: $nivel',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }
}

class Mastery {

  int counter = 0;
  Color difficultyOneColor = Colors.lightBlue;
  Color difficultyTwoColor = Colors.lightBlue;
  Color difficultyThreeColor = Colors.lightBlue;
  Color difficultyFourColor = Colors.lightBlue;
  Color difficultyFiveColor = Colors.lightBlue;

  Color getMasteryColor(final int level, final int difficulty){

    if(difficulty == 1 && (counter + 2) == level){
      counter += 2;
      difficultyOneColor = getRandomColor();
      return difficultyOneColor;
    }
    else if(difficulty == 1){
      return difficultyOneColor;
    }


    if(difficulty == 2 && (counter + 3) == level){
      counter += 3;
      difficultyTwoColor = getRandomColor();
      return difficultyTwoColor;
    }else if(difficulty == 2) {
      return difficultyTwoColor;
    }

    if(difficulty == 3 && (counter + 4) == level){
      counter += 4;
      difficultyThreeColor = getRandomColor();
      return difficultyThreeColor;
    }else if(difficulty == 3) {
      return difficultyThreeColor;
    }

    if(difficulty == 4 && (counter + 5) == level){
      counter += 5;
      difficultyFourColor = getRandomColor();
      return  difficultyFourColor;
    }else if(difficulty == 4) {
      return  difficultyFourColor;
    }

    if(difficulty == 5 && (counter + 6) == level){
      counter += 6;
      difficultyFiveColor = getRandomColor();
      return  difficultyFiveColor;
    }else if(difficulty == 5) {
      return  difficultyFiveColor;
    }

    return Colors.lightBlue;

  }

  getRandomColor(){
   return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}