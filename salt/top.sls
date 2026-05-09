{{saltenv}}:
  '*':
    - states.minions
    - states.packages
    - states.schedule

  'lab.bukatchuk.com':
    - states.nginx

#{% if grains.kernel == 'Linux' %}
#  - openssh
#  - openssh.config
#  - rsyslog
#  - tuning.modules
#{% endif %}

{% if 'roles' in pillar %}
  {% for role in salt['pillar.get']('roles', []) %}
    - roles/{{ role }}
  {% endfor %}
{% endif %}

{% if 'services' in pillar %}
  {% for service in salt['pillar.get']('services', []) %}
    - services/{{ service }}
  {% endfor %}
{% endif %}
