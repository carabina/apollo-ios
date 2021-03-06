import Apollo

public class HeroDetailsFragment: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment HeroDetails on Character {" +
    "  __typename" +
    "  name" +
    "  appearsIn" +
    "  ... on Human {" +
    "    homePlanet" +
    "  }" +
    "  ... on Droid {" +
    "    primaryFunction" +
    "  }" +
    "}"
  
  public typealias Data = HeroDetails
}

public protocol HeroDetails {
  var name: String { get }
  var appearsIn: [Episode]? { get }
}

public protocol HeroDetails_Human: HeroDetails {
  var homePlanet: String? { get }
}

public protocol HeroDetails_Droid: HeroDetails {
  var primaryFunction: String? { get }
}
