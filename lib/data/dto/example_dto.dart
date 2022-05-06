
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_base/domain/entity/entity.dart';
part 'example_dto.g.dart';

@JsonSerializable()
class ExampleDto extends Entity {

  @override
  final String id;
  ExampleDto(this.id);

  factory ExampleDto.fromJson(Map<String, dynamic> json) => _$ExampleDtoFromJson(json);


  Map<String, dynamic> toJson() => _$ExampleDtoToJson(this);

}