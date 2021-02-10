-- Mismatch Serial numbers - MAC addresses

-- Case "RL":

SELECT
    onu_d.*,
    (
        SELECT
            CASE
                WHEN EXISTS (
                    SELECT
                        *
                    FROM onu_device_subscriber AS onu_d_s
                    WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
                        AND onu_d_s.active = 1
                )
                THEN 1
                ELSE 0
            END
    ) AS Assigned
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number REGEXP '^RL.{2}[0-9a-f]{8}$' AND SUBSTR(serial_number, 5, 8) = REPLACE(SUBSTR(mac_address, 7, 11), ':', '') AND SUBSTR(mac_address, 1, 8) NOT IN ('1C:18:4A', '1C:18:A5'))
        -- OR ((serial_number NOT REGEXP '^RL.{2}[0-9a-f]{8}$' OR SUBSTR(serial_number, 5, 8) <> REPLACE(SUBSTR(mac_address, 7, 11), ':', '')) AND SUBSTR(mac_address, 1, 8) IN ('1C:18:4A', '1C:18:A5'))
    )
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */

-- Case "SY":

SELECT
    onu_d.*,
    (
        SELECT
            CASE
                WHEN EXISTS (
                    SELECT
                        *
                    FROM onu_device_subscriber AS onu_d_s
                    WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
                        AND onu_d_s.active = 1
                )
                THEN 1
                ELSE 0
            END
    ) AS Assigned
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number REGEXP '^SY.*$' AND SUBSTR(mac_address, 1, 8) NOT IN ('07:A9:6B', '7C:A9:6B', '38:94:E0'))
        -- OR (serial_number NOT REGEXP '^SY.*$' AND SUBSTR(mac_address, 1, 8) IN ('07:A9:6B', '7C:A9:6B', '38:94:E0'))
    )
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */

-- Case "GNX":

SELECT
    onu_d.*,
    (
        SELECT
            CASE
                WHEN EXISTS (
                    SELECT
                        *
                    FROM onu_device_subscriber AS onu_d_s
                    WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
                        AND onu_d_s.active = 1
                )
                THEN 1
                ELSE 0
            END
    ) AS Assigned
FROM onu_device AS onu_d
WHERE partner_id <> 1 -- 1 - Delhi, 27 - Hyderabad
    AND type NOT LIKE 'ERP%'
    AND mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number REGEXP '^GNX[0-9a-f]{9}$' AND SUBSTR(mac_address, 1, 8) NOT IN ('BC:62:D2'))
        -- OR (serial_number NOT REGEXP '^GNX[0-9a-f]{9}$' AND SUBSTR(mac_address, 1, 8) IN ('BC:62:D2'))
    )
    /*
	AND NOT EXISTS (
        SELECT
        	*
        FROM onu_device_subscriber AS onu_d_s
        WHERE onu_d_s.onu_device_id = onu_d.onu_device_id
    		AND onu_d_s.active = 1
    )
    */

