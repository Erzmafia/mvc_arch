import 'package:flutter/material.dart';
import 'package:mvc_arch/Controllers/Controller.dart';




class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  final Controller _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVC Pattern'),
        centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _controller !=null ? '${_controller.counter}' : "0",
            style: TextStyle(fontSize: 40),
          ),

          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    _controller.decrement();
                  });
                },
                child: Icon(Icons.remove),
              ),
              const SizedBox(width: 20,),
              FloatingActionButton(
                onPressed: (){
                  setState(() {
                    _controller.increment();
                  });
                },
                child: Icon(Icons.add),
              )
            ],
          )
        ]
      ),
    );
  }
}
