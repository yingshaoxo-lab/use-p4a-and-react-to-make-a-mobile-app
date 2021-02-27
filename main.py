from flask import Flask, request, send_file
from flask_cors import CORS


app = Flask(__name__,
            static_folder='./my-app/build/',
            static_url_path="/ui/" # http://127.0.0.1/ui/
            )
CORS(app)


@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def catch_all(path):
    return app.send_static_file("index.html")


if __name__ == "__main__":
    #print("http://127.0.0.1:8888/api/v1/download")
    print("http://127.0.0.1:8888/ui/")
    app.run(host="0.0.0.0", port=8888, debug=False)
