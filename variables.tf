variable "GOOGLE_REGION" {
  description = "Google Cloud region"
  type        = string
}

variable "GOOGLE_PROJECT" {
  description = "Google Cloud project ID"
  type        = string
}

variable "GKE_NUM_NODES" {
  description = "Number of nodes in the GKE cluster"
  type        = number
}
variable "GOOGLE_CREDENTIALS_JSON" {
  description = "Base64 encoded Google credentials JSON"
  type        = string
}
