import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<UsersRecord> filteredUsers(
  List<UsersRecord> users,
  String? searchQueryUsers,
) {
  final all = users;
  final q = (searchQueryUsers ?? '').trim().toLowerCase();

  if (q.isEmpty) {
    return all;
  }

  return all.where((u) {
    final nameMatch = u.name.toLowerCase().contains(q) ||
        u.lastName.toLowerCase().contains(q);

    final emailMatch = u.email.toLowerCase().contains(q);

    return nameMatch || emailMatch;
  }).toList();
}
