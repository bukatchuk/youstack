{%- if pillar.salt_minion is defined and pillar.salt_minion.schedule is defined %}
  {%- for job_name, data in pillar.salt_minion.schedule.items() %}
  {%- set job = salt['schedule.is_enabled']( job_name ) %}
  {{ job_name }}:
    schedule.present:
      - function: {{ data.function }}
      - seconds: {{ data.seconds if data.seconds is defined else 3600 }}
  {%- if data.enable %}
    - enabled: {{ job.enabled if job.enabled is defined else True }}
  {%- else %}
    - enabled: False
  {%- endif %}
    - splay: {{ data.splay if data.splay is defined else 60 }}
    - job_kwargs: {{ data.kwargs if data.kwargs is defined else {} }}
  {%- endfor %}
{% endif %}
