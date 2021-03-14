
postfix:
  pkg:
    - installed
  service.running:
    - enable: True
    - require:
      - pkg: postfix
    - watch:
      - file: /etc/postfix/*


/etc/postfix/main.cf:
  file.managed:
    - source: 'salt://postfix/files/main.cf'
    - user: root
    - group: root
    - mode: 644
    - template: jinja

/etc/postfix/master.cf:
  file.managed:
    - source: 'salt://postfix/files/master.cf'
    - user: root
    - group: root
    - mode: 644
    - template: jinja
