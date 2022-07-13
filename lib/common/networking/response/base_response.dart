class AppBaseResponse<D> {

  AppBaseResponse();

  AppBaseResponse.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson() => <String, dynamic>{

  };

}


AppBaseResponse computeParseAppResponse(dynamic json) {
  return AppBaseResponse.fromJson(json as Map<String, dynamic>);
}
