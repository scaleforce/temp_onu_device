-- MAC addresses with bad format ( using regex ^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$ )

SELECT
    *
FROM onu_device AS onu_d
WHERE mac_address NOT REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
