
# Start the application under development server

```bash
# Open a terminal session inside the dev container. Ctrl + j in Vscode
cd cypress-example-kitchensink
pnpm install
pnpm run dev
```


# Start Cypress GUI

Open cypress GUI from within the running container. 


```bash
# IMPORTANT: Run this command in a host terminal session, not inside the dev container terminal. 
docker exec -it cypress-open-container cypress open --detached --project . --config video=false
```
