import 'package:cleancodeprovider/generated/json/base/json_convert_content.dart';
import 'package:cleancodeprovider/features/auth/domain/models/events_entity.dart';

EventsEntity $EventsEntityFromJson(Map<String, dynamic> json) {
  final EventsEntity eventsEntity = EventsEntity();
  final EventsEmbedded? embedded = jsonConvert.convert<EventsEmbedded>(
      json['_embedded']);
  if (embedded != null) {
    eventsEntity.embedded = embedded;
  }
  final EventsLinks? links = jsonConvert.convert<EventsLinks>(json['_links']);
  if (links != null) {
    eventsEntity.links = links;
  }
  final EventsPage? page = jsonConvert.convert<EventsPage>(json['page']);
  if (page != null) {
    eventsEntity.page = page;
  }
  return eventsEntity;
}

Map<String, dynamic> $EventsEntityToJson(EventsEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['_embedded'] = entity.embedded.toJson();
  data['_links'] = entity.links.toJson();
  data['page'] = entity.page.toJson();
  return data;
}

extension EventsEntityExtension on EventsEntity {
  EventsEntity copyWith({
    EventsEmbedded? embedded,
    EventsLinks? links,
    EventsPage? page,
  }) {
    return EventsEntity()
      ..embedded = embedded ?? this.embedded
      ..links = links ?? this.links
      ..page = page ?? this.page;
  }
}

EventsEmbedded $EventsEmbeddedFromJson(Map<String, dynamic> json) {
  final EventsEmbedded eventsEmbedded = EventsEmbedded();
  final List<EventsEmbeddedEvents>? events = (json['events'] as List<dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEvents>(e) as EventsEmbeddedEvents)
      .toList();
  if (events != null) {
    eventsEmbedded.events = events;
  }
  return eventsEmbedded;
}

Map<String, dynamic> $EventsEmbeddedToJson(EventsEmbedded entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['events'] = entity.events.map((v) => v.toJson()).toList();
  return data;
}

extension EventsEmbeddedExtension on EventsEmbedded {
  EventsEmbedded copyWith({
    List<EventsEmbeddedEvents>? events,
  }) {
    return EventsEmbedded()
      ..events = events ?? this.events;
  }
}

EventsEmbeddedEvents $EventsEmbeddedEventsFromJson(Map<String, dynamic> json) {
  final EventsEmbeddedEvents eventsEmbeddedEvents = EventsEmbeddedEvents();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEvents.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    eventsEmbeddedEvents.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEvents.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    eventsEmbeddedEvents.test = test;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEvents.url = url;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    eventsEmbeddedEvents.locale = locale;
  }
  final List<EventsEmbeddedEventsImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsImages>(
          e) as EventsEmbeddedEventsImages).toList();
  if (images != null) {
    eventsEmbeddedEvents.images = images;
  }
  final EventsEmbeddedEventsSales? sales = jsonConvert.convert<
      EventsEmbeddedEventsSales>(json['sales']);
  if (sales != null) {
    eventsEmbeddedEvents.sales = sales;
  }
  final EventsEmbeddedEventsDates? dates = jsonConvert.convert<
      EventsEmbeddedEventsDates>(json['dates']);
  if (dates != null) {
    eventsEmbeddedEvents.dates = dates;
  }
  final List<
      EventsEmbeddedEventsClassifications>? classifications = (json['classifications'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsClassifications>(
          e) as EventsEmbeddedEventsClassifications).toList();
  if (classifications != null) {
    eventsEmbeddedEvents.classifications = classifications;
  }
  final List<EventsEmbeddedEventsOutlets>? outlets = (json['outlets'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsOutlets>(
          e) as EventsEmbeddedEventsOutlets).toList();
  if (outlets != null) {
    eventsEmbeddedEvents.outlets = outlets;
  }
  final EventsEmbeddedEventsSeatmap? seatmap = jsonConvert.convert<
      EventsEmbeddedEventsSeatmap>(json['seatmap']);
  if (seatmap != null) {
    eventsEmbeddedEvents.seatmap = seatmap;
  }
  final EventsEmbeddedEventsTicketing? ticketing = jsonConvert.convert<
      EventsEmbeddedEventsTicketing>(json['ticketing']);
  if (ticketing != null) {
    eventsEmbeddedEvents.ticketing = ticketing;
  }
  final EventsEmbeddedEventsLinks? links = jsonConvert.convert<
      EventsEmbeddedEventsLinks>(json['_links']);
  if (links != null) {
    eventsEmbeddedEvents.links = links;
  }
  final EventsEmbeddedEventsEmbedded? embedded = jsonConvert.convert<
      EventsEmbeddedEventsEmbedded>(json['_embedded']);
  if (embedded != null) {
    eventsEmbeddedEvents.embedded = embedded;
  }
  return eventsEmbeddedEvents;
}

Map<String, dynamic> $EventsEmbeddedEventsToJson(EventsEmbeddedEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['test'] = entity.test;
  data['url'] = entity.url;
  data['locale'] = entity.locale;
  data['images'] = entity.images.map((v) => v.toJson()).toList();
  data['sales'] = entity.sales.toJson();
  data['dates'] = entity.dates.toJson();
  data['classifications'] =
      entity.classifications.map((v) => v.toJson()).toList();
  data['outlets'] = entity.outlets.map((v) => v.toJson()).toList();
  data['seatmap'] = entity.seatmap.toJson();
  data['ticketing'] = entity.ticketing.toJson();
  data['_links'] = entity.links.toJson();
  data['_embedded'] = entity.embedded.toJson();
  return data;
}

extension EventsEmbeddedEventsExtension on EventsEmbeddedEvents {
  EventsEmbeddedEvents copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? url,
    String? locale,
    List<EventsEmbeddedEventsImages>? images,
    EventsEmbeddedEventsSales? sales,
    EventsEmbeddedEventsDates? dates,
    List<EventsEmbeddedEventsClassifications>? classifications,
    List<EventsEmbeddedEventsOutlets>? outlets,
    EventsEmbeddedEventsSeatmap? seatmap,
    EventsEmbeddedEventsTicketing? ticketing,
    EventsEmbeddedEventsLinks? links,
    EventsEmbeddedEventsEmbedded? embedded,
  }) {
    return EventsEmbeddedEvents()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..id = id ?? this.id
      ..test = test ?? this.test
      ..url = url ?? this.url
      ..locale = locale ?? this.locale
      ..images = images ?? this.images
      ..sales = sales ?? this.sales
      ..dates = dates ?? this.dates
      ..classifications = classifications ?? this.classifications
      ..outlets = outlets ?? this.outlets
      ..seatmap = seatmap ?? this.seatmap
      ..ticketing = ticketing ?? this.ticketing
      ..links = links ?? this.links
      ..embedded = embedded ?? this.embedded;
  }
}

EventsEmbeddedEventsImages $EventsEmbeddedEventsImagesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsImages eventsEmbeddedEventsImages = EventsEmbeddedEventsImages();
  final String? ratio = jsonConvert.convert<String>(json['ratio']);
  if (ratio != null) {
    eventsEmbeddedEventsImages.ratio = ratio;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsImages.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    eventsEmbeddedEventsImages.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    eventsEmbeddedEventsImages.height = height;
  }
  final bool? fallback = jsonConvert.convert<bool>(json['fallback']);
  if (fallback != null) {
    eventsEmbeddedEventsImages.fallback = fallback;
  }
  return eventsEmbeddedEventsImages;
}

Map<String, dynamic> $EventsEmbeddedEventsImagesToJson(
    EventsEmbeddedEventsImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ratio'] = entity.ratio;
  data['url'] = entity.url;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['fallback'] = entity.fallback;
  return data;
}

extension EventsEmbeddedEventsImagesExtension on EventsEmbeddedEventsImages {
  EventsEmbeddedEventsImages copyWith({
    String? ratio,
    String? url,
    int? width,
    int? height,
    bool? fallback,
  }) {
    return EventsEmbeddedEventsImages()
      ..ratio = ratio ?? this.ratio
      ..url = url ?? this.url
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..fallback = fallback ?? this.fallback;
  }
}

