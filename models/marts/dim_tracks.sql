select
    t.track_id,
    t.track_name,
    a.album_title,
    ar.artist_name,
    t.duration_ms
from {{ ref('stg_tracks') }} t
left join {{ ref('stg_albums') }} a
    on t.album_id = a.album_id
left join {{ ref('stg_artists') }} ar
    on a.artist_id = ar.artist_id
