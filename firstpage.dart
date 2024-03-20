import 'package:flutter/material.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 700,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
            alignment:Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    content: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        Positioned(
                          right: -40,
                          top: -40,
                          child: InkResponse(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 236, 225, 224),
                              
                              child: Icon(Icons.close),
                            ),
                          ),
                        ),
                        Form(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: TextFormField(),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: ElevatedButton(
                                  child: const Text('Submit'),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Column(
                children: [SizedBox(height:600),
                  Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 214, 29),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'LoG In with Email',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Color.fromARGB(197, 0, 1, 4),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'REGISTER',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}
