class Quotes {
    double? uSDEUR;
    double? uSDGBP;
    double? uSDCAD;
    double? uSDPLN;
    double? uSDRUB;

    Quotes({this.uSDEUR, this.uSDGBP, this.uSDCAD, this.uSDPLN, this.uSDRUB}); 

    Quotes.fromJson(Map<String, dynamic> json) {
        uSDEUR = json['USDEUR'];
        uSDGBP = json['USDGBP'];
        uSDCAD = json['USDCAD'];
        uSDPLN = json['USDPLN'];
        uSDRUB = json['USDRUB'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['USDEUR'] = uSDEUR;
        data['USDGBP'] = uSDGBP;
        data['USDCAD'] = uSDCAD;
        data['USDPLN'] = uSDPLN;
        data['USDRUB'] = uSDRUB;
        return data;
    }
}