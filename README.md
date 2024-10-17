# AWS Network Terraform Project

This project uses Terraform to provision and manage AWS infrastructure. The infrastructure is divided into modules for better organization and reusability.

## Project Structure

```
aws-network-terraform/
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── subnet/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── internet-gateway/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── nat-gateway/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── route-table/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── security-group/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── backend.tf
├── .gitignore
```

## Modules

### VPC Module

- **main.tf**: Defines the VPC resource.
- **variables.tf**: Declares the variables used in the VPC module.
- **outputs.tf**: Outputs the VPC ID.

### Subnet Module

- **main.tf**: Defines the public and private subnet resources.
- **variables.tf**: Declares the variables used in the subnet module.
- **outputs.tf**: Outputs the subnet IDs.

### Internet Gateway Module

- **main.tf**: Defines the Internet Gateway resource.
- **variables.tf**: Declares the variables used in the Internet Gateway module.
- **outputs.tf**: Outputs the Internet Gateway ID.

### NAT Gateway Module

- **main.tf**: Defines the NAT Gateway resource.
- **variables.tf**: Declares the variables used in the NAT Gateway module.
- **outputs.tf**: Outputs the NAT Gateway ID.

### Route Table Module

- **main.tf**: Defines the Route Table resource and its association.
- **variables.tf**: Declares the variables used in the Route Table module.
- **outputs.tf**: Outputs the Route Table ID.

### EC2 Module

- **main.tf**: Defines the public and private EC2 instance resources.
- **variables.tf**: Declares the variables used in the EC2 module.
- **outputs.tf**: Outputs the EC2 instance IDs and public IP.

### Security Group Module

- **main.tf**: Defines the security group resources.
- **variables.tf**: Declares the variables used in the Security Group module.
- **outputs.tf**: Outputs the security group IDs.

## Root Configuration

### main.tf

The root `main.tf` file uses the modules to provision the infrastructure.

### variables.tf

The root `variables.tf` file declares the variables used in the root configuration.

### outputs.tf

The root `outputs.tf` file outputs the IDs and other information from the modules.

### terraform.tfvars

The `terraform.tfvars` file contains the values for the variables.

### backend.tf

The `backend.tf` file configures the remote backend for storing the Terraform state.

### .gitignore

The `.gitignore` file specifies files and directories to be ignored by Git.

## Usage

1. **Initialize the project**:

    ```sh
    terraform init
    ```

2. **Plan the changes**:

    ```sh
    terraform plan
    ```

3. **Apply the changes**:

    ```sh
    terraform apply
    ```

## Variables

The following variables need to be defined in `terraform.tfvars`:

- `region`: AWS region where the resources will be deployed.
- `availability_zones`: List of availability zones to deploy resources.
- `vpc_cidr`: CIDR block for the VPC.
- `public_subnet_cidr`: CIDR block for the public subnet.
- `private_subnet_cidr`: CIDR block for the private subnet.
- `key_name`: Key pair for EC2 instances.
- `instance_type`: EC2 instance type.
- `ami`: AMI ID for EC2 instances.
- `security_groups`: Map of security groups with ingress rules.

## Outputs

The following outputs are available:

- `vpc_id`: The ID of the VPC.
- `public_subnet_id`: The ID of the public subnet.
- `private_subnet_id`: The ID of the private subnet.
- `public_instance_id`: The ID of the public EC2 instance.
- `public_instance_public_ip`: The public IP of the public EC2 instance.
- `private_instance_id`: The ID of the private EC2 instance.
- `security_group_ids`: The security group IDs for both public and private instances.
