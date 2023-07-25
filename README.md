# peer2profit
Peer2profit in a docker image served via VNC and web interface.

Use this to run the GUI Peer2profit program and manage remotely / on a headless server.

Run the container, then go to port 5800 for web interface or 5900 for vnc. Use peer2profit from there.

Alternatively, you can specify the id and email to use with peer2profit via the env variables. Id should be a uuid to identify the computer this instance of peer2profit is running on. If you need a new id, run `uuidgen` on your terminal.
```bash
docker run --rm --env EMAIL=<your_email> --env ID=<your_id> -p 5800:5800 -p 5900:5900 goastler/peer2profit
```
The ports do not have to be exposed if you never plan on using the GUI.