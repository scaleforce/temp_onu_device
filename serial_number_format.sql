-- Serial numbers with bad format

-- Case "RL":

SELECT
    *
FROM onu_device AS onu_d
WHERE mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    -- AND serial_number LIKE 'RL%'
    AND (
        serial_number NOT REGEXP '^RL.{2}[0-9a-f]{8}$'
        OR SUBSTR(serial_number, 5, 8) <> REPLACE(SUBSTR(mac_address, 7, 11), ':', '')
    )
    AND SUBSTR(mac_address, 1, 8) IN ('1C:18:4A', '1C:18:A5')

-- Case "GNX":

SELECT
    *
FROM onu_device AS onu_d
WHERE mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    -- AND serial_number LIKE 'GNX%'
    AND serial_number NOT REGEXP '^GNX[0-9a-f]{9}$'
    AND SUBSTR(mac_address, 1, 8) IN ('BC:62:D2')
