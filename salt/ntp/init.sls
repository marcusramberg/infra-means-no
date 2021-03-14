ntp:
  pkg.installed: []
ntpd:
  service.running:
    - require:
      - pkg: ntp
