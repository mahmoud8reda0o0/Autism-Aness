class LoginModel {
  String? refresh;
  String? access;
  String detail="من فضلك أعد إدخال البيانات صحيحة";

  LoginModel({this.refresh, this.access});

  LoginModel.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    access = json['access'];
    //detail = json['detail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['refresh'] = this.refresh;
    data['access'] = this.access;
    //data['detail'] = this.detail;
    return data;
  }
}