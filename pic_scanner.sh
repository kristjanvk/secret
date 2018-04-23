find ./  -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image'