EventsEmbeddedEventsSales $EventsEmbeddedEventsSalesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsSales eventsEmbeddedEventsSales = EventsEmbeddedEventsSales();
  final EventsEmbeddedEventsSalesPublic? public = jsonConvert.convert<
      EventsEmbeddedEventsSalesPublic>(json['public']);
  if (public != null) {
    eventsEmbeddedEventsSales.public = public;
  }
  return eventsEmbeddedEventsSales;
}

Map<String, dynamic> $EventsEmbeddedEventsSalesToJson(
    EventsEmbeddedEventsSales entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['public'] = entity.public.toJson();
  return data;
}

extension EventsEmbeddedEventsSalesExtension on EventsEmbeddedEventsSales {
  EventsEmbeddedEventsSales copyWith({
    EventsEmbeddedEventsSalesPublic? public,
  }) {
    return EventsEmbeddedEventsSales()
      ..public = public ?? this.public;
  }
}

EventsEmbeddedEventsSalesPublic $EventsEmbeddedEventsSalesPublicFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsSalesPublic eventsEmbeddedEventsSalesPublic = EventsEmbeddedEventsSalesPublic();
  final String? startDateTime = jsonConvert.convert<String>(
      json['startDateTime']);
  if (startDateTime != null) {
    eventsEmbeddedEventsSalesPublic.startDateTime = startDateTime;
  }
  final bool? startTBD = jsonConvert.convert<bool>(json['startTBD']);
  if (startTBD != null) {
    eventsEmbeddedEventsSalesPublic.startTBD = startTBD;
  }
  final bool? startTBA = jsonConvert.convert<bool>(json['startTBA']);
  if (startTBA != null) {
    eventsEmbeddedEventsSalesPublic.startTBA = startTBA;
  }
  final String? endDateTime = jsonConvert.convert<String>(json['endDateTime']);
  if (endDateTime != null) {
    eventsEmbeddedEventsSalesPublic.endDateTime = endDateTime;
  }
  return eventsEmbeddedEventsSalesPublic;
}

Map<String, dynamic> $EventsEmbeddedEventsSalesPublicToJson(
    EventsEmbeddedEventsSalesPublic entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['startDateTime'] = entity.startDateTime;
  data['startTBD'] = entity.startTBD;
  data['startTBA'] = entity.startTBA;
  data['endDateTime'] = entity.endDateTime;
  return data;
}

extension EventsEmbeddedEventsSalesPublicExtension on EventsEmbeddedEventsSalesPublic {
  EventsEmbeddedEventsSalesPublic copyWith({
    String? startDateTime,
    bool? startTBD,
    bool? startTBA,
    String? endDateTime,
  }) {
    return EventsEmbeddedEventsSalesPublic()
      ..startDateTime = startDateTime ?? this.startDateTime
      ..startTBD = startTBD ?? this.startTBD
      ..startTBA = startTBA ?? this.startTBA
      ..endDateTime = endDateTime ?? this.endDateTime;
  }
}

EventsEmbeddedEventsDates $EventsEmbeddedEventsDatesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsDates eventsEmbeddedEventsDates = EventsEmbeddedEventsDates();
  final EventsEmbeddedEventsDatesStart? start = jsonConvert.convert<
      EventsEmbeddedEventsDatesStart>(json['start']);
  if (start != null) {
    eventsEmbeddedEventsDates.start = start;
  }
  final EventsEmbeddedEventsDatesStatus? status = jsonConvert.convert<
      EventsEmbeddedEventsDatesStatus>(json['status']);
  if (status != null) {
    eventsEmbeddedEventsDates.status = status;
  }
  final bool? spanMultipleDays = jsonConvert.convert<bool>(
      json['spanMultipleDays']);
  if (spanMultipleDays != null) {
    eventsEmbeddedEventsDates.spanMultipleDays = spanMultipleDays;
  }
  return eventsEmbeddedEventsDates;
}

Map<String, dynamic> $EventsEmbeddedEventsDatesToJson(
    EventsEmbeddedEventsDates entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['start'] = entity.start.toJson();
  data['status'] = entity.status.toJson();
  data['spanMultipleDays'] = entity.spanMultipleDays;
  return data;
}

extension EventsEmbeddedEventsDatesExtension on EventsEmbeddedEventsDates {
  EventsEmbeddedEventsDates copyWith({
    EventsEmbeddedEventsDatesStart? start,
    EventsEmbeddedEventsDatesStatus? status,
    bool? spanMultipleDays,
  }) {
    return EventsEmbeddedEventsDates()
      ..start = start ?? this.start
      ..status = status ?? this.status
      ..spanMultipleDays = spanMultipleDays ?? this.spanMultipleDays;
  }
}

EventsEmbeddedEventsDatesStart $EventsEmbeddedEventsDatesStartFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsDatesStart eventsEmbeddedEventsDatesStart = EventsEmbeddedEventsDatesStart();
  final String? localDate = jsonConvert.convert<String>(json['localDate']);
  if (localDate != null) {
    eventsEmbeddedEventsDatesStart.localDate = localDate;
  }
  final String? localTime = jsonConvert.convert<String>(json['localTime']);
  if (localTime != null) {
    eventsEmbeddedEventsDatesStart.localTime = localTime;
  }
  final String? dateTime = jsonConvert.convert<String>(json['dateTime']);
  if (dateTime != null) {
    eventsEmbeddedEventsDatesStart.dateTime = dateTime;
  }
  final bool? dateTBD = jsonConvert.convert<bool>(json['dateTBD']);
  if (dateTBD != null) {
    eventsEmbeddedEventsDatesStart.dateTBD = dateTBD;
  }
  final bool? dateTBA = jsonConvert.convert<bool>(json['dateTBA']);
  if (dateTBA != null) {
    eventsEmbeddedEventsDatesStart.dateTBA = dateTBA;
  }
  final bool? timeTBA = jsonConvert.convert<bool>(json['timeTBA']);
  if (timeTBA != null) {
    eventsEmbeddedEventsDatesStart.timeTBA = timeTBA;
  }
  final bool? noSpecificTime = jsonConvert.convert<bool>(
      json['noSpecificTime']);
  if (noSpecificTime != null) {
    eventsEmbeddedEventsDatesStart.noSpecificTime = noSpecificTime;
  }
  return eventsEmbeddedEventsDatesStart;
}

Map<String, dynamic> $EventsEmbeddedEventsDatesStartToJson(
    EventsEmbeddedEventsDatesStart entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['localDate'] = entity.localDate;
  data['localTime'] = entity.localTime;
  data['dateTime'] = entity.dateTime;
  data['dateTBD'] = entity.dateTBD;
  data['dateTBA'] = entity.dateTBA;
  data['timeTBA'] = entity.timeTBA;
  data['noSpecificTime'] = entity.noSpecificTime;
  return data;
}

extension EventsEmbeddedEventsDatesStartExtension on EventsEmbeddedEventsDatesStart {
  EventsEmbeddedEventsDatesStart copyWith({
    String? localDate,
    String? localTime,
    String? dateTime,
    bool? dateTBD,
    bool? dateTBA,
    bool? timeTBA,
    bool? noSpecificTime,
  }) {
    return EventsEmbeddedEventsDatesStart()
      ..localDate = localDate ?? this.localDate
      ..localTime = localTime ?? this.localTime
      ..dateTime = dateTime ?? this.dateTime
      ..dateTBD = dateTBD ?? this.dateTBD
      ..dateTBA = dateTBA ?? this.dateTBA
      ..timeTBA = timeTBA ?? this.timeTBA
      ..noSpecificTime = noSpecificTime ?? this.noSpecificTime;
  }
}

EventsEmbeddedEventsDatesStatus $EventsEmbeddedEventsDatesStatusFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsDatesStatus eventsEmbeddedEventsDatesStatus = EventsEmbeddedEventsDatesStatus();
  final String? code = jsonConvert.convert<String>(json['code']);
  if (code != null) {
    eventsEmbeddedEventsDatesStatus.code = code;
  }
  return eventsEmbeddedEventsDatesStatus;
}

Map<String, dynamic> $EventsEmbeddedEventsDatesStatusToJson(
    EventsEmbeddedEventsDatesStatus entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['code'] = entity.code;
  return data;
}

