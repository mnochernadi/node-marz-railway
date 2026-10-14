# Marzban-node on Railway

1. Create a Railway service from this repo (mnochernadi/node-marz-railway).
2. Add the variables from `.env.railway.example` in the Railway Variables tab.
3. In Railway > Settings > Networking, add a **TCP Proxy** targeting port `PORT` (Railway sets it). HTTP domains terminate TLS and will break mTLS.
4. In the Marzban panel, add this node using the TCP proxy host and port.

Note: Railway exposes one public TCP port per service, so Xray inbounds must share that port or run on another service.
