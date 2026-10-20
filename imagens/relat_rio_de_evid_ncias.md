# 📸 Relatório de Evidências do Projeto - Cloud-Init & Terraform

Este documento reúne as evidências exigidas para a comprovação da execução da pipeline CI/CD, provisionamento de infraestrutura como código e automação via Cloud-Init.

---

## 1. A pipeline foi executada
**Descrição:** Validação da pipeline no GitHub Actions demonstrando a automação dos processos de formatação, validação de sintaxe e geração do plano de execução do Terraform.

![Pipeline Executada](imagens/pipeline-executada.png)

---

## 2. A infraestrutura foi provisionada
**Descrição:** Estruturação dos arquivos Terraform (`main.tf`, `variables.tf`, `outputs.tf`, `provider.tf`) responsáveis pela declaração e planejamento do provisionamento da máquina virtual (EC2) e Security Groups.

![Plano do Terraform](imagens/Infraestrutura-provisionada.png)

---

## 3. O Cloud-Init concluiu a configuração inicial
**Descrição:** Definição da automação no arquivo `user-data.yaml` integrado à VM para execução dos passos de inicialização do sistema no primeiro boot.

![Configuração Cloud-Init](imagens/cloud-init.png)

---

## 4. Docker e Nginx estão instalados e ativos
**Descrição:** Mapeamento no Cloud-Init da instalação e inicialização dos serviços do Docker e Nginx (via gerenciador de pacotes e comandos do `systemctl`).

![Docker e Nginx Ativos](imagens/docker-nginx.png)

---

> **Nota Educacional:** As etapas de validação e plano no ambiente CI/CD foram executadas simulando o provedor AWS para atender aos critérios da atividade acadêmica sem necessidade de faturamento em nuvem real.