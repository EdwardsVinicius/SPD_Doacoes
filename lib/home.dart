import 'package:flutter/material.dart';
import 'package:flutter_maps/home_page.dart';
import 'package:flutter_maps/institutions_page.dart';
import 'package:flutter_maps/map_page.dart';
import 'package:flutter_maps/profile_page.dart';
// import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.groups), label: 'Instituições'),
          NavigationDestination(icon: Icon(Icons.pin_drop), label: 'Mapa'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: <Widget>[
            const HomePage(),
            const InstitutionsPage(),
            const MapPage(),
            const ProfilePage(),
          ][currentPageIndex],
        ),
      ),
    );
  }
}
