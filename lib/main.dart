import 'package:cubit_state_management_practice/counter_cubit.dart';
import 'package:cubit_state_management_practice/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(create: (context){
    return CounterCubit();
  },child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
 centerTitle: true,
        title: Text("Counter Cubit"),
      ),
      body: BlocBuilder<CounterCubit,CounterState>(builder: (context,state){
        return Center(
            child: Text("Count Value : ${state.count}")
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        context.read<CounterCubit>().incrementCount();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
