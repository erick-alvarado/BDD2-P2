from flask import Flask, render_template, jsonify
from flask_pymongo import PyMongo

app = Flask(__name__)

app.config["MONGO_URI"] = "mongodb://34.125.200.175:27017/Netflix"
mongo = PyMongo(app)


@app.route('/', methods=['GET'])
def index():
    cur = mongo.db.Masiva.find({}, {'id': 1, 'primaryTitle': 1, 'originalTitle': 1, 'isAdult': 1, 'startYear': 1, 'endYear': 1, 'runTime': 1})
    return render_template('index.html', cur=list(cur))

if __name__ == "__main__":
    app.run(debug=True)