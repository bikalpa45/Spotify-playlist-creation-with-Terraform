# By using track id
resource "spotify_playlist" "Ranga" {
  name        = "Ranga"
  description = "This playlist is so awesome"

  tracks = [ "4e9x7bJgI5uyu8zozFL9Mm"  ]
}
# By searching the track

data "spotify_search_track" "by_artists"{
    artists = ["Nepathya"]
}

resource "spotify_playlist" "nepathya"{
    name = "nepathya"
    tracks = [data.spotify_search_track.by_artists.tracks[0].id, # taal ko pani
              data.spotify_search_track.by_artists.tracks[1].id,  # jogale hunxa bhet
              data.spotify_search_track.by_artists.tracks[2].id   # sirfula siraima
    ]
}



