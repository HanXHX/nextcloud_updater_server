Feature: Testing the update scenario of beta releases

  Scenario: Updating an outdated ownCloud 8.2.5 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "8.2.5"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.0.58" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-9.0.58.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/9/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 9.0.50 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "9.0.50"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 10.0.0 on the beta channel with PHP 5.4 will receive the latest compatible release
    Given There is a release with channel "beta"
    And The received version is "9.1.0"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "9.1.6.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-10.0.6.zip"
    And URL to documentation is "https://docs.nextcloud.org/server/10/admin_manual/maintenance/manual_upgrade.html"
    And EOL is set to "1"
    And No signature is set

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel with PHP 5.4
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    And The received PHP version is "5.4.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an up-to-date Nextcloud 10.0.6 on the beta channel without sending PHP version
    Given There is a release with channel "beta"
    And The received version is "9.1.6.1"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And URL to documentation is "https://nextcloud.com/outdated-php-5-4-5-5/"
    And EOL is set to "1"
    And No signature is set
    And Autoupdater is set to "0"

  Scenario: Updating an outdated Nextcloud 10.0.1 on the beta channel with PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "9.1.1.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "11.0.8.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-11.0.8.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/11/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    CaYUimboWU3dURynPxieGo9V8KoNHe5js2XdivdjWQ1vsyfsnz1Nim33c0bQWzA5
    PosPk3vMUWxJpNKP92D0uyz1Xutkc/tCgsjsXrDaMzl1HUZ9W/PFWEtXTddD5fbJ
    8idQFiyiXNNpdDJ/gZjaUZcLWEgMI9MVoeFyKY1OORuJz1e9+I/UBHMTGo81H63X
    ApiCSIfXvfvbMMA6DOtorWjDJoHvCkrLef3zqEDDL5bF8NGVE/9f2hh2vSlJex45
    ko5tNR4IIGM3bIRBhw9455+Tc3dVZEpGBr6Yy3vSJmrQKYQ/degEe+S7ZWyVc3TQ
    ZH1PxQilL7ihAvnOb2oU1Q==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 11.0.0 beta on the beta channel without an mtime
    Given There is a release with channel "beta"
    And The received version is "11.0.0.2"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "12.0.13.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-12.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/12/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    jZbAdJ9cHzBcw7BatJoX7/0Nv9NdecbsR4wEnRBbWI/EmAQ09HoMmmC1xiY88ME5
    lvHlcEgF0sVTx6tdg4LvqAH2ze34LhzxgIu7mS1tAHIZ81elGhv66VuRv17QYVs1
    7QQySikKMprI+mzdTjIf3rloc97lpm9ynQ+6vizwdxhZ0w5r4Gl85ni52MpeN1Zd
    Sx/Z9LJ0bCIO9C+E6kyQvjI7Q7A+WpMF1SiQL2RJsLJERtV4BP8izVuZQ/hI9NDj
    rdZAAiMKh8jB0atDNbxu24dWI2Ie7MvnzadL6Ax9+qIWUzlZIqX9yXgFVE2RsGVS
    vbaIJ8CiZnKdMBDAdXAVMA==
    """

  Scenario: Updating an outdated Nextcloud 12.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.0.15"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an up-to-date Nextcloud 12.0.7 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "12.0.7.1"
    And The received PHP version is "5.6.0"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 5.6
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "5.6.0"
    And the installation mtime is "90"
    When The request is sent
    Then The response is non-empty
    And Update to version "13.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-13.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/13/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    GRVpINAV11LUd+UxjnQtb2gbFHaxNrh9WzzQgPpjaKJ6J28PRQ9sq8J1GlfEN2K7
    RnD/6pFkDRTlBOU56g4XC3GgDpY6F88OVQ0z9D1/nudSZV+cSu6xRuC6q7Z9sStG
    oyDn+o4Z8c+i2yR6zcoVD5itXiU1w41fMT/dlzCtIDmo953+K9fNlTPlU9h9H3MI
    HVECrm+3NmISmI8+5hl4Ju5p8tudxVhGF2aHR0ilG0ff+wjdz5CtsiZXoP+BUNn+
    VFRfhy9vBf+VD6khhFkDXSymw0X6xNN3lMqQIJmJPsPONDXtk2diY6h204uEUofP
    yiBfUT4yVTwIOt+tnqZzzw==
    """

  Scenario: Updating an outdated Nextcloud 13.0.0 on the beta channel on PHP 7.0
    Given There is a release with channel "beta"
    And The received version is "13.0.0.8"
    And The received PHP version is "7.0.0"
    And the installation mtime is "10"
    When The request is sent
    Then The response is non-empty
    And Update to version "14.0.14.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-14.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/14/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    Nw1PhE391uasWeU66JtBoJGTRHDdImBNBkpMlh4nTG6UJFouFTDDmqHq6DcanS5e
    qoC79rxiC7lloaN/05AZ7AY1FSNjG5G9xPM4OWgTCbwXhUfD3DjGVzzbMVnTWgeK
    ZMgZqqU8F4uWHkcEB0fqImZYnFMdX7E7xZmEIO8BSOOdS6PvvZTAeDXEwWSBMRVa
    7wEYp/hwJzV3UCy5SThYHqs+8EIdQeql1/3o/P/0bsGnsgpLGK/2bV4lzVV74m3T
    RrZ6EDdSnGyybYX4QGv/wfng9RijMdMdr1SYzJfkRKj+JX37zgscL/87XgnApkQS
    FaqAZYszh1hjGEyQaoibXw==
    """

  Scenario: Updating an up-to-date Nextcloud 14.0.3 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "14.0.3.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "9"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.12.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ky2vKMSu1tjkpsPaAf6CkqtKJwkeZ8fxT9a9TBNwAAbl3AAIYqQKjT0Np5nvFwzb
    Z9N2axbhWdy0WuY7ffxDwYL7lKzzJ4nfeYzIVJV49y1W2kbz5KvDhX4/ACgGw42m
    WSmJdyx7hnp5JdcddA/eZDh2yrffC+MjrSaZXBvitnxMtI2xaeOUpphvjKgy8wF+
    Cb8hjiKCAbhG11F2qq8TpX79l5I1n32RhvhJMc1GXmSSlR+dKK0zVIspW9ENMsRc
    xsVlYeI9cGdGpShVj4eC3ya2ZZ0KFsEwwvJlOjXbJ8Ctw133fWEp/1nGFuiCP3sZ
    nfCSJ75Tc780Fqo0Q4pc8A==
    """

  Scenario: Updating an outdated Nextcloud 15.0.0 on the beta channel with incompatible PHP
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.0.0"
    And the installation mtime is "39"
    When The request is sent
    Then The response is non-empty
    And Update to version "15.0.14.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-15.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/15/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    A5WWizBmhSC+dfJNrA3eNjx4w3w9i+9GKs0TWCEOAi74E1gfQymaSa3UNdm/fjmP
    Osy1fnmICjDfXoIwkle+dlfAbwg2faRkF1px9a538Y5XXTXZ63P5JXABHYSvIAY3
    QDk2CwzM4tSiL2rf7tGgG8uxtvXkyG7DfHH7BweKFBPQ0Ly2ESiSHzVagAHo7f/O
    x3G7qC6o4g8pVPfVyXhOZcwf29et9DY3xtKluMQxrmHVTQ6mJ65IRny+/MNMrjwf
    05B0WC1WDnIiMAfUcEMovxuqoFexvrpnJ9ByOPPLTYMWfpQcJHjw4FiqgFQ/of/i
    DvYBQvWAJx0Q7tV9bofZjA==
    """

  Scenario: Updating an outdated Nextcloud 15.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "15.0.0.0"
    And The received PHP version is "7.1.0"
    And the installation mtime is "41"
    When The request is sent
    Then The response is non-empty
    And Update to version "16.0.11.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-16.0.11.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/16/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    b7SOD6KATY0bpbAcL/+1gdeLeuWAvsIn+tuUzF6HStrjxLrARw8cOrM7bCq5zcq7
    tJCWrI2Ww9CrKH8kNalEZNMDZy346QhYkUZNOiU2IP8wdb1601vRXfIkPyTVSpdk
    RDMQWtIushwa/WIZTKnJWo1fd0juxBnbmIl30rxDgUpBOkjx0zGvA2Ff+mssezX3
    qGhaB0Btr45xpgbHbeEQwsH1w2PXJFy9GsF2psbBEIykCPAxgRWR32bTGH8ws9Uy
    zpAxCj7W4wEnJFhsQ2zb0Wh5ZjSA9G1SARJhMp/8Efwm3uWJr5xK4MYKG2bQ29mt
    HWPTEBalqX2V9enOLAgVWQ==
    """

  Scenario: Updating an outdated Nextcloud 16.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "16.0.0.0"
    And The received PHP version is "7.1.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "17.0.10.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-17.0.10.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/17/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    UNo0Sh9xK+TlO6rL6s380gB436990558QOjdQiDaeYuFANjCQFz0aO957Fetpkol
    idhfkICTMtBC5mlSVAJjMW+5BIQ0kAHeJykqz6YD4Vw0aEIHHFgA1qCEphEj0/D5
    p5OzkP6JSkwp+/e1O8xFdr/8VIHdkCEM5Kd5lchzp83XmfZm1t6YdcV8ziACDZrT
    GaiG/TGRdHeR4ifgMpdMLZIy0x4Qd6k06dhCFsEz8H10Cf0oVmtrjxJsKEPY7doW
    4QZIg8gwFj8Uxk4ylijHFSeIxCX96ZSmj+7wolAn8kYqq5Q8iwVYjNqFtJZ/YXIc
    cNaaoBpx0s3QFdfhSnSgQQ==
    """

  Scenario: Updating an outdated Nextcloud 17.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "17.0.10.2"
    And The received PHP version is "7.2.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "18.0.14.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-18.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/18/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    nzM1fD0IYCr86Pb7fJLGQA0usVUOKE+JyFVVhJArh4BpdDI0C2yC7l2zeJgCEd+g
    RiXGB1N5a7GTfNSqdLO6ho+5dEg55OQYiTE75ji+dTKz9IDz99crk4BiYIsKc+bt
    Ztuq8p/kxJK7wkRlsxDTULQWlVe0f1shX2sTCg9CNYzY5/kwmQtz8OQ/umwya1sF
    FedS379Vnpa2NgAEq9W45r9hP6iZmKDBlwrY+r/pBWaJteI9xW9Ag8hhv4pSku0q
    BX4Qwl1YI2f8b0KHy3yIqmY58qsWTjGb319Nq3tPFsY8N2hUmFu4yve0nW6Zb/+1
    OcrbOha2Z819kkukqEE34Q==
    """

  Scenario: Updating an outdated Nextcloud 18.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "18.0.10.2"
    And The received PHP version is "7.2.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "18.0.14.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-18.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/18/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    nzM1fD0IYCr86Pb7fJLGQA0usVUOKE+JyFVVhJArh4BpdDI0C2yC7l2zeJgCEd+g
    RiXGB1N5a7GTfNSqdLO6ho+5dEg55OQYiTE75ji+dTKz9IDz99crk4BiYIsKc+bt
    Ztuq8p/kxJK7wkRlsxDTULQWlVe0f1shX2sTCg9CNYzY5/kwmQtz8OQ/umwya1sF
    FedS379Vnpa2NgAEq9W45r9hP6iZmKDBlwrY+r/pBWaJteI9xW9Ag8hhv4pSku0q
    BX4Qwl1YI2f8b0KHy3yIqmY58qsWTjGb319Nq3tPFsY8N2hUmFu4yve0nW6Zb/+1
    OcrbOha2Z819kkukqEE34Q==
    """

  Scenario: Updating an outdated Nextcloud 18.0.14.1 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "18.0.14.1"
    And The received PHP version is "7.2.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "19.0.13.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-19.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/19/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
   qWFamMWZegXESQawjDX9Zn5XHVNUElbOfmVKyCG/MWqTfX0cUIt/xDOccSK24hce
    8M47spBztkAKLEqsCBfwwmnpqDL2iVhuQVAwHuOyev/53lfdge5j7AH4yqPAEa+j
    XDdnHtLClAtYI7QtIeUAhuj0ychW47rcWRNsZ1tTxKGclZqPubiMd8eO6kn8S/uP
    SnaqLa3zSAKlqrda4qsvt4AnGfOB7/MZxQBO9Sy/D6F60DqvI9/IntjJyJm6uUzo
    +ziDzSgzCHt8/tFdbtjLR1j3zEv5n7epNdTZuj/Z3FVbBi4HSk9oOHa6LQTeqAeA
    WN2PwtM3nn6/5y0BMhJueQ==
    """

  Scenario: Updating an outdated Nextcloud 19.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "19.0.0.2"
    And The received PHP version is "7.2.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "19.0.13.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-19.0.13.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/19/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    qWFamMWZegXESQawjDX9Zn5XHVNUElbOfmVKyCG/MWqTfX0cUIt/xDOccSK24hce
    8M47spBztkAKLEqsCBfwwmnpqDL2iVhuQVAwHuOyev/53lfdge5j7AH4yqPAEa+j
    XDdnHtLClAtYI7QtIeUAhuj0ychW47rcWRNsZ1tTxKGclZqPubiMd8eO6kn8S/uP
    SnaqLa3zSAKlqrda4qsvt4AnGfOB7/MZxQBO9Sy/D6F60DqvI9/IntjJyJm6uUzo
    +ziDzSgzCHt8/tFdbtjLR1j3zEv5n7epNdTZuj/Z3FVbBi4HSk9oOHa6LQTeqAeA
    WN2PwtM3nn6/5y0BMhJueQ==
    """

  Scenario: Updating the latest Nextcloud 19.0.13 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "19.0.13.0"
    And The received PHP version is "7.2.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "20.0.14.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-20.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/20/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ie2H7/drKls2RxE5aS50ocGeXIBiAlczHvhCeObYF21s0qQtx0mGJe6TUvA8diQ5
    T3ZiZwRLQT2BH6GKHbOt6ku6RRSTILhglffUAv3CellNrYmkyAl1ob6/4H5/XHjC
    DgQ6Ykglk7xvQICw2l7s4tfa8KNIWLdPuWfUvXBBDsXKtFEmv8d0SU+f/dQR6JKu
    uLzb1cmunoldyvH/qC4XdKx1r/JqPEaQxW7l3WQeXaLCA2OiLxIBcHH6ucNJ4ik6
    fZCxpy3szm7gaozWquGfD+oglIY7GLVsbeZBTDFgF44OcDAY/29AL3TKRKN+cnQr
    6feVFe2PlZ2FK5zxWZNYfw==
    """

  Scenario: Updating the Nextcloud 20.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "20.0.0.3"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "20.0.14.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-20.0.14.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/20/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    ie2H7/drKls2RxE5aS50ocGeXIBiAlczHvhCeObYF21s0qQtx0mGJe6TUvA8diQ5
    T3ZiZwRLQT2BH6GKHbOt6ku6RRSTILhglffUAv3CellNrYmkyAl1ob6/4H5/XHjC
    DgQ6Ykglk7xvQICw2l7s4tfa8KNIWLdPuWfUvXBBDsXKtFEmv8d0SU+f/dQR6JKu
    uLzb1cmunoldyvH/qC4XdKx1r/JqPEaQxW7l3WQeXaLCA2OiLxIBcHH6ucNJ4ik6
    fZCxpy3szm7gaozWquGfD+oglIY7GLVsbeZBTDFgF44OcDAY/29AL3TKRKN+cnQr
    6feVFe2PlZ2FK5zxWZNYfw==
    """

  Scenario: Updating the Nextcloud 20.0.14 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "20.0.14.2"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "21.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-21.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/21/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    UmaMy3Rp14wXYO8IQPzJWIsJnz5po9Fw42upR3ci+EPmfpptUgCpxDBZ+uIMLpIf
    Ee9waBv1ZPRgOaUmzwWQUGzL+z1+LRMe9rm/m2SKEYDWzq0Uk0wmheqAdhaZHFYq
    EIXWXKMauXl+KxdNsJOftU96NzoiWTO8m4JjT7758fyGuio7jRWHCun1m+nb4hSD
    LQHdC1Ipng5IPFcR2EJ9zP+SpLR7pO7g+2raxlnLhvqT27FfiTAw3J4ztm/BsGTW
    BQwO9DSgH23A3veRLMpZnuiZcZfOJIr/LSRjvgxU+RdHKWFJkmngNQAg7pTPnjMH
    mE2YG/R4IKW+A8xqweVzig==
    """

  Scenario: Updating the Nextcloud 21.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "21.0.0.9"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "21.0.9.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-21.0.9.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/21/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    UmaMy3Rp14wXYO8IQPzJWIsJnz5po9Fw42upR3ci+EPmfpptUgCpxDBZ+uIMLpIf
    Ee9waBv1ZPRgOaUmzwWQUGzL+z1+LRMe9rm/m2SKEYDWzq0Uk0wmheqAdhaZHFYq
    EIXWXKMauXl+KxdNsJOftU96NzoiWTO8m4JjT7758fyGuio7jRWHCun1m+nb4hSD
    LQHdC1Ipng5IPFcR2EJ9zP+SpLR7pO7g+2raxlnLhvqT27FfiTAw3J4ztm/BsGTW
    BQwO9DSgH23A3veRLMpZnuiZcZfOJIr/LSRjvgxU+RdHKWFJkmngNQAg7pTPnjMH
    mE2YG/R4IKW+A8xqweVzig==
    """

  Scenario: Updating the Nextcloud 21.0.9 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "21.0.9.1"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "22.2.10.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-22.2.10.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/22/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    XDDYmHMD8famkqCoed6EmUO4PNL8YsMOv859HOmcPThrQ2GcTr0jeX06oQ3ZrRsC
    wkfN+idHSOwY++S/qN7Pp65/isSfVU7LSYn/ELEnyRC5l8M1g1F/By4Bj8Np+7mA
    HIJmvvAKiVflOGPHWIhcXin1whDXeLXxpz3ntHR02XARLgozkbnyOrjxmkcx0BOk
    yyRgxVQXLR1QsFUhrt8+zjlhL/JsEHzCQ954n0mggdx8IhiEUqpHFjubwQbEytX9
    fhlPbaifQKypXBpBdN/RBRt6Ox5z2lSG5IY/g8nc4x7rYQSpiTrtWi1vlcxF0aIT
    GorEOAeOrtcV0ba4AVoETQ==
    """

  Scenario: Updating the Nextcloud 22.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "22.0.0.11"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "22.2.10.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-22.2.10.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/22/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    XDDYmHMD8famkqCoed6EmUO4PNL8YsMOv859HOmcPThrQ2GcTr0jeX06oQ3ZrRsC
    wkfN+idHSOwY++S/qN7Pp65/isSfVU7LSYn/ELEnyRC5l8M1g1F/By4Bj8Np+7mA
    HIJmvvAKiVflOGPHWIhcXin1whDXeLXxpz3ntHR02XARLgozkbnyOrjxmkcx0BOk
    yyRgxVQXLR1QsFUhrt8+zjlhL/JsEHzCQ954n0mggdx8IhiEUqpHFjubwQbEytX9
    fhlPbaifQKypXBpBdN/RBRt6Ox5z2lSG5IY/g8nc4x7rYQSpiTrtWi1vlcxF0aIT
    GorEOAeOrtcV0ba4AVoETQ==
    """

  Scenario: Updating the latest Nextcloud 22 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "22.2.10.0"
    And The received PHP version is "7.3.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "23.0.12.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-23.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/23/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    tu+v9XHqXSKxncQi5ps0Sz7DHZ8l4sXAPw/8B2REvlkw/YC8OMSpnTy8LSKKgIdZ
    sFsVcvA0Q6l84Xve6cxE3XpRKxSAxWJbamsmE35HcLwxVtuwpWxyOFD9xUzDVCVf
    nZfQcDUjeK2xQxV+qVjuPuoz0TmRwcZJwrXk/nZiA1cAV/k2PPG9FP25R8WAdIQD
    rfrM7C5GWPNSzv9qcUteJ4jv9ORJ/FiZVewSfP+5hKxTIeUw+D/9LbCjRVzKwvIx
    3r9oA+gwN2zYNOuYFvpF9FtVtJ9NLR/EJWBoHWLuO0XcrXgVWoemwF97nFeV5Hdp
    PlWRhIoX0XzP82+TC5b1dg==
    """

  Scenario: Updating Nextcloud 23.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "23.0.0.0"
    And The received PHP version is "7.4.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "23.0.12.2" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-23.0.12.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/23/admin_manual/maintenance/upgrade.html"
    And EOL is set to "1"
    And The signature is
    """
    tu+v9XHqXSKxncQi5ps0Sz7DHZ8l4sXAPw/8B2REvlkw/YC8OMSpnTy8LSKKgIdZ
    sFsVcvA0Q6l84Xve6cxE3XpRKxSAxWJbamsmE35HcLwxVtuwpWxyOFD9xUzDVCVf
    nZfQcDUjeK2xQxV+qVjuPuoz0TmRwcZJwrXk/nZiA1cAV/k2PPG9FP25R8WAdIQD
    rfrM7C5GWPNSzv9qcUteJ4jv9ORJ/FiZVewSfP+5hKxTIeUw+D/9LbCjRVzKwvIx
    3r9oA+gwN2zYNOuYFvpF9FtVtJ9NLR/EJWBoHWLuO0XcrXgVWoemwF97nFeV5Hdp
    PlWRhIoX0XzP82+TC5b1dg==
    """

  Scenario: Updating the latest Nextcloud 23 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "23.0.12.2"
    And The received PHP version is "7.4.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "24.0.10.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-24.0.10.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/24/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    ho7kpQc5TfIh0EgYpy99K/jAd7ENguVilO15j930gGKMmOiQc43sCiFDaDNPk5uJ
    QrbDep/V5VRrKaUeJsBJ3QY5czpTCzmmdX+uqC+NHxrKTfzlhkNnESzNqJjJyU4D
    jhvVV3kmuU/3FrsuV2HNLxViyl1ZYuOSe4pe8mSzEG9GiX7e1xzwyDH9oGyKUQck
    JebFBKNCSkTILlsbZtulcX1Q10VT5NBJtvICFUyPo3pUJ2FruIj0OfrUKplCX5QA
    ObkRgCGURiSOd7vumy7qQVexIvTcaK3TFYg78HArHCN/gbTVxmYpMe5Auxzqg8Fo
    8z6yFyU42/NondFonXUwvA==
    """

  Scenario: Updating Nextcloud 24.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "24.0.0.6"
    And The received PHP version is "7.4.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "24.0.10.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-24.0.10.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/24/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    ho7kpQc5TfIh0EgYpy99K/jAd7ENguVilO15j930gGKMmOiQc43sCiFDaDNPk5uJ
    QrbDep/V5VRrKaUeJsBJ3QY5czpTCzmmdX+uqC+NHxrKTfzlhkNnESzNqJjJyU4D
    jhvVV3kmuU/3FrsuV2HNLxViyl1ZYuOSe4pe8mSzEG9GiX7e1xzwyDH9oGyKUQck
    JebFBKNCSkTILlsbZtulcX1Q10VT5NBJtvICFUyPo3pUJ2FruIj0OfrUKplCX5QA
    ObkRgCGURiSOd7vumy7qQVexIvTcaK3TFYg78HArHCN/gbTVxmYpMe5Auxzqg8Fo
    8z6yFyU42/NondFonXUwvA==
    """

  Scenario: Updating the latest Nextcloud 24 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "24.0.10.0"
    And The received PHP version is "7.4.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "25.0.4.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-25.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/25/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    awzXTIax7WJRaRb30rrBKS2lGLXC7dhE0O7ieLRg8gXbF9w1emqEjbqIPbL7hqk0
    6cssaZjCkzlXoe13KBtBQ0toPbU4Eg2dj2XdbzVE8BN0OLGZGWRek4P4p4U3SrQN
    kNbodnJ+mZrm7vdCcQmpZXa5UwEExBR2AHWdCv5+RaRbQitZqD5xYGFWGl5bv4i6
    9f2glCLy8n0Oi5ZnpUGhRIhzk/OtyaLRB40xXRhI5+k9Xj/bArLahVBQHWI9s9Ch
    IZ0qSIbHNU0xFNh3cH1LkUU11zQD7r1bCkLBO4qeL5LIP8kK5BlmYm6LSeDDrAdI
    lg0LLgBF0a7ndI+5FONtOg==
    """

  Scenario: Updating Nextcloud 25.0.0 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "25.0.0.0"
    And The received PHP version is "7.4.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "25.0.4.1" is available
    And URL to download is "https://download.nextcloud.com/server/releases/nextcloud-25.0.4.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/25/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    awzXTIax7WJRaRb30rrBKS2lGLXC7dhE0O7ieLRg8gXbF9w1emqEjbqIPbL7hqk0
    6cssaZjCkzlXoe13KBtBQ0toPbU4Eg2dj2XdbzVE8BN0OLGZGWRek4P4p4U3SrQN
    kNbodnJ+mZrm7vdCcQmpZXa5UwEExBR2AHWdCv5+RaRbQitZqD5xYGFWGl5bv4i6
    9f2glCLy8n0Oi5ZnpUGhRIhzk/OtyaLRB40xXRhI5+k9Xj/bArLahVBQHWI9s9Ch
    IZ0qSIbHNU0xFNh3cH1LkUU11zQD7r1bCkLBO4qeL5LIP8kK5BlmYm6LSeDDrAdI
    lg0LLgBF0a7ndI+5FONtOg==
    """

  Scenario: Updating latest Nextcloud 25 on the beta channel
    Given There is a release with channel "beta"
    And The received version is "25.0.4.1"
    And The received PHP version is "8.1.0"
    And the installation mtime is "11"
    When The request is sent
    Then The response is non-empty
    And Update to version "26.0.0.7" is available
    And URL to download is "https://download.nextcloud.com/server/prereleases/nextcloud-26.0.0beta5.zip"
    And URL to documentation is "https://docs.nextcloud.com/server/26/admin_manual/maintenance/upgrade.html"
    And EOL is set to "0"
    And The signature is
    """
    MEMgeldHGIn6tloIhAS/+LbdjZEAVNZe4uYtRVfcaNMyXcvhkvu5X0M8MFeDbcXb
    8fiARqTuih6XiBaPc+EX8U6yXa6D5DhflqAARHHiDkteJhRg3ds4abL6HnPV4ZYb
    m1pYncpBDKi2GVvcfZoXGoaIYhoxo6KHuOvxIvsxXcEXjZrpsVN+tGvnvI1lx3u+
    G7HVAdlsqYLeD7IjrokNcfFbGT+iSzqHOeNr03nArTEjhUbhsmp89eutWl4DmZNS
    yMdgCdXB1QrJFiy4Bl5/Iun2QkKsS9NuLCAwIbsFVf2M/x1j2+8lyqp1FTsIBVNn
    fdEtpypCVT3OWt9pjGrN5Q==
    """