extension EventsEmbeddedEventsDatesStatusExtension on EventsEmbeddedEventsDatesStatus {
  EventsEmbeddedEventsDatesStatus copyWith({
    String? code,
  }) {
    return EventsEmbeddedEventsDatesStatus()
      ..code = code ?? this.code;
  }
}

EventsEmbeddedEventsClassifications $EventsEmbeddedEventsClassificationsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsClassifications eventsEmbeddedEventsClassifications = EventsEmbeddedEventsClassifications();
  final bool? primary = jsonConvert.convert<bool>(json['primary']);
  if (primary != null) {
    eventsEmbeddedEventsClassifications.primary = primary;
  }
  final EventsEmbeddedEventsClassificationsSegment? segment = jsonConvert
      .convert<EventsEmbeddedEventsClassificationsSegment>(json['segment']);
  if (segment != null) {
    eventsEmbeddedEventsClassifications.segment = segment;
  }
  final EventsEmbeddedEventsClassificationsGenre? genre = jsonConvert.convert<
      EventsEmbeddedEventsClassificationsGenre>(json['genre']);
  if (genre != null) {
    eventsEmbeddedEventsClassifications.genre = genre;
  }
  final EventsEmbeddedEventsClassificationsSubGenre? subGenre = jsonConvert
      .convert<EventsEmbeddedEventsClassificationsSubGenre>(json['subGenre']);
  if (subGenre != null) {
    eventsEmbeddedEventsClassifications.subGenre = subGenre;
  }
  final bool? family = jsonConvert.convert<bool>(json['family']);
  if (family != null) {
    eventsEmbeddedEventsClassifications.family = family;
  }
  return eventsEmbeddedEventsClassifications;
}

Map<String, dynamic> $EventsEmbeddedEventsClassificationsToJson(
    EventsEmbeddedEventsClassifications entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['primary'] = entity.primary;
  data['segment'] = entity.segment.toJson();
  data['genre'] = entity.genre.toJson();
  data['subGenre'] = entity.subGenre.toJson();
  data['family'] = entity.family;
  return data;
}

extension EventsEmbeddedEventsClassificationsExtension on EventsEmbeddedEventsClassifications {
  EventsEmbeddedEventsClassifications copyWith({
    bool? primary,
    EventsEmbeddedEventsClassificationsSegment? segment,
    EventsEmbeddedEventsClassificationsGenre? genre,
    EventsEmbeddedEventsClassificationsSubGenre? subGenre,
    bool? family,
  }) {
    return EventsEmbeddedEventsClassifications()
      ..primary = primary ?? this.primary
      ..segment = segment ?? this.segment
      ..genre = genre ?? this.genre
      ..subGenre = subGenre ?? this.subGenre
      ..family = family ?? this.family;
  }
}

EventsEmbeddedEventsClassificationsSegment $EventsEmbeddedEventsClassificationsSegmentFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsClassificationsSegment eventsEmbeddedEventsClassificationsSegment = EventsEmbeddedEventsClassificationsSegment();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsClassificationsSegment.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsClassificationsSegment.name = name;
  }
  return eventsEmbeddedEventsClassificationsSegment;
}

Map<String, dynamic> $EventsEmbeddedEventsClassificationsSegmentToJson(
    EventsEmbeddedEventsClassificationsSegment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsClassificationsSegmentExtension on EventsEmbeddedEventsClassificationsSegment {
  EventsEmbeddedEventsClassificationsSegment copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsClassificationsSegment()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsClassificationsGenre $EventsEmbeddedEventsClassificationsGenreFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsClassificationsGenre eventsEmbeddedEventsClassificationsGenre = EventsEmbeddedEventsClassificationsGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsClassificationsGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsClassificationsGenre.name = name;
  }
  return eventsEmbeddedEventsClassificationsGenre;
}

Map<String, dynamic> $EventsEmbeddedEventsClassificationsGenreToJson(
    EventsEmbeddedEventsClassificationsGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsClassificationsGenreExtension on EventsEmbeddedEventsClassificationsGenre {
  EventsEmbeddedEventsClassificationsGenre copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsClassificationsGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsClassificationsSubGenre $EventsEmbeddedEventsClassificationsSubGenreFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsClassificationsSubGenre eventsEmbeddedEventsClassificationsSubGenre = EventsEmbeddedEventsClassificationsSubGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsClassificationsSubGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsClassificationsSubGenre.name = name;
  }
  return eventsEmbeddedEventsClassificationsSubGenre;
}

Map<String, dynamic> $EventsEmbeddedEventsClassificationsSubGenreToJson(
    EventsEmbeddedEventsClassificationsSubGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsClassificationsSubGenreExtension on EventsEmbeddedEventsClassificationsSubGenre {
  EventsEmbeddedEventsClassificationsSubGenre copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsClassificationsSubGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsOutlets $EventsEmbeddedEventsOutletsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsOutlets eventsEmbeddedEventsOutlets = EventsEmbeddedEventsOutlets();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsOutlets.url = url;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    eventsEmbeddedEventsOutlets.type = type;
  }
  return eventsEmbeddedEventsOutlets;
}

Map<String, dynamic> $EventsEmbeddedEventsOutletsToJson(
    EventsEmbeddedEventsOutlets entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  data['type'] = entity.type;
  return data;
}

extension EventsEmbeddedEventsOutletsExtension on EventsEmbeddedEventsOutlets {
  EventsEmbeddedEventsOutlets copyWith({
    String? url,
    String? type,
  }) {
    return EventsEmbeddedEventsOutlets()
      ..url = url ?? this.url
      ..type = type ?? this.type;
  }
}

EventsEmbeddedEventsSeatmap $EventsEmbeddedEventsSeatmapFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsSeatmap eventsEmbeddedEventsSeatmap = EventsEmbeddedEventsSeatmap();
  final String? staticUrl = jsonConvert.convert<String>(json['staticUrl']);
  if (staticUrl != null) {
    eventsEmbeddedEventsSeatmap.staticUrl = staticUrl;
  }
  return eventsEmbeddedEventsSeatmap;
}

Map<String, dynamic> $EventsEmbeddedEventsSeatmapToJson(
    EventsEmbeddedEventsSeatmap entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['staticUrl'] = entity.staticUrl;
  return data;
}

extension EventsEmbeddedEventsSeatmapExtension on EventsEmbeddedEventsSeatmap {
  EventsEmbeddedEventsSeatmap copyWith({
    String? staticUrl,
  }) {
    return EventsEmbeddedEventsSeatmap()
      ..staticUrl = staticUrl ?? this.staticUrl;
  }
}

EventsEmbeddedEventsTicketing $EventsEmbeddedEventsTicketingFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsTicketing eventsEmbeddedEventsTicketing = EventsEmbeddedEventsTicketing();
  final EventsEmbeddedEventsTicketingAllInclusivePricing? allInclusivePricing = jsonConvert
      .convert<EventsEmbeddedEventsTicketingAllInclusivePricing>(
      json['allInclusivePricing']);
  if (allInclusivePricing != null) {
    eventsEmbeddedEventsTicketing.allInclusivePricing = allInclusivePricing;
  }
  return eventsEmbeddedEventsTicketing;
}

Map<String, dynamic> $EventsEmbeddedEventsTicketingToJson(
    EventsEmbeddedEventsTicketing entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['allInclusivePricing'] = entity.allInclusivePricing.toJson();
  return data;
}

extension EventsEmbeddedEventsTicketingExtension on EventsEmbeddedEventsTicketing {
  EventsEmbeddedEventsTicketing copyWith({
    EventsEmbeddedEventsTicketingAllInclusivePricing? allInclusivePricing,
  }) {
    return EventsEmbeddedEventsTicketing()
      ..allInclusivePricing = allInclusivePricing ?? this.allInclusivePricing;
  }
}

