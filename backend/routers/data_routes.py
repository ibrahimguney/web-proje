from flask import Blueprint, jsonify, request
from firebase_admin import db

data_bp = Blueprint('data', __name__)

@data_bp.route('/get-data', methods=['GET'])
def get_data():
    ref = db.reference('/your-data-path')
    data = ref.get()
    return jsonify(data)

@data_bp.route('/add-data', methods=['POST'])
def add_data():
    new_data = request.json
    ref = db.reference('/your-data-path')
    ref.push(new_data)
    return jsonify({"status": "success", "data": new_data}), 201
