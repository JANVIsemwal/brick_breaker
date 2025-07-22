import 'package:flutter/material.dart';

const brickColors = [                                           // Add this const
  Color.fromARGB(255, 240, 6, 10),
  Color.fromARGB(255, 245, 92, 10),
  Color.fromARGB(255, 250, 143, 12),
  Color(0xfff9844a),
  Color(0xfff9c74f),
  Color(0xff90be6d),
  Color(0xff43aa8b),
  Color(0xff4d908e),
  Color.fromARGB(255, 65, 182, 232),
  Color.fromARGB(255, 44, 116, 179),
];

const gameWidth = 820.0;
const gameHeight = 1600.0;
const ballRadius = gameWidth * 0.02;
const batWidth = gameWidth * 0.2;
const batHeight = ballRadius * 2;
const batStep = gameWidth * 0.05;
const brickGutter = gameWidth * 0.015;
final brickWidth = (gameWidth - (brickGutter * (brickColors.length +1))) / brickColors.length;
const brickHeight = gameHeight * 0.03;
const difficultyModifier = 1.03;
