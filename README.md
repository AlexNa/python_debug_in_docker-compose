launch.json in VScode

{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Python: Remote Attach",
            "type": "debugpy",
            "request": "attach",
            "connect": {
                "host": "localhost",
                "port": 5678
            },
            "pathMappings": [
                {
                    "localRoot": "${workspaceFolder}/python",
                    "remoteRoot": "/app"
                }
            ],
            "justMyCode": true
        }
    ]
}
