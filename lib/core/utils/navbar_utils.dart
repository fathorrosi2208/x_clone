import 'package:flutter/material.dart';

List<BottomNavigationBarItem> appBarDestinations = [
  const BottomNavigationBarItem(
    tooltip: '',
    icon: Icon(
      Icons.home,
    ),
    activeIcon: Icon(Icons.home_filled),
    label: 'Home',
  ),
  const BottomNavigationBarItem(
    tooltip: '',
    icon: Icon(Icons.search),
    activeIcon: Icon(Icons.search),
    label: 'Search',
  ),
  const BottomNavigationBarItem(
    tooltip: '',
    icon: Icon(
      Icons.favorite_border,
    ),
    activeIcon: Icon(
      Icons.favorite,
    ),
    label: 'Favorites',
  ),
  const BottomNavigationBarItem(
    tooltip: '',
    icon: Icon(
      Icons.person_outline,
    ),
    activeIcon: Icon(
      Icons.person_rounded,
    ),
    label: 'Profile',
  ),
];
