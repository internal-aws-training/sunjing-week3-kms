### Use aws-cli to create a key.

```
./scripts/create-key.sh
```

output:
```
{
    "KeyMetadata": {
        "AWSAccountId": "954088256298",
        "KeyId": "a41345de-1fb0-4672-990d-fdc7f90dbfa6",
        "Arn": "arn:aws:kms:ap-southeast-2:954088256298:key/a41345de-1fb0-4672-990d-fdc7f90dbfa6",
        "CreationDate": 1590451348.035,
        "Enabled": true,
        "Description": "Sun Jing test key",
        "KeyUsage": "ENCRYPT_DECRYPT",
        "KeyState": "Enabled",
        "Origin": "AWS_KMS",
        "KeyManager": "CUSTOMER"
    }
```

The generated key doesn't have a alias.
Copy the comment command in `create-key.sh` to have a alias.
And replace the `${key-id}` with your key id.

### Use aws-cli to encrypt data with the key you just created.

Note: The key id is hard code in script, please replace key id with yours.

```
./scripts/encrypt-with-key.sh
```

### Use aws-cli to decrypt data with the key you just created.

Note: The key id is hard code in script, please replace key id with yours.

```
./scripts/decrypt-with-key.sh
```

#### Use open source tool shush encrypt/decrypt. 

Note: The key id is hard code in script, please replace key id with yours.

```
./scripts/encrypt-with-shush.sh
./scripts/decrypt-with-shush.sh
```
