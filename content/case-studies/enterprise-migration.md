---
title: "Enterprise Platform Migration"
date: 2024-02-15
description: "Migrating a monolithic legacy system to a microservices architecture."
tags: ["Kubernetes", "Go", "Cloud"]
layout: "single" # Actually, this should probably be default, or explicit
problem: "The client was struggling with a 15-year old legacy monolithic application that was difficult to scale and maintain. Deployment times were over 4 hours."
solution: "We re-architected the system into microservices using Go and deployed it on Kubernetes. We implemented a robust CI/CD pipeline to automate testing and deployment."
technologies:
  - "Go (Golang)"
  - "Kubernetes (EKS)"
  - "AWS"
  - "Terraform"
outcome: "Deployment time reduced to 15 minutes. System uptime improved to 99.99%. Developer productivity increased by 40%."
params: # Need to nest custom params under params key if template uses .Params.problem. Or just top level frontmatter if template uses .Params.problem (Hugo merges frontmatter into Params) matches my template usage.
    # Wait, in Hugo content files, top-level keys like problem are accessible via .Params.problem? Yes, usually.
    # Let's be safe and put them under params if needed, but standard hugo practice is top level frontmatter keys become .Params.key.
    # I'll stick to top level as written above.
---

This project involved a complete overhaul of the client's core business platform.
