name 'myrole'

default_attributes(
  'sysctl' => {
    'net.core.somaxconn' => 450,
    'fs.file-max' => 65000,
  }
)

run_list(
  'sysctl',
  'mynginx',
)