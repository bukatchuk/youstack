/etc/nginx/conf.d/audio.lab.bukatchuk.com.conf:
  file.managed:
    - source: salt://{{ slspath }}/files/etc/nginx/conf.d/audio.lab.bukatchuk.com.conf
    - mode: 644
    - user: root
    - group: root
    - require:
      - pkg: nginx

/etc/nginx/conf.d/metrics.lab.bukatchuk.com.conf:
  file.managed:
    - source: salt://{{ slspath }}/files/etc/nginx/conf.d/metrics.lab.bukatchuk.com.conf
    - mode: 644
    - user: root
    - group: root
    - require:
      - pkg: nginx

