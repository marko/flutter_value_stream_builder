library flutter_value_stream_builder;

import 'package:flutter/widgets.dart';
import 'package:rxdart/streams.dart';

class ValueStreamBuilder<T> extends StreamBuilder<T> {
  ValueStreamBuilder({
    Key? key,
    required ValueStream<T> valueStream,
    required AsyncWidgetBuilder<T> builder,
  }) : super(
          key: key,
          initialData: valueStream.valueOrNull,
          stream: valueStream,
          builder: builder,
        );
}
