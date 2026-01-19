with source as (

    select * from {{ source('chinook', 'Track') }}

),

renamed as (

    select
        TrackId     as track_id,
        Name        as track_name,
        AlbumId     as album_id,
        GenreId     as genre_id,
        Milliseconds as duration_ms
    from source

)

select * from renamed
