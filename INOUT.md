# Terraform inputs and outputs.


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cidr | VPC's CIDR range. | string | - | yes |
| igw_name | Internet gateway name. This will be uses as the 'Name' tag value. | string | `main-igw` | no |
| rt_name | VPC's main public route table name. | string | `public-rt` | no |
| tags | Additional tags. | map | `<map>` | no |
| vpc_name | VPC name. This will be uses as the 'Name' tag value. | string | `main-vpc` | no |

## Outputs

| Name | Description |
|------|-------------|
| igw_id | AWS Internet gateway identifier. |
| rt_id | Main public RT identifier. |
| vpc_id | VPC identifier. |

