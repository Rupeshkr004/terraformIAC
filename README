## Overview

This guide outlines how to use Azure Service Principal authentication with Terraform to create resources on Azure.

### Resources Created:

- **Resource Group:** Provides a logical container for Azure resources.
- **Virtual Network (VNet) and Subnet:** Defines networking for AKS.
- **Storage Account and Container:** Stores Terraform state files.

## Prerequisites

Before proceeding, ensure you have:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure account with resource creation permissions.
- Azure Service Principal credentials for authentication.

## Usage

1. **Initialize Terraform:**

    ```bash
    terraform init
    ```

2. **Review and Modify Configuration Files:**

    Review `main.tf` and `variables.tf`, customize as needed.

3. **Authenticate with Azure using Service Principal:**

    Ensure you have Azure CLI installed and use the following command to login with your Service Principal credentials:

    ```bash
    az login --service-principal -u <service-principal-id> -p <service-principal-secret> --tenant <tenant-id>
    ```

    Replace `<service-principal-id>`, `<service-principal-secret>`, and `<tenant-id>` with your Azure Service Principal credentials.

4. **Preview Changes:**

    ```bash
    terraform plan
    ```

5. **Apply Configuration:**

    ```bash
    terraform apply
    ```

6. **Review Outputs:** Check for errors/warnings; resources should be provisioned.

## Cleanup

To delete Azure resources:

```bash
terraform destroy --auto-approve
```

## License

This project is licensed under the [MIT License](../LICENSE).

---

Feel free to customize this template to match your specific setup and project requirements, adding or removing sections as needed.
