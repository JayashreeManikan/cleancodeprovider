import 'package:cleancodeprovider/generated/json/base/json_field.dart';
import 'package:cleancodeprovider/generated/json/venues_entity.g.dart';
import 'dart:convert';
export 'package:cleancodeprovider/generated/json/venues_entity.g.dart';

@JsonSerializable()
class VenuesEntity {
	@JSONField(name: "_embedded")
	late VenuesEmbedded embedded=VenuesEmbedded();
	@JSONField(name: "_links")
	late VenuesLinks links;
	late VenuesPage page;

	VenuesEntity();

	factory VenuesEntity.fromJson(Map<String, dynamic> json) => $VenuesEntityFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbedded {
	late List<VenuesEmbeddedVenues> venues=[];

	VenuesEmbedded();

	factory VenuesEmbedded.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenues {
	late String name;
	late String type;
	late String id;
	late bool test;
	late String url;
	late String locale;
	late List<String> aliases;
	late List<VenuesEmbeddedVenuesImages> images;
	late String postalCode;
	late String timezone;
	late VenuesEmbeddedVenuesCity city;
	late VenuesEmbeddedVenuesState state;
	late VenuesEmbeddedVenuesCountry country;
	late VenuesEmbeddedVenuesAddress address;
	late VenuesEmbeddedVenuesLocation location;
	late List<VenuesEmbeddedVenuesMarkets> markets;
	late List<VenuesEmbeddedVenuesDmas> dmas;
	late VenuesEmbeddedVenuesSocial social;
	late VenuesEmbeddedVenuesBoxOfficeInfo boxOfficeInfo;
	late String parkingDetail;
	late String accessibleSeatingDetail;
	late VenuesEmbeddedVenuesGeneralInfo generalInfo;
	late VenuesEmbeddedVenuesUpcomingEvents upcomingEvents;
	late VenuesEmbeddedVenuesAda ada;
	@JSONField(name: "_links")
	late VenuesEmbeddedVenuesLinks links;

	VenuesEmbeddedVenues();

	factory VenuesEmbeddedVenues.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesImages {
	late String ratio;
	late String url;
	late int width;
	late int height;
	late bool fallback;

	VenuesEmbeddedVenuesImages();

	factory VenuesEmbeddedVenuesImages.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesImagesFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesImagesToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesCity {
	late String name;

	VenuesEmbeddedVenuesCity();

	factory VenuesEmbeddedVenuesCity.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesCityFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesCityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesState {
	late String name;
	late String stateCode;

	VenuesEmbeddedVenuesState();

	factory VenuesEmbeddedVenuesState.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesStateFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesStateToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesCountry {
	late String name;
	late String countryCode;

	VenuesEmbeddedVenuesCountry();

	factory VenuesEmbeddedVenuesCountry.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesCountryFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesCountryToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesAddress {
	late String line1;

	VenuesEmbeddedVenuesAddress();

	factory VenuesEmbeddedVenuesAddress.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesAddressFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesAddressToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesLocation {
	late String longitude;
	late String latitude;

	VenuesEmbeddedVenuesLocation();

	factory VenuesEmbeddedVenuesLocation.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesLocationFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesLocationToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesMarkets {
	late String name;
	late String id;

	VenuesEmbeddedVenuesMarkets();

	factory VenuesEmbeddedVenuesMarkets.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesMarketsFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesMarketsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesDmas {
	late int id;

	VenuesEmbeddedVenuesDmas();

	factory VenuesEmbeddedVenuesDmas.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesDmasFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesDmasToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesSocial {
	late VenuesEmbeddedVenuesSocialTwitter twitter;

	VenuesEmbeddedVenuesSocial();

	factory VenuesEmbeddedVenuesSocial.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesSocialFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesSocialToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesSocialTwitter {
	late String handle;

	VenuesEmbeddedVenuesSocialTwitter();

	factory VenuesEmbeddedVenuesSocialTwitter.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesSocialTwitterFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesSocialTwitterToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesBoxOfficeInfo {
	late String phoneNumberDetail;
	late String openHoursDetail;
	late String acceptedPaymentDetail;
	late String willCallDetail;

	VenuesEmbeddedVenuesBoxOfficeInfo();

	factory VenuesEmbeddedVenuesBoxOfficeInfo.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesBoxOfficeInfoFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesBoxOfficeInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesGeneralInfo {
	late String generalRule;
	late String childRule;

	VenuesEmbeddedVenuesGeneralInfo();

	factory VenuesEmbeddedVenuesGeneralInfo.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesGeneralInfoFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesGeneralInfoToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesUpcomingEvents {
	late int ticketmaster;
	@JSONField(name: "_total")
	late int total;
	@JSONField(name: "_filtered")
	late int filtered;

	VenuesEmbeddedVenuesUpcomingEvents();

	factory VenuesEmbeddedVenuesUpcomingEvents.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesUpcomingEventsFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesUpcomingEventsToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesAda {
	late String adaPhones;
	late String adaCustomCopy;
	late String adaHours;

	VenuesEmbeddedVenuesAda();

	factory VenuesEmbeddedVenuesAda.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesAdaFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesAdaToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesLinks {
	late VenuesEmbeddedVenuesLinksSelf self;

	VenuesEmbeddedVenuesLinks();

	factory VenuesEmbeddedVenuesLinks.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesLinksFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesEmbeddedVenuesLinksSelf {
	late String href;

	VenuesEmbeddedVenuesLinksSelf();

	factory VenuesEmbeddedVenuesLinksSelf.fromJson(Map<String, dynamic> json) => $VenuesEmbeddedVenuesLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $VenuesEmbeddedVenuesLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesLinks {
	late VenuesLinksFirst first;
	late VenuesLinksSelf self;
	late VenuesLinksNext next;
	late VenuesLinksLast last;

	VenuesLinks();

	factory VenuesLinks.fromJson(Map<String, dynamic> json) => $VenuesLinksFromJson(json);

	Map<String, dynamic> toJson() => $VenuesLinksToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesLinksFirst {
	late String href;

	VenuesLinksFirst();

	factory VenuesLinksFirst.fromJson(Map<String, dynamic> json) => $VenuesLinksFirstFromJson(json);

	Map<String, dynamic> toJson() => $VenuesLinksFirstToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesLinksSelf {
	late String href;

	VenuesLinksSelf();

	factory VenuesLinksSelf.fromJson(Map<String, dynamic> json) => $VenuesLinksSelfFromJson(json);

	Map<String, dynamic> toJson() => $VenuesLinksSelfToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesLinksNext {
	late String href;

	VenuesLinksNext();

	factory VenuesLinksNext.fromJson(Map<String, dynamic> json) => $VenuesLinksNextFromJson(json);

	Map<String, dynamic> toJson() => $VenuesLinksNextToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesLinksLast {
	late String href;

	VenuesLinksLast();

	factory VenuesLinksLast.fromJson(Map<String, dynamic> json) => $VenuesLinksLastFromJson(json);

	Map<String, dynamic> toJson() => $VenuesLinksLastToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class VenuesPage {
	late int size;
	late int totalElements;
	late int totalPages;
	late int number;

	VenuesPage();

	factory VenuesPage.fromJson(Map<String, dynamic> json) => $VenuesPageFromJson(json);

	Map<String, dynamic> toJson() => $VenuesPageToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}