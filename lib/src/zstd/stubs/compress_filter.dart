// Copyright (c) 2021, Instantiations, Inc. Please see the AUTHORS
// file for details. All rights reserved. Use of this source code is governed by
// a BSD-style license that can be found in the LICENSE file.

import '../../../framework.dart';

/// Class that provides suitable stubs for [ZstdCompressFilter]s in non-IO
/// environments.
///
/// This includes:
/// - [doProcessing] stubs that throw [UnsupportedError].
class ZstdCompressFilter extends DartCodecFilterBase {
  /// Construct the [ZstdCompressFilter] with the optional parameters.
  ZstdCompressFilter(
      {int? level,
      int inputBufferLength = 16386,
      int outputBufferLength = 16386})
      : super(
            inputBufferLength: inputBufferLength,
            outputBufferLength: outputBufferLength);

  /// Raise an [UnsupportedError] for missing codec filter.
  @override
  CodecResult doProcessing(
      DartCodecBuffer inputBuffer, DartCodecBuffer outputBuffer) {
    throw UnsupportedError('No CodecFilter Implementation');
  }
}
