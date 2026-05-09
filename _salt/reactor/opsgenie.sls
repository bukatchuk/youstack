opsgenie_event_poster:
  local.opsgenie.post_data:
    - tgt: 'salt.lab.bukatchuk.com'
    - kwarg:
        name: event.reactor
        api_key: '{{ api_key }}'
        reason: {{ data['data']['reason'] }}
        action_type: Create
