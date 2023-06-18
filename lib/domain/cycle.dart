class Cycle{
  String? orgID;
  String? cycle;
  String? startDate;
  String? endDate;
  String? status;

  Cycle({
    this.orgID,
    this.cycle,
    this.startDate,
    this.endDate,
    this.status
});
  factory Cycle.fromJson(Map<String, dynamic> json)
  {
    return Cycle(
      orgID: json['org'],
      cycle: json['cycle'],
      startDate: json['startDate'],
      endDate: json['endDate'],
      status: json['status'],
    );
  }
}