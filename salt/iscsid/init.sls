open-iscsi:
  pkg.installed: []
iscsid:
  service.running:
    - require:
      - pkg: open-iscsi
