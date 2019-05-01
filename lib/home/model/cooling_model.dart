///菜品数据模型
class CoolingModel {
  ///图片地址
  final String imgUrl;

  ///评分
  final double grade;

  ///菜品名称
  final String name;

  ///已做人数
  final int doPeopleNum;

  const CoolingModel(this.imgUrl, this.name, this.doPeopleNum, this.grade);

  ///获取列表数据
  static List<CoolingModel> getModels() {
    List<CoolingModel> coolings = List();
    coolings.add(CoolingModel(
        "http://i2.chuimg.com/12612b0288ad11e6b87c0242ac110003_1239w_1209h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        "红烧肉沫茄子",
        18987,
        7.9));
    coolings.add(CoolingModel(
        "http://i2.chuimg.com/b44e5c2a8a6811e6a9a10242ac110002_2048w_1537h.jpg?imageView2/2/w/660/interlace/1/q/90",
        "红烧肉",
        14093,
        8.7));

    coolings.add(CoolingModel(
        "http://i2.chuimg.com/9c636bbe885111e6b87c0242ac110003_650w_650h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90",
        "土豆炖牛肉",
        6303,
        8.3));
    coolings.add(CoolingModel(
        "http://i2.chuimg.com/1a974eba874911e6a9a10242ac110002_600w_450h.jpg?imageView2/2/w/660/interlace/1/q/90",
        "鱼香肉丝",
        15388,
        8.3));
    coolings.add(CoolingModel(
        "http://i1.chuimg.com/f39de70e874511e6a9a10242ac110002_3888w_2592h.jpg@2o_50sh_1pr_1l_660w_90q_1wh",
        "酸辣白菜",
        3039,
        7.5));
    coolings.add(CoolingModel(
        "http://i2.chuimg.com/24232296874a11e6b87c0242ac110003_800w_619h.jpg?imageView2/2/w/660/interlace/1/q/90",
        "韭黄炒鸡蛋",
        524,
        7.4));
    return coolings;
  }
}
