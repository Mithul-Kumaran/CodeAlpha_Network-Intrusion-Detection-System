# Snort 3 IDS Automation 🚨  

This is a small project I worked on while learning **Intrusion Detection Systems (IDS)**.  
I used **Snort 3** on Kali Linux to detect ICMP ping requests, and then wrote a simple script to automate the whole setup.  

It’s not enterprise-level, but it works — and that’s the point.  

---

## What it does 🕵️‍♂️
- Runs Snort 3 on a chosen network interface  
- Loads a custom rule that alerts when someone pings my machine  
- Prints alerts directly in the terminal (and logs them too)  
- Automates everything with one script so I don’t have to type 10 commands every time  

---

## How to try it 🛠️
1. Clone this repo:
   ```bash
   git clone https://github.com/<your-username>/snort-ids-demo.git
   cd snort-ids-demo
