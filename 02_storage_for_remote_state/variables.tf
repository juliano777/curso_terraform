variable "location" {
  type        = string
  default     = "Brazil South"
  description = "Variável de região onde recursos são criados"
}

variable "account_tier" {
  type        = string
  default     = "Standard"
  description = "Tier da storage account da Azure"
}

variable "account_replication_type" {
  type        = string
  default     = "LRS"
  sensitive   = true
  description = "Tipo de replicação de dados da storage account"
}