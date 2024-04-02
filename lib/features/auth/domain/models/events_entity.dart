import 'package:cleancodeprovider/generated/json/base/json_field.dart';
import 'package:cleancodeprovider/generated/json/events_entity.g.dart';
import 'dart:convert';
export 'package:cleancodeprovider/generated/json/events_entity.g.dart';

@JsonSerializable()
class EventsEntity {
	@JSONField(name: "_embedded")
	 late EventsEmbedded embedded=EventsEmbedded();
	@JSONField(name: "_links")
	late EventsLinks links;
	late EventsPage page;

	EventsEntity();

	factory EventsEntity.fromJson(Map<String, dynamic> json) => $EventsEntityFromJson(json);

	Map<String, dynamic> toJson() => $EventsEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbedded {
	late List<EventsEmbeddedEvents> events=[];
	EventsEmbedded();

	factory EventsEmbedded.fromJson(Map<String, dynamic> json) => $EventsEmbeddedFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEvents {
	late String name;
	late String type;
	late String id;
	late bool test;
	late String url;
	late String locale;
	late List<EventsEmbeddedEventsImages> images;
	late EventsEmbeddedEventsSales sales;
	late EventsEmbeddedEventsDates dates;
	late List<EventsEmbeddedEventsClassifications> classifications;
	late List<EventsEmbeddedEventsOutlets> outlets;
	late EventsEmbeddedEventsSeatmap seatmap;
	late EventsEmbeddedEventsTicketing ticketing;
	@JSONField(name: "_links")
	late EventsEmbeddedEventsLinks links;
	@JSONField(name: "_embedded")
	late EventsEmbeddedEventsEmbedded embedded;

	EventsEmbeddedEvents();

	factory EventsEmbeddedEvents.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsImages {
	late String ratio;
	late String url;
	late int width;
	late int height;
	late bool fallback;

	EventsEmbeddedEventsImages();

	factory EventsEmbeddedEventsImages.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsImagesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsSales {
	late EventsEmbeddedEventsSalesPublic public;

	EventsEmbeddedEventsSales();

	factory EventsEmbeddedEventsSales.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsSalesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsSalesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsSalesPublic {
	late String startDateTime;
	late bool startTBD;
	late bool startTBA;
	late String endDateTime;

	EventsEmbeddedEventsSalesPublic();

	factory EventsEmbeddedEventsSalesPublic.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsSalesPublicFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsSalesPublicToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsDates {
	late EventsEmbeddedEventsDatesStart start;
	late EventsEmbeddedEventsDatesStatus status;
	late bool spanMultipleDays;

	EventsEmbeddedEventsDates();

	factory EventsEmbeddedEventsDates.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsDatesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsDatesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsDatesStart {
	late String localDate;
	late String localTime;
	late String dateTime;
	late bool dateTBD;
	late bool dateTBA;
	late bool timeTBA;
	late bool noSpecificTime;

	EventsEmbeddedEventsDatesStart();

	factory EventsEmbeddedEventsDatesStart.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsDatesStartFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsDatesStartToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsDatesStatus {
	late String code;

	EventsEmbeddedEventsDatesStatus();

	factory EventsEmbeddedEventsDatesStatus.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsDatesStatusFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsDatesStatusToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsClassifications {
	late bool primary;
	late EventsEmbeddedEventsClassificationsSegment segment;
	late EventsEmbeddedEventsClassificationsGenre genre;
	late EventsEmbeddedEventsClassificationsSubGenre subGenre;
	late bool family;

	EventsEmbeddedEventsClassifications();

	factory EventsEmbeddedEventsClassifications.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsClassificationsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsClassificationsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsClassificationsSegment {
	late String id;
	late String name;

	EventsEmbeddedEventsClassificationsSegment();

	factory EventsEmbeddedEventsClassificationsSegment.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsClassificationsSegmentFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsClassificationsSegmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsClassificationsGenre {
	late String id;
	late String name;

	EventsEmbeddedEventsClassificationsGenre();

	factory EventsEmbeddedEventsClassificationsGenre.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsClassificationsGenreFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsClassificationsGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsClassificationsSubGenre {
	late String id;
	late String name;

	EventsEmbeddedEventsClassificationsSubGenre();

	factory EventsEmbeddedEventsClassificationsSubGenre.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsClassificationsSubGenreFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsClassificationsSubGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsOutlets {
	late String url;
	late String type;

	EventsEmbeddedEventsOutlets();

	factory EventsEmbeddedEventsOutlets.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsOutletsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsOutletsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsSeatmap {
	late String staticUrl;

	EventsEmbeddedEventsSeatmap();

	factory EventsEmbeddedEventsSeatmap.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsSeatmapFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsSeatmapToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsTicketing {
	late EventsEmbeddedEventsTicketingAllInclusivePricing allInclusivePricing;

	EventsEmbeddedEventsTicketing();

	factory EventsEmbeddedEventsTicketing.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsTicketingFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsTicketingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsTicketingAllInclusivePricing {
	late bool enabled;

	EventsEmbeddedEventsTicketingAllInclusivePricing();

	factory EventsEmbeddedEventsTicketingAllInclusivePricing.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsTicketingAllInclusivePricingFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsTicketingAllInclusivePricingToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsLinks {
	late EventsEmbeddedEventsLinksSelf self;
	late List<EventsEmbeddedEventsLinksAttractions> attractions;
	late List<EventsEmbeddedEventsLinksVenues> venues;

	EventsEmbeddedEventsLinks();

	factory EventsEmbeddedEventsLinks.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsLinksFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsLinksSelf {
	late String href;

	EventsEmbeddedEventsLinksSelf();

	factory EventsEmbeddedEventsLinksSelf.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsLinksAttractions {
	late String href;

	EventsEmbeddedEventsLinksAttractions();

	factory EventsEmbeddedEventsLinksAttractions.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsLinksAttractionsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsLinksAttractionsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsLinksVenues {
	late String href;

	EventsEmbeddedEventsLinksVenues();

	factory EventsEmbeddedEventsLinksVenues.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsLinksVenuesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsLinksVenuesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbedded {
	late List<EventsEmbeddedEventsEmbeddedVenues> venues;
	late List<EventsEmbeddedEventsEmbeddedAttractions> attractions;

	EventsEmbeddedEventsEmbedded();

	factory EventsEmbeddedEventsEmbedded.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenues {
	late String name;
	late String type;
	late String id;
	late bool test;
	late String locale;
	late String postalCode;
	late String timezone;
	late EventsEmbeddedEventsEmbeddedVenuesCity city;
	late EventsEmbeddedEventsEmbeddedVenuesState state;
	late EventsEmbeddedEventsEmbeddedVenuesCountry country;
	late EventsEmbeddedEventsEmbeddedVenuesAddress address;
	late EventsEmbeddedEventsEmbeddedVenuesLocation location;
	late List<EventsEmbeddedEventsEmbeddedVenuesDmas> dmas;
	late EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents upcomingEvents;
	@JSONField(name: "_links")
	late EventsEmbeddedEventsEmbeddedVenuesLinks links;

	EventsEmbeddedEventsEmbeddedVenues();

	factory EventsEmbeddedEventsEmbeddedVenues.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesCity {
	late String name;

	EventsEmbeddedEventsEmbeddedVenuesCity();

	factory EventsEmbeddedEventsEmbeddedVenuesCity.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesCityFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesCityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesState {
	late String name;
	late String stateCode;

	EventsEmbeddedEventsEmbeddedVenuesState();

	factory EventsEmbeddedEventsEmbeddedVenuesState.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesStateFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesStateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesCountry {
	late String name;
	late String countryCode;

	EventsEmbeddedEventsEmbeddedVenuesCountry();

	factory EventsEmbeddedEventsEmbeddedVenuesCountry.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesCountryFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesCountryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesAddress {
	late String line1;

	EventsEmbeddedEventsEmbeddedVenuesAddress();

	factory EventsEmbeddedEventsEmbeddedVenuesAddress.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesAddressFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesAddressToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesLocation {
	late String longitude;
	late String latitude;

	EventsEmbeddedEventsEmbeddedVenuesLocation();

	factory EventsEmbeddedEventsEmbeddedVenuesLocation.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesLocationFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesLocationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesDmas {
	late int id;

	EventsEmbeddedEventsEmbeddedVenuesDmas();

	factory EventsEmbeddedEventsEmbeddedVenuesDmas.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesDmasFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesDmasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents {
	late int tmr;
	late int ticketmaster;
	@JSONField(name: "_total")
	late int total;
	@JSONField(name: "_filtered")
	late int filtered;

	EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents();

	factory EventsEmbeddedEventsEmbeddedVenuesUpcomingEvents.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesUpcomingEventsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesUpcomingEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesLinks {
	late EventsEmbeddedEventsEmbeddedVenuesLinksSelf self;

	EventsEmbeddedEventsEmbeddedVenuesLinks();

	factory EventsEmbeddedEventsEmbeddedVenuesLinks.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesLinksFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedVenuesLinksSelf {
	late String href;

	EventsEmbeddedEventsEmbeddedVenuesLinksSelf();

	factory EventsEmbeddedEventsEmbeddedVenuesLinksSelf.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedVenuesLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedVenuesLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractions {
	late String name;
	late String type;
	late String id;
	late bool test;
	late String url;
	late String locale;
	late EventsEmbeddedEventsEmbeddedAttractionsExternalLinks externalLinks;
	late List<EventsEmbeddedEventsEmbeddedAttractionsImages> images;
	late List<EventsEmbeddedEventsEmbeddedAttractionsClassifications> classifications;
	late EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents upcomingEvents;
	@JSONField(name: "_links")
	late EventsEmbeddedEventsEmbeddedAttractionsLinks links;
	late List<String> aliases;

	EventsEmbeddedEventsEmbeddedAttractions();

	factory EventsEmbeddedEventsEmbeddedAttractions.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinks {
	late List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter> twitter;
	late List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki> wiki;
	late List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook> facebook;
	late List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram> instagram;
	late List<EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage> homepage;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinks();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinks.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter {
	late String url;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitter.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitterFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksTwitterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki {
	late String url;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWiki.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWikiFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksWikiToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook {
	late String url;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebook.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebookFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksFacebookToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram {
	late String url;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagram.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagramFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksInstagramToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage {
	late String url;

	EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage();

	factory EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepage.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepageFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsExternalLinksHomepageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsImages {
	late String ratio;
	late String url;
	late int width;
	late int height;
	late bool fallback;

	EventsEmbeddedEventsEmbeddedAttractionsImages();

	factory EventsEmbeddedEventsEmbeddedAttractionsImages.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsImagesFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassifications {
	late bool primary;
	late EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment segment;
	late EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre genre;
	late EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre subGenre;
	late EventsEmbeddedEventsEmbeddedAttractionsClassificationsType type;
	late EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType subType;
	late bool family;

	EventsEmbeddedEventsEmbeddedAttractionsClassifications();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassifications.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment {
	late String id;
	late String name;

	EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegment.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegmentFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSegmentToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre {
	late String id;
	late String name;

	EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenre.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenreFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre {
	late String id;
	late String name;

	EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenre.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenreFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubGenreToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassificationsType {
	late String id;
	late String name;

	EventsEmbeddedEventsEmbeddedAttractionsClassificationsType();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassificationsType.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType {
	late String id;
	late String name;

	EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType();

	factory EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubType.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubTypeFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsClassificationsSubTypeToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents {
	late int tmr;
	late int ticketmaster;
	@JSONField(name: "_total")
	late int total;
	@JSONField(name: "_filtered")
	late int filtered;

	EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents();

	factory EventsEmbeddedEventsEmbeddedAttractionsUpcomingEvents.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsUpcomingEventsFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsUpcomingEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsLinks {
	late EventsEmbeddedEventsEmbeddedAttractionsLinksSelf self;

	EventsEmbeddedEventsEmbeddedAttractionsLinks();

	factory EventsEmbeddedEventsEmbeddedAttractionsLinks.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsLinksFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsEmbeddedEventsEmbeddedAttractionsLinksSelf {
	late String href;

	EventsEmbeddedEventsEmbeddedAttractionsLinksSelf();

	factory EventsEmbeddedEventsEmbeddedAttractionsLinksSelf.fromJson(Map<String, dynamic> json) => $EventsEmbeddedEventsEmbeddedAttractionsLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $EventsEmbeddedEventsEmbeddedAttractionsLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsLinks {
	late EventsLinksFirst first;
	late EventsLinksSelf self;
	late EventsLinksNext next;
	late EventsLinksLast last;

	EventsLinks();

	factory EventsLinks.fromJson(Map<String, dynamic> json) => $EventsLinksFromJson(json);

	Map<String, dynamic> toJson() => $EventsLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsLinksFirst {
	late String href;

	EventsLinksFirst();

	factory EventsLinksFirst.fromJson(Map<String, dynamic> json) => $EventsLinksFirstFromJson(json);

	Map<String, dynamic> toJson() => $EventsLinksFirstToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsLinksSelf {
	late String href;

	EventsLinksSelf();

	factory EventsLinksSelf.fromJson(Map<String, dynamic> json) => $EventsLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $EventsLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsLinksNext {
	late String href;

	EventsLinksNext();

	factory EventsLinksNext.fromJson(Map<String, dynamic> json) => $EventsLinksNextFromJson(json);

	Map<String, dynamic> toJson() => $EventsLinksNextToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsLinksLast {
	late String href;

	EventsLinksLast();

	factory EventsLinksLast.fromJson(Map<String, dynamic> json) => $EventsLinksLastFromJson(json);

	Map<String, dynamic> toJson() => $EventsLinksLastToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class EventsPage {
	late int size;
	late int totalElements;
	late int totalPages;
	late int number;

	EventsPage();

	factory EventsPage.fromJson(Map<String, dynamic> json) => $EventsPageFromJson(json);

	Map<String, dynamic> toJson() => $EventsPageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}