import 'Gifts.dart';
import 'LiteratureGroups.dart';
import 'PhysicianGroups.dart';
import 'PhysicianSamples.dart';

class DataModel {
  List<Gifts>? gifts;
  List<PhysicianGroups>? physicianGroups;
  List<LiteratureGroups>? literatureGroups;
  List<PhysicianSamples>? physicianSamples;

  DataModel(
      {
        this.gifts,
        this.physicianGroups,
        this.literatureGroups,
        this.physicianSamples
      });

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['gifts'] != null) {
      gifts = <Gifts>[];
      json['gifts'].forEach((v) {
        gifts!.add(new Gifts.fromJson(v));
      });
    }
    if (json['physicianGroups'] != null) {
      physicianGroups = <PhysicianGroups>[];
      json['physicianGroups'].forEach((v) {
        physicianGroups!.add(new PhysicianGroups.fromJson(v));
      });
    }
    if (json['literatureGroups'] != null) {
      literatureGroups = <LiteratureGroups>[];
      json['literatureGroups'].forEach((v) {
        literatureGroups!.add(new LiteratureGroups.fromJson(v));
      });
    }
    if (json['physicianSamples'] != null) {
      physicianSamples = <PhysicianSamples>[];
      json['physicianSamples'].forEach((v) {
        physicianSamples!.add(new PhysicianSamples.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gifts != null) {
      data['gifts'] = this.gifts!.map((v) => v.toJson()).toList();
    }
    if (this.physicianGroups != null) {
      data['physicianGroups'] =
          this.physicianGroups!.map((v) => v.toJson()).toList();
    }
    if (this.literatureGroups != null) {
      data['literatureGroups'] =
          this.literatureGroups!.map((v) => v.toJson()).toList();
    }
    if (this.physicianSamples != null) {
      data['physicianSamples'] =
          this.physicianSamples!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}