EventsEmbeddedEventsTicketingAllInclusivePricing $EventsEmbeddedEventsTicketingAllInclusivePricingFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsTicketingAllInclusivePricing eventsEmbeddedEventsTicketingAllInclusivePricing = EventsEmbeddedEventsTicketingAllInclusivePricing();
  final bool? enabled = jsonConvert.convert<bool>(json['enabled']);
  if (enabled != null) {
    eventsEmbeddedEventsTicketingAllInclusivePricing.enabled = enabled;
  }
  return eventsEmbeddedEventsTicketingAllInclusivePricing;
}

Map<String, dynamic> $EventsEmbeddedEventsTicketingAllInclusivePricingToJson(
    EventsEmbeddedEventsTicketingAllInclusivePricing entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['enabled'] = entity.enabled;
  return data;
}

extension EventsEmbeddedEventsTicketingAllInclusivePricingExtension on EventsEmbeddedEventsTicketingAllInclusivePricing {
  EventsEmbeddedEventsTicketingAllInclusivePricing copyWith({
    bool? enabled,
  }) {
    return EventsEmbeddedEventsTicketingAllInclusivePricing()
      ..enabled = enabled ?? this.enabled;
  }
}

EventsEmbeddedEventsLinks $EventsEmbeddedEventsLinksFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsLinks eventsEmbeddedEventsLinks = EventsEmbeddedEventsLinks();
  final EventsEmbeddedEventsLinksSelf? self = jsonConvert.convert<
      EventsEmbeddedEventsLinksSelf>(json['self']);
  if (self != null) {
    eventsEmbeddedEventsLinks.self = self;
  }
  final List<
      EventsEmbeddedEventsLinksAttractions>? attractions = (json['attractions'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsLinksAttractions>(
          e) as EventsEmbeddedEventsLinksAttractions).toList();
  if (attractions != null) {
    eventsEmbeddedEventsLinks.attractions = attractions;
  }
  final List<EventsEmbeddedEventsLinksVenues>? venues = (json['venues'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsLinksVenues>(
          e) as EventsEmbeddedEventsLinksVenues).toList();
  if (venues != null) {
    eventsEmbeddedEventsLinks.venues = venues;
  }
  return eventsEmbeddedEventsLinks;
}

Map<String, dynamic> $EventsEmbeddedEventsLinksToJson(
    EventsEmbeddedEventsLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  data['attractions'] = entity.attractions.map((v) => v.toJson()).toList();
  data['venues'] = entity.venues.map((v) => v.toJson()).toList();
  return data;
}

extension EventsEmbeddedEventsLinksExtension on EventsEmbeddedEventsLinks {
  EventsEmbeddedEventsLinks copyWith({
    EventsEmbeddedEventsLinksSelf? self,
    List<EventsEmbeddedEventsLinksAttractions>? attractions,
    List<EventsEmbeddedEventsLinksVenues>? venues,
  }) {
    return EventsEmbeddedEventsLinks()
      ..self = self ?? this.self
      ..attractions = attractions ?? this.attractions
      ..venues = venues ?? this.venues;
  }
}

EventsEmbeddedEventsLinksSelf $EventsEmbeddedEventsLinksSelfFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsLinksSelf eventsEmbeddedEventsLinksSelf = EventsEmbeddedEventsLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsEmbeddedEventsLinksSelf.href = href;
  }
  return eventsEmbeddedEventsLinksSelf;
}

Map<String, dynamic> $EventsEmbeddedEventsLinksSelfToJson(
    EventsEmbeddedEventsLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsEmbeddedEventsLinksSelfExtension on EventsEmbeddedEventsLinksSelf {
  EventsEmbeddedEventsLinksSelf copyWith({
    String? href,
  }) {
    return EventsEmbeddedEventsLinksSelf()
      ..href = href ?? this.href;
  }
}

EventsEmbeddedEventsLinksAttractions $EventsEmbeddedEventsLinksAttractionsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsLinksAttractions eventsEmbeddedEventsLinksAttractions = EventsEmbeddedEventsLinksAttractions();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsEmbeddedEventsLinksAttractions.href = href;
  }
  return eventsEmbeddedEventsLinksAttractions;
}

Map<String, dynamic> $EventsEmbeddedEventsLinksAttractionsToJson(
    EventsEmbeddedEventsLinksAttractions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsEmbeddedEventsLinksAttractionsExtension on EventsEmbeddedEventsLinksAttractions {
  EventsEmbeddedEventsLinksAttractions copyWith({
    String? href,
  }) {
    return EventsEmbeddedEventsLinksAttractions()
      ..href = href ?? this.href;
  }
}

EventsEmbeddedEventsLinksVenues $EventsEmbeddedEventsLinksVenuesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsLinksVenues eventsEmbeddedEventsLinksVenues = EventsEmbeddedEventsLinksVenues();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsEmbeddedEventsLinksVenues.href = href;
  }
  return eventsEmbeddedEventsLinksVenues;
}

