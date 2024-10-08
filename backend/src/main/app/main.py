from flask import Flask, request, jsonify
import pandas as pd
import numpy as np

app = Flask(__name__)

# Root endpoint
@app.route('/')
def home():
    return "Welcome to the Flask app!"

# Endpoint to calculate mean from a list of numbers using Pandas and NumPy
@app.route('/compute', methods=['POST'])
def compute_mean():
    try:
        # Retrieve the list of numbers from the POST request body
        data = request.get_json()
        numbers = data.get('numbers', [])

        if not numbers:
            return jsonify({"error": "No numbers provided"}), 400

        # Convert the list into a Pandas Series for further processing
        series = pd.Series(numbers)

        # Calculate the mean using NumPy
        mean_value = np.mean(series)

        return jsonify({"mean": mean_value})

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)
