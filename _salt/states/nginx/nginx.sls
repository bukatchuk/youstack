nginx:
    pkg.installed:
        - name: nginx
    service.running:
        - enable: True
        - reload: True

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://{{ slspath }}/files/etc/nginx/nginx.conf
    - mode: 644
    - user: root
    - group: root
    - require:
      - pkg: nginx

