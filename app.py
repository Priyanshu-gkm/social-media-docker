from social_media_application import create_app
import os
app = create_app()

if __name__ == "__main__":
    app.run(debug=eval(os.environ.get("DEBUG")))