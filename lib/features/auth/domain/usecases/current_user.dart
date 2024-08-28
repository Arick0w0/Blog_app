import 'package:flutter_provider101/core/error/failures.dart';
import 'package:flutter_provider101/core/usecase/usecase.dart';
import 'package:flutter_provider101/core/common/entities/user.dart';
import 'package:flutter_provider101/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUser implements UseCase<User, NoParams> {
  final AuthRepository authRepository;
  CurrentUser(this.authRepository);
  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.currentUser();
  }
}
