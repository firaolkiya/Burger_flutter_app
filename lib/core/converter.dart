
import 'package:groceries/features/groceries/data/model/option_model.dart';
import 'package:groceries/features/groceries/domain/entities/option_entity.dart';

List<OptionEntity> JsonToOptionConvereter(List<dynamic> data){
  return data.map((e) => OptionModel.fromJson(e)).toList();
}