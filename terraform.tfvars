# AWS Variables
aws_prefix  = "rubrik-cc-es-"
aws_region  = "us-east-1"
aws_profile = "ahead-root"
aws_zone                      = "a"
aws_bastion_instance_type     = "t3.large"
bilh_aws_demo_master_key_name = "bilh-aws-demo-master-key"

rubrik_admin_email  = "vinnie.lee@ahead.com"
rubrik_cluster_name = "rubrik-cc-es"
rubrik_node_count   = 3

######################################
# TF_VAR_local_environment_variables #
######################################
# bilh_aws_demo_master_key_pub  = TF_VAR_bilh_aws_demo_master_key_pub
# bilh_aws_demo_master_key      = TF_VAR_bilh_aws_demo_master_key
# rubrik_pass                   = TF_VAR_rubrik_pass
# rubrik_support_password         = TF_VAR_rubrik_support_password