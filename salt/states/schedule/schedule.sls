pull_mode:
  schedule.present:
    - name: highstate
    - function: state.highstate
    - seconds: 3600
    - kwargs:
        saltenv: base
    - splay: 3600
    - enabled: True

