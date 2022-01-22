// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:grpc/grpc.dart';

// ignore: one_member_abstracts
abstract class UseCase<Type, Object> {
  Future<Either<GrpcError, Type>> call(Object params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
