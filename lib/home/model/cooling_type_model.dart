///菜品分类
class CoolingTypeModel {
  ///类型名称
  final String name;

  ///类型图片
  final String iconUrl;

  ///id
  final int id;

  const CoolingTypeModel(this.name, this.iconUrl, this.id);

  static List<CoolingTypeModel> getTypes() {
    List<CoolingTypeModel> coolingTypes = List<CoolingTypeModel>();
    coolingTypes.add(CoolingTypeModel(
        "家常菜",
        "http://i1.chuimg.com/ed35e338873811e6b87c0242ac110003_450w_600h.jpg@2o_50sh_1pr_1l_215w_136h_1c_1e_90q_1wh",
        1));
    coolingTypes.add(CoolingTypeModel(
        "快手菜",
        "http://i2.chuimg.com/e9faf88ced9711e6bc9d0242ac110002_1440w_1080h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        2));
    coolingTypes.add(CoolingTypeModel(
        "下饭菜",
        "http://i1.chuimg.com/746b5b3e87d011e6a9a10242ac110002_3420w_2592h.jpg@2o_50sh_1pr_1l_215w_136h_1c_1e_90q_1wh",
        3));
    coolingTypes.add(CoolingTypeModel(
        "汤羹",
        "http://i2.chuimg.com/e80eb34e887311e6b87c0242ac110003_1728w_1152h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        4));
    coolingTypes.add(CoolingTypeModel(
        "肉",
        "http://i2.chuimg.com/d6b25daa881c11e6a9a10242ac110002_640w_530h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        5));
    coolingTypes.add(CoolingTypeModel(
        "素食主义",
        "http://i2.chuimg.com/c48a4f9c5bad46eebbad97753ef63155_1656w_1242h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        6));
    return coolingTypes;
  }
}
