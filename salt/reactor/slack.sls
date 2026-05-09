{% set message  = data.data.message  if data.data.message is defined else 'fake' %}
{% set channel  = data.data.channel  if data.data.channel is defined else '#test-bot-saltstack' %}
{% set username = data.data.username if data.data.username is defined else 'SaltStack' %}

{% do salt.log.error( data ) %}

slack_postMessage:
  runner.http.query:
   - arg:
     - 'https://slack.com/api/chat.postMessage'
   - kwarg:
       method: POST
       header_dict: {"Content-Type": "application/json", "Authorization": "Bearer "}
       data: '
       {
        "blocks":
         [
          {
           "type": "section",
           "text":
           {
             "type": "mrkdwn",
             "text": "{{ message | replace('{','\\n ')|replace('}','') | replace("\'","") | replace(":",":") }}"
           }
          }
         ],
         "channel":"{{ channel }}",
         "username":"{{ username }}"
        }'

