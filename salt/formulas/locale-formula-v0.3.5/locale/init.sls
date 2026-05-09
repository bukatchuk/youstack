# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import locale with context %}

# Installs and configures system locales

{% if locale.pkgs is iterable %}
locale_pkgs:
  pkg.installed:
    - pkgs:
      {%- for pkg in locale.pkgs %}
        - {{ pkg }}
      {% endfor %}
{% endif %}

{%- for l in locale.present %}
locale_present_{{ l|replace('.', '_')|replace(' ', '_') }}:
  locale.present:
    - name: {{ l }}
{%- endfor %}

{% if locale.default is defined %}
dbus_for_locale:
  pkg.installed:
    - name: {{ locale.dbus.pkg }}
    - require_in:
      - locale: locale_default
  {%- if locale.dbus.run_service %}
  service.running:
    - name: {{ locale.dbus.service }}
    - enable: true
    - require:
      - pkg: dbus_for_locale
    - require_in:
      # `dbus` is required for running `localectl`
      - locale: locale_default
  {%- endif %}
locale_default:
  locale.system:
    - name: {{ locale.default.name }}
    - require:
      - locale: locale_present_{{ locale.default.requires|replace('.', '_')|replace(' ', '_') }}
{% endif %}

{%- if locale.conf is defined %}
locale_conf:
  file.managed:
    - name: {{ locale.config }}
    - contents_pillar: locale:conf
{% endif %}
