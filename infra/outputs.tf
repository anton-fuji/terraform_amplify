output "amplify_app_url" {
  description = "The default URL of the deployed Amplify application."
  value       = aws_amplify_app.my_ascii_react.default_domain
}

output "amplify_app_id" {
  description = "The ID of the Amplify App."
  value       = aws_amplify_app.my_ascii_react.id
}