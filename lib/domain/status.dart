class Status{

  String? d;
  String? i;
  String? c;
  String? n;
  String? s;

  Status({
    this.d,
    this.i,
    this.c,
    this.n,
    this.s
  });

  factory Status.fromJson(Map<String, dynamic> json){
    return Status(
        d: json['status'],
        i: json['status'],
        c: json['status'],
        n: json['status'],
        s: json['status']

    );
  }
}