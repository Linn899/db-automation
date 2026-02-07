# Day 21: 100 Days of DevOps - Git Storage Server

## 📝 Lab Description
Tasked with setting up a centralized **Bare Repository** on a storage server. This serves as a remote hub for version control within a cluster environment.

---

## 🚀 The Commands


```bash
# 1. Create the directory path
sudo mkdir -p /opt/cluster.git

# 2. Initialize the repository as BARE
cd /opt/cluster.git
sudo git init --bare

# 3. Set Ownership to Root
sudo chown -R root:root /opt/cluster.git

# 4. Set Permissions to 755
sudo chmod -R 755 /opt/cluster.git