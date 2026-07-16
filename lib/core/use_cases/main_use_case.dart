import 'package:multiple_result/multiple_result.dart';

import '../errors/failures.dart';

/// An abstract class representing a use case.
///
/// A use case is a class that encapsulates a specific business logic or operation.
/// It takes input parameters of type [Params] and returns a [Future] that resolves
/// to a [Either] object containing a value of type [Type] or a [Failure] object.
//! old one using fpdart package
// abstract class UseCase2<Type, Params> {
//   Future<Either<Failure, Type>> call(Params params);
// }

abstract class UseCase<Type, Params> {
  Future<Result<Type, Failure>> call(Params params);
}
