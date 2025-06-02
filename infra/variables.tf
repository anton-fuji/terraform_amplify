variable "aws_region" {
  description = "To deploy resources."
  type        = string
  default     = "ap-northeast-1"
}

# Name of Amplify App
variable "amplify_app_name" {
  description = "The name of the Amplify App."
  type        = string
  default     = "my-ascii-react-app"
}

# GitHub Repo URL
variable "github_repository_url" {
  description = "The URL of the GitHub repository containing the React app."
  type        = string
  default = "https://github.com/anton-fuji/terraform_amplify"
}

# GitHub OAuth Token
variable "github_oauth_token" {
  description = "GitHub OAuth Token with 'repo' scope for Amplify to access the repository."
  type        = string
  sensitive   = true
}

variable "amplify_branch_name" {
  description = "The branch name to deploy in Amplify."
  type        = string
  default     = "main"
}