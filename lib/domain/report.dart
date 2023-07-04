class Report {
  String? Cycle;
  String? AuditID;
  String? AuditStatus;
  String? FoundStatus;
  String? DcID;
  String? DcName;
  String? ShopID;
  String? ShopName;
  String? ShopSegment;
  String? Region;
  String? Province;
  String? PageID;
  String? GroupID;
  String? QuestionID;
  String? Topic;
  String? Title;
  String? Module;
  int? Score;
  String? OverallImageUrl;
  String? FinalAnswer;
  String? AutoAnswer;
  String? AIAnswer; // แก้ไขชื่อฟิลด์เป็น AIAnswer ตรงกับชื่อใน JSON
  String? AnswerBy;
  String? AnswerDiff;
  String? ShelfShareDiff;
  String? PopDiff;
  String? ClusterDiff;
  String? ShelfLayoutDiff;
  String? IsAISkipped;
  String? ChallengeBy;
  String? AutoQuestion;
  String? DetectionStatus;
  String? SubmitByAuditorID;
  String? UpdateByAuditorID;
  String? CheckInDateTime;
  String? CheckOutDateTime;
  String? UpdateDateTime;
  String? QuestionTags;
  String? ScoreTags;
  String? QuestionRef1;
  String? QuestionRef2;
  String? ShopRef1;
  String? ShopRef2;
  String? BasketRef1;
  String? BasketRef2;

  Report({
    this.Cycle,
    this.AuditID,
    this.AuditStatus,
    this.FoundStatus,
    this.DcID,
    this.DcName,
    this.ShopID,
    this.ShopName,
    this.ShopSegment,
    this.Region,
    this.Province,
    this.PageID,
    this.GroupID,
    this.QuestionID,
    this.Topic,
    this.Title,
    this.Module,
    this.Score,
    this.OverallImageUrl,
    this.FinalAnswer,
    this.AutoAnswer,
    this.AIAnswer,
    this.AnswerBy,
    this.AnswerDiff,
    this.ShelfShareDiff,
    this.PopDiff,
    this.ClusterDiff,
    this.ShelfLayoutDiff,
    this.IsAISkipped,
    this.ChallengeBy,
    this.AutoQuestion,
    this.DetectionStatus,
    this.SubmitByAuditorID,
    this.UpdateByAuditorID,
    this.CheckInDateTime,
    this.CheckOutDateTime,
    this.UpdateDateTime,
    this.QuestionTags,
    this.ScoreTags,
    this.QuestionRef1,
    this.QuestionRef2,
    this.ShopRef1,
    this.ShopRef2,
    this.BasketRef1,
    this.BasketRef2,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(

      AuditID: json['AuditID'],
      AuditStatus: json['AuditStatus'],
      FoundStatus: json['FoundStatus'],
      DcID: json['DcID'],
      DcName: json['DcName'],
      ShopID: json['ShopID'],
      ShopName: json['ShopName'],
      ShopSegment: json['ShopSegment'],
      Region: json['Region'],
      Province: json['Province'],
      PageID: json['PageID'],
      GroupID: json['GroupID'],
      QuestionID: json['QuestionID'],
      Topic: json['Topic'],
      Title: json['Title'],
      Module: json['Module'],
      Score: json['Score'],
      OverallImageUrl: json['OverallImageUrl'],
      FinalAnswer: json['FinalAnswer'],
      AutoAnswer: json['AutoAnswer'],
      AIAnswer: json['Aianswer'], // แก้ไขชื่อฟิลด์เป็น aianswer ตรงกับชื่อใน JSON
      AnswerBy: json['AnswerBy'],
      AnswerDiff: json['AnswerDiff'],
      ShelfShareDiff: json['ShelfShareDiff'],
      PopDiff: json['PopDiff'],
      ClusterDiff: json['ClusterDiff'],
      ShelfLayoutDiff: json['ShelfLayoutDiff'],
      IsAISkipped: json['IsAISkipped'],
      ChallengeBy: json['ChallengeBy'],
      AutoQuestion: json['AutoQuestion'],
      DetectionStatus: json['DetectionStatus'],
      SubmitByAuditorID: json['SubmitByAuditorID'],
      UpdateByAuditorID: json['UpdateByAuditorID'],
      CheckInDateTime: json['CheckInDateTime'],
      CheckOutDateTime: json['CheckOutDateTime'],
      UpdateDateTime: json['UpdateDateTime'],
      QuestionTags: json['QuestionTags'],
      ScoreTags: json['ScoreTags'],
      QuestionRef1: json['QuestionRef1'],
      QuestionRef2: json['QuestionRef2'],
      ShopRef1: json['ShopRef1'],
      ShopRef2: json['ShopRef2'],
      BasketRef1: json['BasketRef1'],
      BasketRef2: json['BasketRef2'],
      Cycle: json['Cycle'],
    );
  }
  //
}
