#!/bin/bash

# Render.com deployment script for Pokemon Battle app
echo "Setting up Pokemon Battle app for Render.com deployment..."

# Create a requirements.txt file if it doesn't exist
if [ ! -f requirements.txt ]; then
    echo "Creating requirements.txt..."
    cat > requirements.txt << EOL
flask==2.0.1
requests==2.26.0
gunicorn==20.1.0
EOL
    echo "requirements.txt created successfully."
fi

# Create a .gitignore file if it doesn't exist
if [ ! -f .gitignore ]; then
    echo "Creating .gitignore..."
    cat > .gitignore << EOL
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
*.egg-info/
.installed.cfg
*.egg
venv/
.venv/
.env
.vscode/
.idea/
EOL
    echo ".gitignore created successfully."
fi

# Create render.yaml for Render blueprint if needed
if [ ! -f render.yaml ]; then
    echo "Creating render.yaml..."
    cat > render.yaml << EOL
services:
  - type: web
    name: pokemon-battle
    env: python
    buildCommand: pip install -r requirements.txt
    startCommand: gunicorn main:app
    envVars:
      - key: PYTHON_VERSION
        value: 3.9.0
EOL
    echo "render.yaml created successfully."
fi

# Create a Procfile for gunicorn
if [ ! -f Procfile ]; then
    echo "Creating Procfile..."
    echo "web: gunicorn main:app" > Procfile
    echo "Procfile created successfully."
fi

echo ""
echo "================================================"
echo "Deployment preparation complete!"
echo "================================================"
echo ""
echo "To deploy to Render.com:"
echo ""
echo "1. Push your code to GitHub:"
echo "   git add ."
echo "   git commit -m \"Ready for deployment\""
echo "   git push origin main"
echo ""
echo "2. Go to render.com and log in"
echo ""
echo "3. Click 'New +' and select 'Web Service'"
echo ""
echo "4. Connect to your GitHub repository"
echo ""
echo "5. Fill in the following details when prompted:"
echo "   - Name: pokemon-battle (or your preferred name)"
echo "   - Environment: Python"
echo "   - Region: Choose closest to your users"
echo "   - Branch: main (or your default branch)"
echo "   - Build Command: pip install -r requirements.txt"
echo "   - Start Command: gunicorn main:app"
echo ""
echo "6. Click 'Create Web Service'"
echo ""
echo "Your Pokemon Battle app should be deployed in a few minutes!"
echo "You can access it at: https://pokemon-battle.onrender.com (or your custom URL)" 