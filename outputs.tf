# Outputs EC2 Instances
output "linux_bastion_instance_public_ip" {
  value = aws_instance.bastion_instance.public_ip
}
output "linux_iscsi_workload_private_ip" {
  value = aws_instance.linux_iscsi_workload.private_ip
}

#Outputs for Rubrik Cloud Cluster
output "rubrik_ips" {
  value = module.rubrik-cloud-cluster.rubrik_cloud_cluster_ip_addrs[*]
}
output "rubrik_bucket" {
  value = module.rubrik-cloud-cluster.backup_bucket_name
}

#copy the config script to the bastion instance
output "secure_copy_configure_sh_command" {
  value = format("%s%s%s%s%s%s%s", "scp -i $HOME/.ssh/bilh-aws-demo-master-key -oStrictHostKeyChecking=no ", "${local_file.configure_sh.filename}", " ec2-user@", "${aws_instance.bastion_instance.public_ip}", ":/home/ec2-user/ && ssh -i $HOME/.ssh/bilh-aws-demo-master-key -oStrictHostKeyChecking=no ec2-user@", "${aws_instance.bastion_instance.public_ip}", " ./configure.sh")
}

# use this output to set up an ssh tunnel to the Pure and Rubrik management GUIs
output "ssh_local_port_forwarding_command" {
  value = format("%s%s%s%s", "ssh -N -i $HOME/.ssh/bilh-aws-demo-master-key -L 8444:", "${module.rubrik-cloud-cluster.rubrik_cloud_cluster_ip_addrs[0]}", ":443 -oStrictHostKeyChecking=no -p 22 ec2-user@", "${aws_instance.bastion_instance.public_ip}")
}

output "rubrik_managment_url" {
  value = format("%s", "https://localhost:8444")
}