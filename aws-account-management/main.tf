# Create an AWS Organization
resource "aws_organizations_organization" "org" {
  feature_set = "ALL"
}

# Create Pre-production Organizational Unit
resource "aws_organizations_organizational_unit" "preprod" {
  name      = "preprod"
  parent_id = aws_organizations_organization.org.roots[0].id
}

# Create Production Organizational Unit
resource "aws_organizations_organizational_unit" "prod" {
  name      = "production"
  parent_id = aws_organizations_organization.org.roots[0].id
}

resource "aws_vpc" "main" {
  cidr_block = "11.0.0.0/16"
}