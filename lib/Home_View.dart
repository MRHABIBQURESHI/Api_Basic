import 'package:current3/Services.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
       child:  FutureBuilder(
        future: getUsers(), 
        builder: (context ,snapshot){
          if (snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context , index){
                return ListTile(
               title: Text(snapshot.data![index].name!),
               subtitle: Text(snapshot.data![index].address!.geo!.lat!),
                );
              });
            
          }
          return CircularProgressIndicator();
        },),
      )
    );
  }
}