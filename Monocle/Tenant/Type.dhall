{ index : Text
, crawlers_api_key : Text
, crawlers : List ../Crawler/Type.dhall
, projects : Optional (List ../Project/Type.dhall)
, idents : Optional (List ../Ident/Type.dhall)
, search_aliases : Optional (List ../SearchAlias/Type.dhall)
}
