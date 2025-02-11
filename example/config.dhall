let Monocle = ../package.dhall

in  { tenants =
      [ Monocle.Index::{
        , index = "demo-index"
        , crawler = Monocle.Crawler::{
          , loop_delay = 600
          , github_orgs = Some
            [ Monocle.GitHub::{
              , name = "ansible"
              , base_url = "https://github.com"
              , updated_since = "2000-01-01"
              }
            ]
          , gerrit_repositories = Some
            [ Monocle.Gerrit::{
              , name = "^openstack/.*\$"
              , base_url = "https://review.opendev.org"
              , updated_since = "2000-01-01"
              }
            ]
          }
        }
      ]
    }
