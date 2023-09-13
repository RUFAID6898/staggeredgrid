import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' StaggeredGrid'),
        ),
        body: ListView(
          children: [
            StaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/me1.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: image('assets/imag/fam.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: image('assets/imag/brother.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: image('assets/imag/me2.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/fam.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/car.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/car1.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/me2.jpg')),
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: image('assets/imag/me3.jpg'))
                ]),
          ],
        ));
  }

  image(imagepath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        imagepath,
        fit: BoxFit.cover,
      ),
    );
  }
}
