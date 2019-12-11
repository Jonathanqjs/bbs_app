import 'package:bbs_app/entity/block_entity.dart';
import 'package:bbs_app/entity/topic_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "BlockEntity") {
      return BlockEntity.fromJson(json) as T;
    } else if (T.toString() == "TopicEntity") {
      return TopicEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}