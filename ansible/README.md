# Prep
```
# You need to pass your vault password as a variable
vault_pass=VaultPass
```

# Create vault file
```
mkdir host_vars
echo "coredocker_become_pass: <become pass>" > host_vars/coredocker.yaml
echo "corepve_become_pass: <become pass>" > host_vars/corepve.yaml
ansible-vault encrypt host_vars/coredocker.yaml
ansible-vault encrypt host_vars/corepve.yaml
```

