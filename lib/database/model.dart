class EventDataModel {
  String? id;
  int? serialId;
  String? createdAt;
  String? updatedAt;
  String? preAssessmentLink;
  String? postAssessmentLink;
  int? capacity;
  ContactPerson? contactPerson;
  Speaker? speaker;
  List<String>? courseTags;
  List<String>? deliverables;
  String? description;
  String? eventEnd;
  String? eventStart;
  bool? externalEvent;
  String? joiningLink;
  int? maxTeamMembers;
  List<String>? notes;
  String? registrationDeadline;
  String? externalRegistrationLink;
  bool? teamRequired;
  String? bannerLink;
  String? posterLink;
  String? videoLink;
  String? title;
  String? venue;
  String? createdBy;
  String? thumbnail;

  EventDataModel(
      {this.id,
      this.serialId,
      this.createdAt,
      this.updatedAt,
      this.preAssessmentLink,
      this.postAssessmentLink,
      this.capacity,
      this.contactPerson,
      this.speaker,
      this.courseTags,
      this.deliverables,
      this.description,
      this.eventEnd,
      this.eventStart,
      this.externalEvent,
      this.joiningLink,
      this.maxTeamMembers,
      this.notes,
      this.registrationDeadline,
      this.externalRegistrationLink,
      this.teamRequired,
      this.bannerLink,
      this.posterLink,
      this.videoLink,
      this.title,
      this.venue,
      this.createdBy,
      this.thumbnail});

  EventDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serialId = json['serial_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    preAssessmentLink = json['pre_assessment_link'];
    postAssessmentLink = json['post_assessment_link'];
    capacity = json['capacity'];
    contactPerson = json['contact_person'] != null
        ? new ContactPerson.fromJson(json['contact_person'])
        : null;
    speaker =
        json['speaker'] != null ? new Speaker.fromJson(json['speaker']) : null;
    courseTags =
        json['course_tags'] != null ? json['course_tags'].cast<String>() : [];
    deliverables =
        json['deliverables'] != null ? json['deliverables'].cast<String>() : [];
    description = json['description'];
    eventEnd = json['event_end'];
    eventStart = json['event_start'];
    externalEvent = json['external_event'];
    joiningLink = json['joining_link'];
    maxTeamMembers = json['max_team_members'];
    notes = json['notes'] != null ? json['notes'].cast<String>() : [];
    registrationDeadline = json['registration_deadline'];
    externalRegistrationLink = json['external_registration_link'];
    teamRequired = json['team_required'];
    bannerLink = json['banner_link'];
    posterLink = json['poster_link'];
    videoLink = json['video_link'];
    title = json['title'];
    venue = json['venue'];
    createdBy = json['created_by'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['serial_id'] = this.serialId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['pre_assessment_link'] = this.preAssessmentLink;
    data['post_assessment_link'] = this.postAssessmentLink;
    data['capacity'] = this.capacity;
    if (this.contactPerson != null) {
      data['contact_person'] = this.contactPerson!.toJson();
    }
    if (this.speaker != null) {
      data['speaker'] = this.speaker!.toJson();
    }
    data['course_tags'] = this.courseTags;
    data['deliverables'] = this.deliverables;
    data['description'] = this.description;
    data['event_end'] = this.eventEnd;
    data['event_start'] = this.eventStart;
    data['external_event'] = this.externalEvent;
    data['joining_link'] = this.joiningLink;
    data['max_team_members'] = this.maxTeamMembers;
    data['notes'] = this.notes;
    data['registration_deadline'] = this.registrationDeadline;
    data['external_registration_link'] = this.externalRegistrationLink;
    data['team_required'] = this.teamRequired;
    data['banner_link'] = this.bannerLink;
    data['poster_link'] = this.posterLink;
    data['video_link'] = this.videoLink;
    data['title'] = this.title;
    data['venue'] = this.venue;
    data['created_by'] = this.createdBy;
    data['thumbnail'] = this.thumbnail;
    return data;
  }
}

class ContactPerson {
  String? name;
  String? email;
  String? phone;
  String? designation;
  String? linkedInUrl;

  ContactPerson(
      {this.name, this.email, this.phone, this.designation, this.linkedInUrl});

  ContactPerson.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    designation = json['designation'];
    linkedInUrl = json['linkedInUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['designation'] = this.designation;
    data['linkedInUrl'] = this.linkedInUrl;
    return data;
  }
}

class Speaker {
  String? name;
  String? linkedin;
  String? designation;

  Speaker({this.name, this.linkedin, this.designation});

  Speaker.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    linkedin = json['linkedin'];
    designation = json['designation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['linkedin'] = this.linkedin;
    data['designation'] = this.designation;
    return data;
  }
}

class Prerequisites {
  int? time;
  List<Blocks>? blocks;
  String? version;

  Prerequisites({this.time, this.blocks, this.version});

  Prerequisites.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    if (json['blocks'] != null) {
      blocks = <Blocks>[];
      json['blocks'].forEach((v) {
        blocks!.add(new Blocks.fromJson(v));
      });
    }
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time'] = this.time;
    if (this.blocks != null) {
      data['blocks'] = this.blocks!.map((v) => v.toJson()).toList();
    }
    data['version'] = this.version;
    return data;
  }
}

class Blocks {
  String? id;
  Data? data;
  String? type;

  Blocks({this.id, this.data, this.type});

  Blocks.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['type'] = this.type;
    return data;
  }
}

class Data {
  String? text;

  Data({this.text});

  Data.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    return data;
  }
}
