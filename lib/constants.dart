import 'package:flutter/material.dart';

const containerCornerDecor = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(25),
    topRight: Radius.circular(25),
  ),
);

const addTaskFieldDecor = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlueAccent, width: 3),
  ),
);
