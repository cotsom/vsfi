from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello, World!'

if __name__ == '__main__':
    # Указываем путь к сертификату и закрытому ключу
    cert = 'certs/site1.shebang.vsfi.local.crt'
    key = 'certs/site1.shebang.vsfi.local.key'

    # Запуск приложения с использованием HTTPS
    app.run(host='0.0.0.0', port=443, ssl_context=(cert, key))
