from flask import Flask, jsonify

app = Flask(__name__)

users = [
    {
        'userID': 1,
        'firstName': 'John',
        'lastName': 'Doe',
        'active': True
    },
    {
        'userID': 2,
        'firstName': 'Jane',
        'lastName': 'Smith',
        'active': False
    }
]

@app.route('/users', methods=['GET'])
def get_users():
    return jsonify(users)

if __name__ == '__main__':
    app.run()
