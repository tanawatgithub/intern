class Cycle{
  int? numberID;
  String? orgID;
  String? cycle;
  String? startDate;
  String? endDate;
  String? status;


  Cycle({
    this.numberID,
    this.orgID,
    this.cycle,
    this.startDate,
    this.endDate,
    this.status,

});
  factory Cycle.fromJson(Map<String, dynamic> json)
  {
    return Cycle(
     //numberID: json['numberID'],
      orgID: json['orgID'],
      cycle: json['cycle'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      status: json['status'],
    );
  }
}