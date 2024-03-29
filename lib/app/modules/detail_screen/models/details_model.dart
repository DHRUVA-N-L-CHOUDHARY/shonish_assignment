class DetailsModel {
  String? eventId;
  String? title;
  String? description;
  String? payout;
  bool? isCompleted;
  int? payoutAmt;
  String? payoutCurrency;

  DetailsModel(
      {this.eventId,
      this.title,
      this.description,
      this.payout,
      this.isCompleted,
      this.payoutAmt,
      this.payoutCurrency});

  DetailsModel.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    title = json['title'];
    description = json['description'];
    payout = json['payout'];
    isCompleted = json['isCompleted'];
    payoutAmt = json['payout_amt'];
    payoutCurrency = json['payout_currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eventId'] = this.eventId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['payout'] = this.payout;
    data['isCompleted'] = this.isCompleted;
    data['payout_amt'] = this.payoutAmt;
    data['payout_currency'] = this.payoutCurrency;
    return data;
  }
}
