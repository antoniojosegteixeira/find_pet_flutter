import 'package:dartz/dartz.dart';
import 'package:find_pet/core/error/failures.dart';
import 'package:find_pet/core/list_animals/entities/list_animals_page_entity.dart';

abstract class ListAnimalsRepository {
  Future<Either<Failure, ListAnimalsPageEntity>> listAnimals({
    String? name,
    String? sex,
    String? species,
    String? breed,
    String? color,
    String? age,
  });
}
