-- MAC addresses with bad format ( using regex ^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$ )

SELECT
    *
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address NOT REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */
