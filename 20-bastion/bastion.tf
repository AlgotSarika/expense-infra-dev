resource "aws_instance" "bastion" {
  ami                    = data.aws_ami.joindevops.id #This is our devops-practice AMI ID
  vpc_security_group_ids = [data.aws_ssm_parameter.bastion_sg_id.value]
  instance_type          = "t3.micro"
  subnet_id = local.public_subnet_id
  tags = merge(
    var.common_tags,
    {
        Name = "${var.project_name}-${var.environment}-bastion"
    }
  )
}