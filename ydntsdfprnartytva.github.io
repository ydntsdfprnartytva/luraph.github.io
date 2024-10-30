<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lua Loader Generator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
            border-radius: 8px;
        }
        h1 {
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        textarea, input[type="text"] {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        button {
            padding: 10px 15px;
            border: none;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Lua Loader Generator</h1>
        <textarea id="luaCode" rows="10" placeholder="Enter your Lua code here..."></textarea>
        <input type="text" id="customName" placeholder="Enter your custom name" />
        <textarea id="output" rows="3" readonly placeholder="Generated loadstring URL will appear here..."></textarea>
        <button onclick="generateLoader()">Generate Loadstring</button>
        <button onclick="copyToClipboard()">Copy Loadstring</button>
    </div>

    <script>
        function generateLoader() {
            const luaCode = document.getElementById('luaCode').value;
            const customName = document.getElementById('customName').value.trim();
            const randomString = Math.random().toString(36).substr(2, 32); // Generate random string (31 or 32 characters)
            const output = `loadstring(game:HttpGet("https://luraph.github.io/file/v3/loaders/${randomString}"))() -- ${customName}.lua`;
            document.getElementById('output').value = output;
        }

        function copyToClipboard() {
            const outputField = document.getElementById('output');
            outputField.select();
            document.execCommand("copy");
            alert("Loadstring copied to clipboard!");
        }
    </script>
</body>
</html>
