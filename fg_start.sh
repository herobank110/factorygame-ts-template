# Bash start script

if [ ! -d public/projectName/include ]
then
    # Create library files if not already there.
    mkdir public/projectName/include
    cp node_modules/factorygame/include/* public/projectName/include/factorygame -r
    cp node_modules/three public/projectName/include -r
fi

# Compile typescript files.
npx tsc
