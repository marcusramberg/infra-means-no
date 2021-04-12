base:
  '*':
  - postfix
  - aliases
  - base-packages
  - sysctl
  - ntp
  - sshd
  - timezone
  'G@roles:longhorn':
  - iscsid
