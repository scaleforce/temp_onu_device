-- MAC addresses with bad format ( using regex ^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$ )

SELECT
    *
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address NOT REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