Map<String, dynamic> $EventsEmbeddedEventsLinksVenuesToJson(
    EventsEmbeddedEventsLinksVenues entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsEmbeddedEventsLinksVenuesExtension on EventsEmbeddedEventsLinksVenues {
  EventsEmbeddedEventsLinksVenues copyWith({
    String? href,
  }) {
    return EventsEmbeddedEventsLinksVenues()
      ..href = href ?? this.href;
  }
}

EventsEmbeddedEventsEmbedded $EventsEmbeddedEventsEmbeddedFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbedded eventsEmbeddedEventsEmbedded = EventsEmbeddedEventsEmbedded();
  final List<
      EventsEmbeddedEventsEmbeddedVenues>? venues = (json['venues'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsEmbeddedVenues>(
          e) as EventsEmbeddedEventsEmbeddedVenues).toList();
  if (venues != null) {
    eventsEmbeddedEventsEmbedded.venues = venues;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractions>? attractions = (json['attractions'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsEmbeddedAttractions>(
          e) as EventsEmbeddedEventsEmbeddedAttractions).toList();
  if (attractions != null) {
    eventsEmbeddedEventsEmbedded.attractions = attractions;
  }
  return eventsEmbeddedEventsEmbedded;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedToJson(
    EventsEmbeddedEventsEmbedded entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['venues'] = entity.venues.map((v) => v.toJson()).toList();
  data['attractions'] = entity.attractions.map((v) => v.toJson()).toList();
  return data;
}

extension EventsEmbeddedEventsEmbeddedExtension on EventsEmbeddedEventsEmbedded {
  EventsEmbeddedEventsEmbedded copyWith({
    List<EventsEmbeddedEventsEmbeddedVenues>? venues,
    List<EventsEmbeddedEventsEmbeddedAttractions>? attractions,
  }) {
    return EventsEmbeddedEventsEmbedded()
      ..venues = venues ?? this.venues
      ..attractions = attractions ?? this.attractions;
  }
}

EventsEmbeddedEventsEmbeddedVenues $EventsEmbeddedEventsEmbeddedVenuesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenues eventsEmbeddedEventsEmbeddedVenues = EventsEmbeddedEventsEmbeddedVenues();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedVenues.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    eventsEmbeddedEventsEmbeddedVenues.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedVenues.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    eventsEmbeddedEventsEmbeddedVenues.test = test;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    eventsEmbeddedEventsEmbeddedVenues.locale = locale;
  }
  final String? postalCode = jsonConvert.convert<String>(json['postalCode']);
  if (postalCode != null) {
    eventsEmbeddedEventsEmbeddedVenues.postalCode = postalCode;
  }
  final String? timezone = jsonConvert.convert<String>(json['timezone']);
  if (timezone != null) {
    eventsEmbeddedEventsEmbeddedVenues.timezone = timezone;
  }
  final EventsEmbeddedEventsEmbeddedVenuesCity? city = jsonConvert.convert<
      EventsEmbeddedEventsEmbeddedVenuesCity>(json['city']);
  if (city != null) {
    eventsEmbeddedEventsEmbeddedVenues.city = city;
  }
  final EventsEmbeddedEventsEmbeddedVenuesState? state = jsonConvert.convert<
      EventsEmbeddedEventsEmbeddedVenuesState>(json['state']);
  if (state != null) {
    eventsEmbeddedEventsEmbeddedVenues.state = state;
  }
  final EventsEmbeddedEventsEmbeddedVenuesCountry? country = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedVenuesCountry>(json['country']);
  if (country != null) {
    eventsEmbeddedEventsEmbeddedVenues.country = country;
  }
  final EventsEmbeddedEventsEmbeddedVenuesAddress? address = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedVenuesAddress>(json['address']);
  if (address != null) {
    eventsEmbeddedEventsEmbeddedVenues.address = address;
  }
  final EventsEmbeddedEventsEmbeddedVenuesLocation? location = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedVenuesLocation>(json['location']);
  if (location != null) {
    eventsEmbeddedEventsEmbeddedVenues.location = location;
  }
  final List<
      EventsEmbeddedEventsEmbeddedVenuesDmas>? dmas = (json['dmas'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<EventsEmbeddedEventsEmbeddedVenuesDmas>(
          e) as EventsEmbeddedEventsEmbeddedVenuesDmas).toList();
  if (dmas != null) {
    eventsEmbeddedEventsEmbeddedVenues.dmas = dmas;
  }
  final EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents? upcomingEvents = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents>(
      json['upcomingEvents']);
  if (upcomingEvents != null) {
    eventsEmbeddedEventsEmbeddedVenues.upcomingEvents = upcomingEvents;
  }
  final EventsEmbeddedEventsEmbeddedVenuesLinks? links = jsonConvert.convert<
      EventsEmbeddedEventsEmbeddedVenuesLinks>(json['_links']);
  if (links != null) {
    eventsEmbeddedEventsEmbeddedVenues.links = links;
  }
  return eventsEmbeddedEventsEmbeddedVenues;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesToJson(
    EventsEmbeddedEventsEmbeddedVenues entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['test'] = entity.test;
  data['locale'] = entity.locale;
  data['postalCode'] = entity.postalCode;
  data['timezone'] = entity.timezone;
  data['city'] = entity.city.toJson();
  data['state'] = entity.state.toJson();
  data['country'] = entity.country.toJson();
  data['address'] = entity.address.toJson();
  data['location'] = entity.location.toJson();
  data['dmas'] = entity.dmas.map((v) => v.toJson()).toList();
  data['upcomingEvents'] = entity.upcomingEvents.toJson();
  data['_links'] = entity.links.toJson();
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesExtension on EventsEmbeddedEventsEmbeddedVenues {
  EventsEmbeddedEventsEmbeddedVenues copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? locale,
    String? postalCode,
    String? timezone,
    EventsEmbeddedEventsEmbeddedVenuesCity? city,
    EventsEmbeddedEventsEmbeddedVenuesState? state,
    EventsEmbeddedEventsEmbeddedVenuesCountry? country,
    EventsEmbeddedEventsEmbeddedVenuesAddress? address,
    EventsEmbeddedEventsEmbeddedVenuesLocation? location,
    List<EventsEmbeddedEventsEmbeddedVenuesDmas>? dmas,
    EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents? upcomingEvents,
    EventsEmbeddedEventsEmbeddedVenuesLinks? links,
  }) {
    return EventsEmbeddedEventsEmbeddedVenues()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..id = id ?? this.id
      ..test = test ?? this.test
      ..locale = locale ?? this.locale
      ..postalCode = postalCode ?? this.postalCode
      ..timezone = timezone ?? this.timezone
      ..city = city ?? this.city
      ..state = state ?? this.state
      ..country = country ?? this.country
      ..address = address ?? this.address
      ..location = location ?? this.location
      ..dmas = dmas ?? this.dmas
      ..upcomingEvents = upcomingEvents ?? this.upcomingEvents
      ..links = links ?? this.links;
  }
}

EventsEmbeddedEventsEmbeddedVenuesCity $EventsEmbeddedEventsEmbeddedVenuesCityFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesCity eventsEmbeddedEventsEmbeddedVenuesCity = EventsEmbeddedEventsEmbeddedVenuesCity();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedVenuesCity.name = name;
  }
  return eventsEmbeddedEventsEmbeddedVenuesCity;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesCityToJson(
    EventsEmbeddedEventsEmbeddedVenuesCity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesCityExtension on EventsEmbeddedEventsEmbeddedVenuesCity {
  EventsEmbeddedEventsEmbeddedVenuesCity copyWith({
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesCity()
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedVenuesState $EventsEmbeddedEventsEmbeddedVenuesStateFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesState eventsEmbeddedEventsEmbeddedVenuesState = EventsEmbeddedEventsEmbeddedVenuesState();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedVenuesState.name = name;
  }
  final String? stateCode = jsonConvert.convert<String>(json['stateCode']);
  if (stateCode != null) {
    eventsEmbeddedEventsEmbeddedVenuesState.stateCode = stateCode;
  }
  return eventsEmbeddedEventsEmbeddedVenuesState;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesStateToJson(
    EventsEmbeddedEventsEmbeddedVenuesState entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['stateCode'] = entity.stateCode;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesStateExtension on EventsEmbeddedEventsEmbeddedVenuesState {
  EventsEmbeddedEventsEmbeddedVenuesState copyWith({
    String? name,
    String? stateCode,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesState()
      ..name = name ?? this.name
      ..stateCode = stateCode ?? this.stateCode;
  }
}

EventsEmbeddedEventsEmbeddedVenuesCountry $EventsEmbeddedEventsEmbeddedVenuesCountryFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesCountry eventsEmbeddedEventsEmbeddedVenuesCountry = EventsEmbeddedEventsEmbeddedVenuesCountry();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedVenuesCountry.name = name;
  }
  final String? countryCode = jsonConvert.convert<String>(json['countryCode']);
  if (countryCode != null) {
    eventsEmbeddedEventsEmbeddedVenuesCountry.countryCode = countryCode;
  }
  return eventsEmbeddedEventsEmbeddedVenuesCountry;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesCountryToJson(
    EventsEmbeddedEventsEmbeddedVenuesCountry entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['countryCode'] = entity.countryCode;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesCountryExtension on EventsEmbeddedEventsEmbeddedVenuesCountry {
  EventsEmbeddedEventsEmbeddedVenuesCountry copyWith({
    String? name,
    String? countryCode,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesCountry()
      ..name = name ?? this.name
      ..countryCode = countryCode ?? this.countryCode;
  }
}

EventsEmbeddedEventsEmbeddedVenuesAddress $EventsEmbeddedEventsEmbeddedVenuesAddressFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesAddress eventsEmbeddedEventsEmbeddedVenuesAddress = EventsEmbeddedEventsEmbeddedVenuesAddress();
  final String? line1 = jsonConvert.convert<String>(json['line1']);
  if (line1 != null) {
    eventsEmbeddedEventsEmbeddedVenuesAddress.line1 = line1;
  }
  return eventsEmbeddedEventsEmbeddedVenuesAddress;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesAddressToJson(
    EventsEmbeddedEventsEmbeddedVenuesAddress entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['line1'] = entity.line1;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesAddressExtension on EventsEmbeddedEventsEmbeddedVenuesAddress {
  EventsEmbeddedEventsEmbeddedVenuesAddress copyWith({
    String? line1,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesAddress()
      ..line1 = line1 ?? this.line1;
  }
}

EventsEmbeddedEventsEmbeddedVenuesLocation $EventsEmbeddedEventsEmbeddedVenuesLocationFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesLocation eventsEmbeddedEventsEmbeddedVenuesLocation = EventsEmbeddedEventsEmbeddedVenuesLocation();
  final String? longitude = jsonConvert.convert<String>(json['longitude']);
  if (longitude != null) {
    eventsEmbeddedEventsEmbeddedVenuesLocation.longitude = longitude;
  }
  final String? latitude = jsonConvert.convert<String>(json['latitude']);
  if (latitude != null) {
    eventsEmbeddedEventsEmbeddedVenuesLocation.latitude = latitude;
  }
  return eventsEmbeddedEventsEmbeddedVenuesLocation;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesLocationToJson(
    EventsEmbeddedEventsEmbeddedVenuesLocation entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['longitude'] = entity.longitude;
  data['latitude'] = entity.latitude;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesLocationExtension on EventsEmbeddedEventsEmbeddedVenuesLocation {
  EventsEmbeddedEventsEmbeddedVenuesLocation copyWith({
    String? longitude,
    String? latitude,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesLocation()
      ..longitude = longitude ?? this.longitude
      ..latitude = latitude ?? this.latitude;
  }
}

EventsEmbeddedEventsEmbeddedVenuesDmas $EventsEmbeddedEventsEmbeddedVenuesDmasFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesDmas eventsEmbeddedEventsEmbeddedVenuesDmas = EventsEmbeddedEventsEmbeddedVenuesDmas();
  final int? id = jsonConvert.convert<int>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedVenuesDmas.id = id;
  }
  return eventsEmbeddedEventsEmbeddedVenuesDmas;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesDmasToJson(
    EventsEmbeddedEventsEmbeddedVenuesDmas entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesDmasExtension on EventsEmbeddedEventsEmbeddedVenuesDmas {
  EventsEmbeddedEventsEmbeddedVenuesDmas copyWith({
    int? id,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesDmas()
      ..id = id ?? this.id;
  }
}

EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents $EventsEmbeddedEventsEmbeddedVenuesUpcomingEventsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents = EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents();
  final int? tmr = jsonConvert.convert<int>(json['tmr']);
  if (tmr != null) {
    eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents.tmr = tmr;
  }
  final int? ticketmaster = jsonConvert.convert<int>(json['ticketmaster']);
  if (ticketmaster != null) {
    eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents.ticketmaster =
        ticketmaster;
  }
  final int? total = jsonConvert.convert<int>(json['_total']);
  if (total != null) {
    eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents.total = total;
  }
  final int? filtered = jsonConvert.convert<int>(json['_filtered']);
  if (filtered != null) {
    eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents.filtered = filtered;
  }
  return eventsEmbeddedEventsEmbeddedVenuesUpcomingEvents;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesUpcomingEventsToJson(
    EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tmr'] = entity.tmr;
  data['ticketmaster'] = entity.ticketmaster;
  data['_total'] = entity.total;
  data['_filtered'] = entity.filtered;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesUpcomingEventsExtension on EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents {
  EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents copyWith({
    int? tmr,
    int? ticketmaster,
    int? total,
    int? filtered,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents()
      ..tmr = tmr ?? this.tmr
      ..ticketmaster = ticketmaster ?? this.ticketmaster
      ..total = total ?? this.total
      ..filtered = filtered ?? this.filtered;
  }
}

EventsEmbeddedEventsEmbeddedVenuesLinks $EventsEmbeddedEventsEmbeddedVenuesLinksFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesLinks eventsEmbeddedEventsEmbeddedVenuesLinks = EventsEmbeddedEventsEmbeddedVenuesLinks();
  final EventsEmbeddedEventsEmbeddedVenuesLinksSelf? self = jsonConvert.convert<
      EventsEmbeddedEventsEmbeddedVenuesLinksSelf>(json['self']);
  if (self != null) {
    eventsEmbeddedEventsEmbeddedVenuesLinks.self = self;
  }
  return eventsEmbeddedEventsEmbeddedVenuesLinks;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesLinksToJson(
    EventsEmbeddedEventsEmbeddedVenuesLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesLinksExtension on EventsEmbeddedEventsEmbeddedVenuesLinks {
  EventsEmbeddedEventsEmbeddedVenuesLinks copyWith({
    EventsEmbeddedEventsEmbeddedVenuesLinksSelf? self,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesLinks()
      ..self = self ?? this.self;
  }
}

EventsEmbeddedEventsEmbeddedVenuesLinksSelf $EventsEmbeddedEventsEmbeddedVenuesLinksSelfFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedVenuesLinksSelf eventsEmbeddedEventsEmbeddedVenuesLinksSelf = EventsEmbeddedEventsEmbeddedVenuesLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsEmbeddedEventsEmbeddedVenuesLinksSelf.href = href;
  }
  return eventsEmbeddedEventsEmbeddedVenuesLinksSelf;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedVenuesLinksSelfToJson(
    EventsEmbeddedEventsEmbeddedVenuesLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsEmbeddedEventsEmbeddedVenuesLinksSelfExtension on EventsEmbeddedEventsEmbeddedVenuesLinksSelf {
  EventsEmbeddedEventsEmbeddedVenuesLinksSelf copyWith({
    String? href,
  }) {
    return EventsEmbeddedEventsEmbeddedVenuesLinksSelf()
      ..href = href ?? this.href;
  }
}

EventsEmbeddedEventsEmbeddedAttractions $EventsEmbeddedEventsEmbeddedAttractionsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractions eventsEmbeddedEventsEmbeddedAttractions = EventsEmbeddedEventsEmbeddedAttractions();
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractions.name = name;
  }
  final String? type = jsonConvert.convert<String>(json['type']);
  if (type != null) {
    eventsEmbeddedEventsEmbeddedAttractions.type = type;
  }
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractions.id = id;
  }
  final bool? test = jsonConvert.convert<bool>(json['test']);
  if (test != null) {
    eventsEmbeddedEventsEmbeddedAttractions.test = test;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractions.url = url;
  }
  final String? locale = jsonConvert.convert<String>(json['locale']);
  if (locale != null) {
    eventsEmbeddedEventsEmbeddedAttractions.locale = locale;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinks? externalLinks = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsExternalLinks>(
      json['externalLinks']);
  if (externalLinks != null) {
    eventsEmbeddedEventsEmbeddedAttractions.externalLinks = externalLinks;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsImages>? images = (json['images'] as List<
      dynamic>?)?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsImages>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsImages).toList();
  if (images != null) {
    eventsEmbeddedEventsEmbeddedAttractions.images = images;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsClassifications>? classifications = (json['classifications'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsClassifications>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsClassifications)
      .toList();
  if (classifications != null) {
    eventsEmbeddedEventsEmbeddedAttractions.classifications = classifications;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents? upcomingEvents = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents>(
      json['upcomingEvents']);
  if (upcomingEvents != null) {
    eventsEmbeddedEventsEmbeddedAttractions.upcomingEvents = upcomingEvents;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsLinks? links = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsLinks>(json['_links']);
  if (links != null) {
    eventsEmbeddedEventsEmbeddedAttractions.links = links;
  }
  final List<String>? aliases = (json['aliases'] as List<dynamic>?)?.map(
          (e) => jsonConvert.convert<String>(e) as String).toList();
  if (aliases != null) {
    eventsEmbeddedEventsEmbeddedAttractions.aliases = aliases;
  }
  return eventsEmbeddedEventsEmbeddedAttractions;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedAttractionsToJson(
    EventsEmbeddedEventsEmbeddedAttractions entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['name'] = entity.name;
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['test'] = entity.test;
  data['url'] = entity.url;
  data['locale'] = entity.locale;
  data['externalLinks'] = entity.externalLinks.toJson();
  data['images'] = entity.images.map((v) => v.toJson()).toList();
  data['classifications'] =
      entity.classifications.map((v) => v.toJson()).toList();
  data['upcomingEvents'] = entity.upcomingEvents.toJson();
  data['_links'] = entity.links.toJson();
  data['aliases'] = entity.aliases;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExtension on EventsEmbeddedEventsEmbeddedAttractions {
  EventsEmbeddedEventsEmbeddedAttractions copyWith({
    String? name,
    String? type,
    String? id,
    bool? test,
    String? url,
    String? locale,
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinks? externalLinks,
    List<EventsEmbeddedEventsEmbeddedAttractionsImages>? images,
    List<
        EventsEmbeddedEventsEmbeddedAttractionsClassifications>? classifications,
    EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents? upcomingEvents,
    EventsEmbeddedEventsEmbeddedAttractionsLinks? links,
    List<String>? aliases,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractions()
      ..name = name ?? this.name
      ..type = type ?? this.type
      ..id = id ?? this.id
      ..test = test ?? this.test
      ..url = url ?? this.url
      ..locale = locale ?? this.locale
      ..externalLinks = externalLinks ?? this.externalLinks
      ..images = images ?? this.images
      ..classifications = classifications ?? this.classifications
      ..upcomingEvents = upcomingEvents ?? this.upcomingEvents
      ..links = links ?? this.links
      ..aliases = aliases ?? this.aliases;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinks $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinks eventsEmbeddedEventsEmbeddedAttractionsExternalLinks = EventsEmbeddedEventsEmbeddedAttractionsExternalLinks();
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter>? twitter = (json['twitter'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter)
      .toList();
  if (twitter != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinks.twitter = twitter;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki>? wiki = (json['wiki'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki)
      .toList();
  if (wiki != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinks.wiki = wiki;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook>? facebook = (json['facebook'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook)
      .toList();
  if (facebook != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinks.facebook = facebook;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram>? instagram = (json['instagram'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram)
      .toList();
  if (instagram != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinks.instagram = instagram;
  }
  final List<
      EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage>? homepage = (json['homepage'] as List<
      dynamic>?)
      ?.map(
          (e) =>
      jsonConvert.convert<
          EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage>(
          e) as EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage)
      .toList();
  if (homepage != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinks.homepage = homepage;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinks;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['twitter'] = entity.twitter.map((v) => v.toJson()).toList();
  data['wiki'] = entity.wiki.map((v) => v.toJson()).toList();
  data['facebook'] = entity.facebook.map((v) => v.toJson()).toList();
  data['instagram'] = entity.instagram.map((v) => v.toJson()).toList();
  data['homepage'] = entity.homepage.map((v) => v.toJson()).toList();
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinks {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinks copyWith({
    List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter>? twitter,
    List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki>? wiki,
    List<
        EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook>? facebook,
    List<
        EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram>? instagram,
    List<
        EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage>? homepage,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinks()
      ..twitter = twitter ?? this.twitter
      ..wiki = wiki ?? this.wiki
      ..facebook = facebook ?? this.facebook
      ..instagram = instagram ?? this.instagram
      ..homepage = homepage ?? this.homepage;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitterFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter eventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter = EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter.url = url;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitterToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitterExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter copyWith({
    String? url,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter()
      ..url = url ?? this.url;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWikiFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki eventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki = EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki.url = url;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWikiToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWikiExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki copyWith({
    String? url,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki()
      ..url = url ?? this.url;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebookFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook eventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook = EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook.url = url;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebookToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebookExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook copyWith({
    String? url,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook()
      ..url = url ?? this.url;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagramFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram eventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram = EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram.url = url;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagramToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagramExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram copyWith({
    String? url,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram()
      ..url = url ?? this.url;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepageFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage eventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage = EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage();
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage.url = url;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepageToJson(
    EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['url'] = entity.url;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepageExtension on EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage {
  EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage copyWith({
    String? url,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage()
      ..url = url ?? this.url;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsImages $EventsEmbeddedEventsEmbeddedAttractionsImagesFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsImages eventsEmbeddedEventsEmbeddedAttractionsImages = EventsEmbeddedEventsEmbeddedAttractionsImages();
  final String? ratio = jsonConvert.convert<String>(json['ratio']);
  if (ratio != null) {
    eventsEmbeddedEventsEmbeddedAttractionsImages.ratio = ratio;
  }
  final String? url = jsonConvert.convert<String>(json['url']);
  if (url != null) {
    eventsEmbeddedEventsEmbeddedAttractionsImages.url = url;
  }
  final int? width = jsonConvert.convert<int>(json['width']);
  if (width != null) {
    eventsEmbeddedEventsEmbeddedAttractionsImages.width = width;
  }
  final int? height = jsonConvert.convert<int>(json['height']);
  if (height != null) {
    eventsEmbeddedEventsEmbeddedAttractionsImages.height = height;
  }
  final bool? fallback = jsonConvert.convert<bool>(json['fallback']);
  if (fallback != null) {
    eventsEmbeddedEventsEmbeddedAttractionsImages.fallback = fallback;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsImages;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedAttractionsImagesToJson(
    EventsEmbeddedEventsEmbeddedAttractionsImages entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['ratio'] = entity.ratio;
  data['url'] = entity.url;
  data['width'] = entity.width;
  data['height'] = entity.height;
  data['fallback'] = entity.fallback;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsImagesExtension on EventsEmbeddedEventsEmbeddedAttractionsImages {
  EventsEmbeddedEventsEmbeddedAttractionsImages copyWith({
    String? ratio,
    String? url,
    int? width,
    int? height,
    bool? fallback,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsImages()
      ..ratio = ratio ?? this.ratio
      ..url = url ?? this.url
      ..width = width ?? this.width
      ..height = height ?? this.height
      ..fallback = fallback ?? this.fallback;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassifications $EventsEmbeddedEventsEmbeddedAttractionsClassificationsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassifications eventsEmbeddedEventsEmbeddedAttractionsClassifications = EventsEmbeddedEventsEmbeddedAttractionsClassifications();
  final bool? primary = jsonConvert.convert<bool>(json['primary']);
  if (primary != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.primary = primary;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment? segment = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment>(
      json['segment']);
  if (segment != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.segment = segment;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre? genre = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre>(
      json['genre']);
  if (genre != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.genre = genre;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre? subGenre = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre>(
      json['subGenre']);
  if (subGenre != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.subGenre = subGenre;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsType? type = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsClassificationsType>(
      json['type']);
  if (type != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.type = type;
  }
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType? subType = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType>(
      json['subType']);
  if (subType != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.subType = subType;
  }
  final bool? family = jsonConvert.convert<bool>(json['family']);
  if (family != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassifications.family = family;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassifications;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassifications entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['primary'] = entity.primary;
  data['segment'] = entity.segment.toJson();
  data['genre'] = entity.genre.toJson();
  data['subGenre'] = entity.subGenre.toJson();
  data['type'] = entity.type.toJson();
  data['subType'] = entity.subType.toJson();
  data['family'] = entity.family;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsExtension on EventsEmbeddedEventsEmbeddedAttractionsClassifications {
  EventsEmbeddedEventsEmbeddedAttractionsClassifications copyWith({
    bool? primary,
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment? segment,
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre? genre,
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre? subGenre,
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsType? type,
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType? subType,
    bool? family,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassifications()
      ..primary = primary ?? this.primary
      ..segment = segment ?? this.segment
      ..genre = genre ?? this.genre
      ..subGenre = subGenre ?? this.subGenre
      ..type = type ?? this.type
      ..subType = subType ?? this.subType
      ..family = family ?? this.family;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegmentFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment eventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment = EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment.name = name;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegmentToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegmentExtension on EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment {
  EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre $EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenreFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre eventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre = EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre.name = name;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenreToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenreExtension on EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre {
  EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenreFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre = EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre.name = name;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenreToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenreExtension on EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre {
  EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassificationsType $EventsEmbeddedEventsEmbeddedAttractionsClassificationsTypeFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsType eventsEmbeddedEventsEmbeddedAttractionsClassificationsType = EventsEmbeddedEventsEmbeddedAttractionsClassificationsType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsType.name = name;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassificationsType;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsTypeToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsTypeExtension on EventsEmbeddedEventsEmbeddedAttractionsClassificationsType {
  EventsEmbeddedEventsEmbeddedAttractionsClassificationsType copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassificationsType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubTypeFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType = EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType();
  final String? id = jsonConvert.convert<String>(json['id']);
  if (id != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType.id = id;
  }
  final String? name = jsonConvert.convert<String>(json['name']);
  if (name != null) {
    eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType.name = name;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubTypeToJson(
    EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['id'] = entity.id;
  data['name'] = entity.name;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubTypeExtension on EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType {
  EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType copyWith({
    String? id,
    String? name,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType()
      ..id = id ?? this.id
      ..name = name ?? this.name;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents $EventsEmbeddedEventsEmbeddedAttractionsUpcomingEventsFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents = EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents();
  final int? tmr = jsonConvert.convert<int>(json['tmr']);
  if (tmr != null) {
    eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents.tmr = tmr;
  }
  final int? ticketmaster = jsonConvert.convert<int>(json['ticketmaster']);
  if (ticketmaster != null) {
    eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents.ticketmaster =
        ticketmaster;
  }
  final int? total = jsonConvert.convert<int>(json['_total']);
  if (total != null) {
    eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents.total = total;
  }
  final int? filtered = jsonConvert.convert<int>(json['_filtered']);
  if (filtered != null) {
    eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents.filtered = filtered;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents;
}

Map<String,
    dynamic> $EventsEmbeddedEventsEmbeddedAttractionsUpcomingEventsToJson(
    EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['tmr'] = entity.tmr;
  data['ticketmaster'] = entity.ticketmaster;
  data['_total'] = entity.total;
  data['_filtered'] = entity.filtered;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsUpcomingEventsExtension on EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents {
  EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents copyWith({
    int? tmr,
    int? ticketmaster,
    int? total,
    int? filtered,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents()
      ..tmr = tmr ?? this.tmr
      ..ticketmaster = ticketmaster ?? this.ticketmaster
      ..total = total ?? this.total
      ..filtered = filtered ?? this.filtered;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsLinks $EventsEmbeddedEventsEmbeddedAttractionsLinksFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsLinks eventsEmbeddedEventsEmbeddedAttractionsLinks = EventsEmbeddedEventsEmbeddedAttractionsLinks();
  final EventsEmbeddedEventsEmbeddedAttractionsLinksSelf? self = jsonConvert
      .convert<EventsEmbeddedEventsEmbeddedAttractionsLinksSelf>(json['self']);
  if (self != null) {
    eventsEmbeddedEventsEmbeddedAttractionsLinks.self = self;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsLinks;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedAttractionsLinksToJson(
    EventsEmbeddedEventsEmbeddedAttractionsLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['self'] = entity.self.toJson();
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsLinksExtension on EventsEmbeddedEventsEmbeddedAttractionsLinks {
  EventsEmbeddedEventsEmbeddedAttractionsLinks copyWith({
    EventsEmbeddedEventsEmbeddedAttractionsLinksSelf? self,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsLinks()
      ..self = self ?? this.self;
  }
}

EventsEmbeddedEventsEmbeddedAttractionsLinksSelf $EventsEmbeddedEventsEmbeddedAttractionsLinksSelfFromJson(
    Map<String, dynamic> json) {
  final EventsEmbeddedEventsEmbeddedAttractionsLinksSelf eventsEmbeddedEventsEmbeddedAttractionsLinksSelf = EventsEmbeddedEventsEmbeddedAttractionsLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsEmbeddedEventsEmbeddedAttractionsLinksSelf.href = href;
  }
  return eventsEmbeddedEventsEmbeddedAttractionsLinksSelf;
}

Map<String, dynamic> $EventsEmbeddedEventsEmbeddedAttractionsLinksSelfToJson(
    EventsEmbeddedEventsEmbeddedAttractionsLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsEmbeddedEventsEmbeddedAttractionsLinksSelfExtension on EventsEmbeddedEventsEmbeddedAttractionsLinksSelf {
  EventsEmbeddedEventsEmbeddedAttractionsLinksSelf copyWith({
    String? href,
  }) {
    return EventsEmbeddedEventsEmbeddedAttractionsLinksSelf()
      ..href = href ?? this.href;
  }
}

EventsLinks $EventsLinksFromJson(Map<String, dynamic> json) {
  final EventsLinks eventsLinks = EventsLinks();
  final EventsLinksFirst? first = jsonConvert.convert<EventsLinksFirst>(
      json['first']);
  if (first != null) {
    eventsLinks.first = first;
  }
  final EventsLinksSelf? self = jsonConvert.convert<EventsLinksSelf>(
      json['self']);
  if (self != null) {
    eventsLinks.self = self;
  }
  final EventsLinksNext? next = jsonConvert.convert<EventsLinksNext>(
      json['next']);
  if (next != null) {
    eventsLinks.next = next;
  }
  final EventsLinksLast? last = jsonConvert.convert<EventsLinksLast>(
      json['last']);
  if (last != null) {
    eventsLinks.last = last;
  }
  return eventsLinks;
}

Map<String, dynamic> $EventsLinksToJson(EventsLinks entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['first'] = entity.first.toJson();
  data['self'] = entity.self.toJson();
  data['next'] = entity.next.toJson();
  data['last'] = entity.last.toJson();
  return data;
}

extension EventsLinksExtension on EventsLinks {
  EventsLinks copyWith({
    EventsLinksFirst? first,
    EventsLinksSelf? self,
    EventsLinksNext? next,
    EventsLinksLast? last,
  }) {
    return EventsLinks()
      ..first = first ?? this.first
      ..self = self ?? this.self
      ..next = next ?? this.next
      ..last = last ?? this.last;
  }
}

EventsLinksFirst $EventsLinksFirstFromJson(Map<String, dynamic> json) {
  final EventsLinksFirst eventsLinksFirst = EventsLinksFirst();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsLinksFirst.href = href;
  }
  return eventsLinksFirst;
}

Map<String, dynamic> $EventsLinksFirstToJson(EventsLinksFirst entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsLinksFirstExtension on EventsLinksFirst {
  EventsLinksFirst copyWith({
    String? href,
  }) {
    return EventsLinksFirst()
      ..href = href ?? this.href;
  }
}

EventsLinksSelf $EventsLinksSelfFromJson(Map<String, dynamic> json) {
  final EventsLinksSelf eventsLinksSelf = EventsLinksSelf();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsLinksSelf.href = href;
  }
  return eventsLinksSelf;
}

Map<String, dynamic> $EventsLinksSelfToJson(EventsLinksSelf entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsLinksSelfExtension on EventsLinksSelf {
  EventsLinksSelf copyWith({
    String? href,
  }) {
    return EventsLinksSelf()
      ..href = href ?? this.href;
  }
}

EventsLinksNext $EventsLinksNextFromJson(Map<String, dynamic> json) {
  final EventsLinksNext eventsLinksNext = EventsLinksNext();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsLinksNext.href = href;
  }
  return eventsLinksNext;
}

Map<String, dynamic> $EventsLinksNextToJson(EventsLinksNext entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsLinksNextExtension on EventsLinksNext {
  EventsLinksNext copyWith({
    String? href,
  }) {
    return EventsLinksNext()
      ..href = href ?? this.href;
  }
}

EventsLinksLast $EventsLinksLastFromJson(Map<String, dynamic> json) {
  final EventsLinksLast eventsLinksLast = EventsLinksLast();
  final String? href = jsonConvert.convert<String>(json['href']);
  if (href != null) {
    eventsLinksLast.href = href;
  }
  return eventsLinksLast;
}

Map<String, dynamic> $EventsLinksLastToJson(EventsLinksLast entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['href'] = entity.href;
  return data;
}

extension EventsLinksLastExtension on EventsLinksLast {
  EventsLinksLast copyWith({
    String? href,
  }) {
    return EventsLinksLast()
      ..href = href ?? this.href;
  }
}

EventsPage $EventsPageFromJson(Map<String, dynamic> json) {
  final EventsPage eventsPage = EventsPage();
  final int? size = jsonConvert.convert<int>(json['size']);
  if (size != null) {
    eventsPage.size = size;
  }
  final int? totalElements = jsonConvert.convert<int>(json['totalElements']);
  if (totalElements != null) {
    eventsPage.totalElements = totalElements;
  }
  final int? totalPages = jsonConvert.convert<int>(json['totalPages']);
  if (totalPages != null) {
    eventsPage.totalPages = totalPages;
  }
  final int? number = jsonConvert.convert<int>(json['number']);
  if (number != null) {
    eventsPage.number = number;
  }
  return eventsPage;
}

Map<String, dynamic> $EventsPageToJson(EventsPage entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['size'] = entity.size;
  data['totalElements'] = entity.totalElements;
  data['totalPages'] = entity.totalPages;
  data['number'] = entity.number;
  return data;
}

extension EventsPageExtension on EventsPage {
  EventsPage copyWith({
    int? size,
    int? totalElements,
    int? totalPages,
    int? number,
  }) {
    return EventsPage()
      ..size = size ?? this.size
      ..totalElements = totalElements ?? this.totalElements
      ..totalPages = totalPages ?? this.totalPages
      ..number = number ?? this.number;
  }
}