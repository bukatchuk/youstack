{{saltenv}}:
  '*':
    - headers
    - defaults

  '{{ grains.id }}':
    - {{ grains.id.split('.')[:-1]|reverse()|join('.') }}
    - ignore_missing: True
