// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library smoke_test.iam.model.invalid_public_key_exception; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'invalid_public_key_exception.g.dart';

/// The request was rejected because the public key is malformed or otherwise invalid.
abstract class InvalidPublicKeyException
    with _i1.AWSEquatable<InvalidPublicKeyException>
    implements
        Built<InvalidPublicKeyException, InvalidPublicKeyExceptionBuilder>,
        _i2.SmithyHttpException {
  /// The request was rejected because the public key is malformed or otherwise invalid.
  factory InvalidPublicKeyException({String? message}) {
    return _$InvalidPublicKeyException._(message: message);
  }

  /// The request was rejected because the public key is malformed or otherwise invalid.
  factory InvalidPublicKeyException.build(
          [void Function(InvalidPublicKeyExceptionBuilder) updates]) =
      _$InvalidPublicKeyException;

  const InvalidPublicKeyException._();

  /// Constructs a [InvalidPublicKeyException] from a [payload] and [response].
  factory InvalidPublicKeyException.fromResponse(
    InvalidPublicKeyException payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload.rebuild((b) {
        b.headers = response.headers;
      });

  static const List<_i2.SmithySerializer<InvalidPublicKeyException>>
      serializers = [InvalidPublicKeyExceptionAwsQuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(InvalidPublicKeyExceptionBuilder b) {}
  @override
  String? get message;
  @override
  _i2.ShapeId get shapeId => const _i2.ShapeId(
        namespace: 'com.amazonaws.iam',
        shape: 'InvalidPublicKeyException',
      );
  @override
  _i2.RetryConfig? get retryConfig => null;
  @override
  @BuiltValueField(compare: false)
  int get statusCode => 400;
  @override
  @BuiltValueField(compare: false)
  Map<String, String>? get headers;
  @override
  Exception? get underlyingException => null;
  @override
  List<Object?> get props => [message];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('InvalidPublicKeyException')
      ..add(
        'message',
        message,
      );
    return helper.toString();
  }
}

class InvalidPublicKeyExceptionAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<InvalidPublicKeyException> {
  const InvalidPublicKeyExceptionAwsQuerySerializer()
      : super('InvalidPublicKeyException');

  @override
  Iterable<Type> get types => const [
        InvalidPublicKeyException,
        _$InvalidPublicKeyException,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  InvalidPublicKeyException deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidPublicKeyExceptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'message':
          result.message = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    InvalidPublicKeyException object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'InvalidPublicKeyExceptionResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final InvalidPublicKeyException(:message) = object;
    if (message != null) {
      result$
        ..add(const _i2.XmlElementName('message'))
        ..add(serializers.serialize(
          message,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
