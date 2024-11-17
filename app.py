from flask import Flask, send_file, request, abort
import os

app = Flask(__name__)

# Define the folder where files are stored
FILES_DIRECTORY = 'files'

@app.route('/download/<filename>', methods=['GET'])
def download_file(filename):
    try:
        # Create the full file path
        file_path = os.path.join(FILES_DIRECTORY, filename)
        print(file_path)
        # Check if the file exists
        if os.path.exists(file_path):
            # Send the file to the client for download
            return send_file(file_path, as_attachment=True)
        else:
            # If the file does not exist, return a 404 error
            abort(404, description="File not found")
    except Exception as e:
        # If there's an error, return a 500 Internal Server Error
        abort(500, description=f"Error: {str(e)}")

if __name__ == '__main__':
    # Run the Flask app
    app.run(host="192.168.1.4", port=5000,debug=True)
