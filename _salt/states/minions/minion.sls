salt-minion:
  pkg.installed:
    - refresh: True
    - cache_valid_time: {{ minion.cache_valid_time }}

/etc/salt/minion:
  file.managed:
    - source: salt://{{ slspath }}/files/etc/salt/minion
    - template: jinja
    - user: root
    - group: root
    - mode: "0640"

salt-minion.service:
  service.running:
    - enable: True
    - watch:
      - file: /etc/salt/minion
