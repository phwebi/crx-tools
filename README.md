# crx-tools
Shell scripts for packaging google chrome extensions, generating keys, and setting up webhook listeners

## Usage
Create .pem key: 
`bash pemmake.sh my-key-name`

Create .crx file:
`bash crxmake.sh ./extension-path/ ./my-key-name.pem`

Create a JS webhook listener:
`bash listenermake.sh ./extension-path/ ./my-key-name.pem 3000`


Note: Webhook listener requires https://github.com/coreh/hookshot to be installed using npm.
