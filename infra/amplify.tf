# Amplify Resource
resource "aws_amplify_app" "my_ascii_react" {
  name       = var.amplify_app_name
  repository = var.github_repository_url
  oauth_token = var.github_oauth_token
  platform = "WEB"
  

  # The default build_spec added by the Amplify Console for React.
  build_spec = <<-EOT
    version: 1
    frontend:
      phases:
        preBuild:
          commands:
            - cd app 
            - npm ci
        build:
          commands:
            - npm run build
      artifacts:
        baseDirectory: app/build
        files:
          - '**/*'
      cache:
        paths:
          - app/node_modules/**/*
  EOT
}   

# Deployment branch
resource "aws_amplify_branch" "main_branch_deployment" {
    app_id = aws_amplify_app.my_ascii_react.id
    branch_name = var.amplify_branch_name
    stage = "PRODUCTION"
}
