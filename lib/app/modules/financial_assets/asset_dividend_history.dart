class AssetDividendHistory {
  int assetId;
  DateTime dateCom;
  DateTime datePayement;
  double dividendValue;
  

  factory AssetDividendHistory.fromJson(Map<String, dynamic> json){
    return AssetDividendHistory(
      assetId: json['id'],
      dateCom: json['dateCom'],

    )
  }

}
