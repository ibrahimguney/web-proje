from flask import Flask
from routes.data_routes import data_bp
import firebase_admin
from firebase_admin import credentials, db

app = Flask(__name__)

# Firebase yapılandırması
cred = credentials.Certificate("firebase_config.json")
firebase_admin.initialize_app(cred, {
    'databaseURL': 'https://<your-project-id>.firebaseio.com'
})

# Blueprint ile route'ları ekle
app.register_blueprint(data_bp)

if __name__ == "__main__":
    app.run(debug=True)
