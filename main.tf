terraform {
  cloud {
    organization = "terratestorg"

    workspaces {
      name = "learn-terraform-cloud"
    }
  }

  required_providers {
  
    artifactory = {

      source = "jfrog/artifactory"

      version = "7.5.0"

    }

  }

}

provider "artifactory" {

  url           = "https://hts2.jfrog.io/artifactory"

  access_token  = "eyJ2ZXIiOiIyIiwidHlwIjoiSldUIiwiYWxnIjoiUlMyNTYiLCJraWQiOiJ5ek11SE53Ukhfei0yTmJ1UWpwZVhXdFRqemJyWnVGcUtJRldvZXdYQW1VIn0.eyJzdWIiOiJqZmFjQDAxZThoa3NueTVndmthMTRhYThna2owYzdhL3VzZXJzL21hbm9qIiwic2NwIjoiYXBwbGllZC1wZXJtaXNzaW9ucy9hZG1pbiIsImF1ZCI6IipAKiIsImlzcyI6ImpmZmVAMDFlOGhrc255NWd2a2ExNGFhOGdrajBjN2EiLCJpYXQiOjE2ODMxODU5MjUsImp0aSI6IjI5MTAxOTM5LTgxNTAtNDZiZi04ZWFhLWM5ZDVlOWEyNzljOCJ9.EftF0jf3Sj3EsQChPCsTceuzDNFVeeYLhUYWTgQ-dKBgF04MlKu3ol3MWATv14DvJwkroaIPkd8XFS41j6nSe5ZHnMhV3YO-LdYwZpDwXVVvZoBntzPXqpzLiRh6nBG26I3L9ouv0AAPR8xz_DIJnZe2HXvJOglVNhMByhDwHGTsKnwTni2hi6LnE23ZT1Zrrdq0hJkrIyRCnagBtXiWspT5mXuFcdKTX-zIwJa7V9Ksy8eHZg2gSWNTI5hbN27tR7bh7GU7D9hRch5kf7TFHKcylCptPMA48HPTyW0WGf5iNbvo5BcCdbPlVj8xH9Qx06rPiuQFJMwZXjsRGuWVEQ"
}
module "mymodule" {

    source  = "https://hts2.jfrog.io/mk-terraform__myns/mymodule/myprovider/1.0.0.zip"

}
