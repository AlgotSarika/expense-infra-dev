#!/bin/bash

dnf install ansible -y

# push

#ansible-playbook -i inventory mysql.yaml

#pull

ansible-pull -i localhost, -U https://github.com/AlgotSarika/expense-ansible-role-tf.git main.yaml -e COMPONENT=backend -e ENVIRONMENT=$1




# #!/bin/bash

# dnf install ansible -y
# # push
# # ansible-playbook -i inventory mysql.yaml

# #pull
# ansible-pull  -i localhost, -U https://github.com/DAWS-82S/expense-ansible-roles-tf.git main.yaml -e COMPONENT=backend -e ENVIRONMENT=$1