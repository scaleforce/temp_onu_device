-- Mismatch Serial numbers - MAC addresses

-- Case "RL":

SELECT
    SUBSTR(serial_number, 1, 2) AS s_n_1_2,
    SUBSTR(mac_address, 1, 8) AS mac_a_1_8,
    *
FROM onu_device AS onu_d
WHERE mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number LIKE 'RL%' AND SUBSTR(mac_address, 1, 8) NOT IN ('1C:18:4A', '1C:18:A5'))
        OR (serial_number NOT LIKE 'RL%' AND SUBSTR(mac_address, 1, 8) IN ('1C:18:4A', '1C:18:A5'))
    )

-- Case "SY":

SELECT
    SUBSTR(serial_number, 1, 2) AS s_n_1_2,
    SUBSTR(mac_address, 1, 8) AS mac_a_1_8,
    *
FROM onu_device AS onu_d
WHERE mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number LIKE 'SY%' AND SUBSTR(mac_address, 1, 8) NOT IN ('07:A9:6B', '7C:A9:6B', '38:94:E0'))
        OR (serial_number NOT LIKE 'SY%' AND SUBSTR(mac_address, 1, 8) IN ('07:A9:6B', '7C:A9:6B', '38:94:E0'))
    )

-- Case "GNX":

SELECT
    SUBSTR(serial_number, 1, 3) AS s_n_1_3,
    SUBSTR(mac_address, 1, 8) AS mac_a_1_8,
    *
FROM onu_device AS onu_d
WHERE mac_address REGEXP '^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})$'
    AND (
        (serial_number LIKE 'GNX%' AND SUBSTR(mac_address, 1, 8) NOT IN ('BC:62:D2%'))
        OR (serial_number NOT LIKE 'GNX%' AND SUBSTR(mac_address, 1, 8) IN ('BC:62:D2%'))
    )

