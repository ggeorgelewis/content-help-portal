---
product: Technical Guide
capability:
infotype: Overview
audience:
---

# How to verify Kaleido Connectivity

**Problem:**
You have created the Kaleido node (Ethereum/Quorum hosted by Kaleido) and you need to test the connectivity from a machine

**Solution:**

Step-by-step guide

1. Gather required variables:
 * KALEIDO_HOST=<kaleido host WITHOUT https://>
 * KALEIDO_USER=<kaleido app credential username. looks like e0j5m5892p>
 * KALEIDO_PASSWORD=<kaleido app credential password. was given at the time of credential creation. looks like bFqFxbQxLxrxxxxxxxxxxxxiPAyIDfxwvPYj728>
2. Note: if you loose an App credential password, no worry:
 * Delete the app credential from Kaleido
 * Create a brand new one and keep the password safe (this time)
 * Correct your variables. It will work as well as the previous one
3. Test connection:
4. Use a script with the following:
```
KALEIDO_HOST=e0sbix33oc-e0mzbcbnw6-rpc.eu-central-1.kaleido.io
KALEIDO_USER=e0j5m5892p
KALEIDO_PASSWORD=bFqFxbQxLxrxxxxxxxxxxxxiPAyIDfxwvPYj728
ret=`curl -s -o /dev/null -w "%{http_code}" -X POST -d '{"jsonrpc":"2.0","id":1,"method":"eth_accounts","params":[]}' https://$KALEIDO_USER:$KALEIDO_PASSWORD@$KALEIDO_HOST`
if [ "$ret" -ne 200 ]
then
  echo "Connection to node failed with error code $ret. Check variables"
# you can run the same command with option -v (verbose) instead of -s -o /dev/null -w "%{http_code}" to debug failure or get your eth account
else
  echo "Connection to node is successfull"
fi
```
5. If you have a proxy, add the curl proxy attributes
-x, --proxy [PROTOCOL://]HOST[:PORT] Use proxy on given port
--proxy-anyauth Pick "any" proxy authentication method (H)
--proxy-basic Use Basic authentication on the proxy (H)
--proxy-digest Use Digest authentication on the proxy (H)
--proxy-negotiate Use HTTP Negotiate (SPNEGO) authentication on the proxy (H)
--proxy-ntlm Use NTLM authentication on the proxy (H)
--proxy-service-name NAME SPNEGO proxy service name
-U, --proxy-user USER[:PASSWORD] Proxy user and password
etc