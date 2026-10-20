# Desafio DevOps: Infraestrutura com Terraform, Cloud-Init e GitHub Actions

Este repositório contém a solução para automação de infraestrutura, provisionamento de máquinas virtuais e integração contínua (CI/CD).

---

## 📂 Estrutura do Projeto

```text
├── .github/workflows/
│   └── terraform-ci.yml    # Pipeline de CI/CD do GitHub Actions
├── main.tf                 # Configuração principal dos recursos (AWS EC2, Security Group)
├── variables.tf            # Declaração de variáveis do Terraform
├── outputs.tf              # Informações de saída (IP público e ID da instância)
├── provider.tf             # Definição do provider da AWS e versão do Terraform
├── user-data.yaml          # Script Cloud-Init para inicialização da VM (Hostname, Docker, Nginx)
├── .gitignore              # Ficheiros e pastas ignoradas pelo controlo de versão
└── README.md               # Documentação do projeto
```

## 🚀Como Executar Localmente ##

# Pré-requisitos

Terraform instalado na máquina (versão 1.5.0 ou superior).

Credenciais de acesso à nuvem configuradas (ou variáveis de ambiente simuladas para testes local)

# 1. Inicializar o Terraform (Baixa os providers necessários)

terraform init

# 2. Validar a sintaxe do código

terraform validate

# 3. Validar a formatação

terraform fmt

# 4. Gerar o plano de execuçãobash

terraform plan

---

## ⚙️Pipeline de CI/CD (GitHub Actions) ##

O repositório conta com uma pipeline **automatizada** em .github/workflows/terraform-ci.yml que executa as seguintes etapas a cada **push na main ou master** ou **pull_request**:

Verificação de formatação (terraform fmt).

Inicialização e validação de sintaxe (terraform validate).

Geração do plano de infraestrutura (terraform plan).

Aplicação controlada na branch principal (terraform apply).





