import 'package:brick_breaker/src/config.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../brick_breaker.dart';
import 'overlay_screen.dart';
import 'score_card.dart';

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  @override
  Widget build(BuildContext context) {
    final game = BrickBreaker();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.pressStart2pTextTheme().apply(
          bodyColor: const Color(0xff184e77),
          displayColor: const Color(0xff184e77),
        ),
      ),
        
      home: Scaffold(
       body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffa9d6e5), Color(0xfff2e8cf)],
            ),
          ),
           child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Center(
                child: Column(                                 
                  children: [
                    ScoreCard(score: game.score),
                    Expanded(
                      child: FittedBox(
                        child: SizedBox(
                          width: gameWidth,
                          height: gameHeight,
           
          child: GameWidget(
            game: game,
            overlayBuilderMap: {
              'welcome': (context, _) => OverlayScreen(
                    title: 'TAP TO PLAY',
                    subtitle: 'Break all the bricks!',
                    onTap: game.startGame,
                  ),
              'gameOver': (context, _) => OverlayScreen(
                    title: 'GAME OVER',
                    subtitle: 'Tap to try again',
                    onTap: game.resetGame,
                  ),
              'won': (context, _) => OverlayScreen(
                    title: 'YOU WON!',
                    subtitle: 'Tap to play again',
                    onTap: game.resetGame,
                  ),
              'score': (context, _) => ScoreCard(score: game.score),
            },
            
          ),
        ),
      ),
    ),
                  ]
              )
              )
            )
           )
       )
      )
    );
    
  }
}
