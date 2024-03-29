import 'package:find_pet/core/list_animals/entities/list_animals_page_entity.dart';
import 'package:find_pet/core/list_animals/models/list_animals_result_model.dart';

class ListAnimalsPageModel extends ListAnimalsPageEntity {
  const ListAnimalsPageModel({
    required super.count,
    super.next,
    super.previous,
    required super.results,
  });

  factory ListAnimalsPageModel.fromJson(Map<String, dynamic> json) =>
      ListAnimalsPageModel(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<ListAnimalsResultModel>.from(
            json["results"].map((x) => ListAnimalsResultModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}
