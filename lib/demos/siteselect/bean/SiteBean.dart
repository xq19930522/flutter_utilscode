

class  SiteBean{
  String  provinceName ;
  String  provinceId ;
  String  cityName ;
  String  cityId ;
  String  areaName ;
  String  areaId ;
  SiteBean({
    this.provinceName,
    this.provinceId,
    this.cityName,
    this.cityId,
    this.areaName,
    this.areaId,
  });
  factory SiteBean.fromJson(Map<String,dynamic> json) {
    return SiteBean(
      provinceName: json['provinceName'],
      provinceId: json['provinceId'],
      cityName: json['cityName'],
      cityId: json['cityId'],
      areaName: json['areaName'],
      areaId: json['areaId'],

    );
  }


}





