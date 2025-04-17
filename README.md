
## Assignment 2
## Project Overview

This project focuses on setting up a Virtual Machine (VM) infrastructure on Google Cloud Platform (GCP) with features like auto-scaling and secure access control. The project demonstrates how to configure a Managed Instance Group (MIG) that automatically scales instances based on CPU utilization, ensuring optimal resource allocation under fluctuating workloads. Security is enforced through Firewall Rules and IAM Role Managemen
## 1.	Scope:
This documentation describes step-by-step virtual machine (VM) setup and configuration on the Google Cloud Platform (GCP) with workload metric-based auto-scaling as well as taking necessary security provisions. The documentation covers:

•	GCP VM instance creation and setting up.

•	Deployment of a managed instance group using auto-scaling policies based on CPU usage thresholds.

•	Setting up Identity and Access Management (IAM) roles for limiting access.

•	Establishing firewall rules to filter incoming traffic.

•	Illustrating the behavior of the system using scripting and video documentation.

## 2.	Definitions

•	VM (Virtual Machine) – A software-based emulation of a physical computer that runs an operating system and applications, used here within GCP infrastructure.

•	GCP (Google Cloud Platform) – A cloud computing platform provided by Google offering infrastructure-as-a-service (IaaS), including VM instances, storage, and network management.

•	Managed Instance Group (MIG) – A collection of VM instances that are managed as a single entity, enabling auto-healing and auto-scaling based on policies.

•	Auto-scaling – A cloud computing feature that automatically adjusts the number of VM instances based on load (e.g., CPU utilization).

•	IAM (Identity and Access Management) – GCP’s system for managing user roles and permissions for secure resource access.

•	Firewall Rules – Network rules that allow or block traffic based on IP, port, and protocol, used here to control access to the VM instances.

•	stress – A tool used to simulate CPU workload, helpful in testing auto-scaling functionality.

•	YAML – A human-readable data serialization standard commonly used for configuration files in cloud deployments.

## 3.	Tools and Technologies used

Cloud Platform:	Google Cloud Platform (GCP)

VM OS	: Ubuntu 20.04 LTS (used for instance template)

Scripting Language	: Bash

Auto-scaling Config	: GCP CLI / Console UI / YAML

Security	: IAM (Admin, Viewer roles), Firewall Rules

Testing Tool:	stress (to simulate CPU usage)

Monitoring	: GCP Metrics for CPU utilization

Deployment Method	: GCP Instance Templates & Managed Instance Groups

Documentation	: Markdown, Screenshots, Video Recording (OBS)

## Project Setup & Execution
1. **Created a VM Instance**
   - Launched a VM on GCP Compute Engine with Ubuntu OS.
   - Enabled HTTP and HTTPS firewall rules.

2. **Configured Managed Instance Group**
   - Created an instance template using `e2-medium`.
   - Deployed a managed instance group.
   - Configured auto-scaling to trigger above 60% CPU usage.

3. **Implemented Security**
   - IAM roles (Viewer) applied for restricted access.
   - Firewall rules configured to allow ports 22, 80, 443.

4. **Performed Stress Testing**
   - Installed `stress` on the VM.
   - Ran: `stress --cpu 2 --timeout 90` to simulate load.

5. **Monitored Metrics**
   - Observed CPU utilization via GCP Monitoring dashboard.
   - Watched for auto-scaling events and log activity.

6. **Tested Firewall Rules**
   - Verified SSH and HTTP access (ports 22, 80).
   - Confirmed port 8080 was blocked using `telnet` and `nc`.

7. **Documented Results**
   - Noted CPU remained at ~10.82%, no scaling triggered.
   - Verified IAM and firewall functionalit

## Testing & Observation
During load simulation using the `stress` tool, the CPU usage stayed at **approximately 10.82%**, which was below the scaling threshold.

### 🔍 Key Observations:
- VM instance was **over-provisioned** for the simulated workload.
- No new instances were triggered by the autoscaler.
- Metrics indicated network, disk, and CPU activity aligned with expected behavior.
- IAM and firewall restrictions worked as configured.
## Repository & Demo
**Source Code:**

**Video Demonstration:**
## ✅ Conclusion
This project demonstrates the practical implementation of a **scalable and secure virtual machine environment** on **Google Cloud Platform (GCP)**.

### Key Outcomes:
- ⚙️ **Performance tuning** with autoscaling setup.
- 💰 **Cost-efficiency** through dynamic resource allocation.
- 🔐 **Security implementation** using firewall rules and IAM roles.

The assignment enhances understanding of:
- Cloud infrastructure setup
- Auto-scaling principles
- GCP orchestration
