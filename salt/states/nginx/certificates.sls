/etc/ssl/certs/lab/fullchain.pem:
  file.managed:
    - source: salt://{{ slspath }}/files//etc/ssl/certs/lab/fullchain.pem
    - mode: 600
    - user: root
    - group: root
    - require:
      - pkg: nginx

/etc/ssl/certs/lab/privkey.pem:
  file.managed:
    - source: salt://{{ slspath }}/files/etc/ssl/certs/lab/privkey.pem
    - mode: 600
    - user: root
    - group: root
    - require:
      - pkg: nginx

