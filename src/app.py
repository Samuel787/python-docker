from flask import Flask
app = Flask('python-docker')

@app.route("/")
def get_data():
    return {"message": "server is up and running!"}