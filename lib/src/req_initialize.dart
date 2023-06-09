/*
 *  Copyright (c) TIKI Inc.
 *  MIT license. See LICENSE file in root directory.
 */

import 'req.dart';

class ReqInitialize extends Req {
  String? publishingId;
  String? origin;
  String? id;
  String? dir;

  ReqInitialize(
      {this.publishingId, this.origin, this.id, this.dir, String? requestId})
      : super(requestId);

  ReqInitialize.from(Map<String, dynamic>? map) : super(map?["requestId"]) {
    publishingId = map?['publishingId']!;
    origin = map?['origin']!;
    id = map?['id'];
    dir = map?['dir'];
  }
}
