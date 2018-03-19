access_key="AKIAJZBVOLL3NZGEIKMQ"
secret_key="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"
region = "ap-southeast-1"                       #AWS EC2 Region
image_id = "ami-b7f388cb"                       #AWS Ubuntu/Rhel Image code dependent on region
key_pair_name = "aws-icp"                       #Key Pair Name to be created in AWS
aws_vpc_cidr = "10.10.0.0/16"                   #AWS VPC CIDR
aws_subnet = "10.10.0.0/24"                     #AWS Subnet fot ICP
ssh_user = "ubuntu"                             #VM Login User ubuntu for Ubuntu or ec2-user for RHEL
icpadmin_password = "admin"
icp_version = "2.1.0.1"                         #ICP Version. e.g. 2.1.0.1 , 2.1.0.1-ee
instance_prefix = "icp"                         #VM Name prefix
network_cidr = "172.16.0.0/16"                  #ICP Network CIDR
cluster_ip_range = "10.10.1.1/24"               #ICP Cluster IP Range
cluster_name = "icpawsdemo"                     #ICP Cluster Name
install_gluster = true                          #Flag to install gluster
master = {
    nodes         = "1"
    name          = "master"
    instance_type = "t2.xlarge"
    kubelet_lv    = "10"                        #Kubelet Volume size
    docker_lv     = "50"                        #Docker Volume size
    etcd_lv       = "4"                         #etcd volume size
    registry_lv  = "15"                         #registry volume size
    management_lv = "20"                        #Management volume size
}
proxy = {
    nodes         = "0"
    name          = "proxy"
    instance_type = "t2.medium"
    kubelet_lv    = "10"
    docker_lv     = "40"
}
management = {
    nodes         = "1"
    name          = "mgmt"
    instance_type = "t2.xlarge"
    kubelet_lv    = "10"
    docker_lv     = "40"
    management_lv = "50"                        #Management volume size
}
worker = {
    nodes         = "3"
    name          = "worker"
    instance_type = "t2.xlarge"
    kubelet_lv    = "10"
    docker_lv     = "90"
    glusterfs     = "100"                       #Gluster Filesystem
}
gluster = {
    nodes         = "0"
    name          = "gluster"
    instance_type = "t2.medium"
    glusterfs     = "100"
}
