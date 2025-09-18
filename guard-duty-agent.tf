################################
# EKS Cluster guardduty agent addon #
################################

resource "aws_eks_addon" "guardduty_agent" {
  count = var.addon_create_guardduty_agent ? 1 : 0

  cluster_name                = var.eks_cluster_id
  addon_name                  = "aws-guardduty-agent"
  resolve_conflicts_on_create = "OVERWRITE"
  resolve_conflicts_on_update = "PRESERVE"
  addon_version               = var.addon_guardduty_agent_version

  tags = var.addon_tags
}


