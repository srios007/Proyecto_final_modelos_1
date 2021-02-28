import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_modelos_1/components/components.dart';
import 'package:proyecto_modelos_1/config/config.dart';

class Instructions extends StatefulWidget {
  @override
  _InstructionsState createState() => _InstructionsState();
}

class _InstructionsState extends State<Instructions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomProjectScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Los Patrones del Destino",
                style: GoogleFonts.poppins(textStyle: Styles.titleScene),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage('images/instrucciones.jpeg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Text.rich(
                  TextSpan(
                  text: 'Descripción: ',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Palette.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                    )
                  ),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Este es un proyecto de en el cual el usuario deberá recorrer y decidir la historia de los personajes del juego, tomando decisiones que pueden decidir entre la continuidad de la trama o la pérdida de la misma, este cuenta con algunos patrones de diseño que nos ayudaran a darle un toque más interesante y entretenido al juego.',
                        style: GoogleFonts.poppins(
                          textStyle: Styles.labelScene
                        )
                    ),
                  ]
                )
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Instrucciones",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Palette.mainBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.2
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text.rich(
                  TextSpan(
                    text: '- ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Palette.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: "Al dar inicio al juego se nos presentará la narración de una historia que te sumergirá en la aventura de nuestros héroes",
                        style: GoogleFonts.poppins(
                          textStyle: Styles.labelScene
                        )
                      ),
                    ]
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text.rich(
                    TextSpan(
                        text: '- ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Palette.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: "Poco a poco la historia te ira presentando algunas elecciones con las cuales cambiará el rumbo de esta.",
                              style: GoogleFonts.poppins(
                                  textStyle: Styles.labelScene
                              )
                          ),
                        ]
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text.rich(
                    TextSpan(
                        text: '- ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Palette.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                              text: "Deberás escoger entre una de ellas y además tendrás la opción de volver en ellas para corregir algún fallo.",
                              style: GoogleFonts.poppins(
                                  textStyle: Styles.labelScene
                              )
                          ),
                        ]
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text.rich(
                    TextSpan(
                        text: '- ',
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: Palette.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                              text: "Por último, disfruta de la aventura.",
                              style: GoogleFonts.poppins(
                                  textStyle: Styles.labelScene
                              )
                          ),
                        ]
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

