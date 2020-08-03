# Powershell start script

if (-not (Test-Path "public/projectName/include")) {
    # Create library files if not already there.
    New-Item -Path public/projectName/include -Type Directory
    Copy-Item node_modules/factorygame/include/* public/projectName/include -Recurse
    Copy-Item node_modules/three public/projectName/include -Recurse
}

# Compile typescript files.
npx tsc
