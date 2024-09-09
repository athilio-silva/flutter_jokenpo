import 'package:flutter/material.dart';
import 'package:flutter_jokenpo_v2/home/home_controler.dart';

class Popup extends StatelessWidget {
  final HomeControler homeControler;

  const Popup({super.key, required this.homeControler});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: homeControler,
        builder: (BuildContext context, Widget? child) {
          return Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: const Color.fromARGB(124, 61, 61, 61),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Column(
                      children: [
                        Text(
                          homeControler.message,
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: homeControler.closePopup,
                          child: const Text(
                            'Jogar novamente',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
