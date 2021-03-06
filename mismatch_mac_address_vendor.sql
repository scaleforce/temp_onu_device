SELECT
    SUBSTR(mac_address, 1, 8) AS mac_a, vendor, COUNT(*) AS count
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */
GROUP BY
	SUBSTR(mac_address, 1, 8), vendor

-- Case "RL":

SELECT
    SUBSTR(mac_address, 1, 8) AS mac_a, vendor, COUNT(*) AS count
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND SUBSTR(mac_address, 1, 8) IN ('1C:18:4A', '1C:18:A5')
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */
GROUP BY
	SUBSTR(mac_address, 1, 8), vendor

-- Case "SY":

SELECT
    SUBSTR(mac_address, 1, 8) AS mac_a, vendor, COUNT(*) AS count
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND SUBSTR(mac_address, 1, 8) IN ('07:A9:6B', '7C:A9:6B', '38:94:E0')
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */
GROUP BY
	SUBSTR(mac_address, 1, 8), vendor

-- Case "GNX":

SELECT
    SUBSTR(mac_address, 1, 8) AS mac_a, vendor, COUNT(*) AS count
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND SUBSTR(mac_address, 1, 8) IN ('BC:62:D2')
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */
GROUP BY
	SUBSTR(mac_address, 1, 8), vendor
