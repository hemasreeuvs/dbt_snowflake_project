{{
    config(
        materialized = 'ephemeral',
    )
}}


with bookings as
(
    select  
        booking_id,
        listing_id,
        booking_status,
        created_at
)
