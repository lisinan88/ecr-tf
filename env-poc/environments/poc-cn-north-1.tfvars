#provider
account_alias = "poc"
region        = "cn-north-1" 


# S3 Bucket variables
s3_bucket_name = "176637285268-ec2imagebuilder-logs-cn-north-1"

enabled               = true
s3_versioning_enabled = false
s3_versioning_enabled-test = true
s3_mfa_delete         = "Disabled"
s3_kms_key_arn        = "AES256"

block_public_acls      = true
block_public_policy    = true
ignore_public_acls     = true
restrict_public_buckets = true

new_s3_lifecycle_configuration = []
use_new_lifecycle_configuration = false

s3_accesspoint_name         = ""
enable_s3_access_point      = false
enable_s3_access_point_policy = false

s3_multiregion_accesspoint_name         = ""
enable_s3_multiregion_access_point      = false
intelligent_tiering_config = []
object_ownership = "BucketOwnerEnforced"

# Tag-specific variables
dr_tier       = "engineering/design"
cost_center   = "12345678"
application_id = "C360"
project_name   = "C360"
app_partner    = "Fred"
cpm_backup     = ""
environment    = "POC"
compliance     = "none"
brand          = "TPR"
os             = ""
tf_repo        = "tf-awscn-s3bucket-root"
fw_rule_id     = ""
patch_group    = "default"
tf_deployed_by = "ktariq"

