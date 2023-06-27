from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello, World!'

if __name__ == '__main__':
    # Указываем путь к сертификату и закрытому ключу
    cert = 'localhost.crt'
    key = 'localhost.key'

    # Запуск приложения с использованием HTTPS
    app.run(ssl_context=(cert, key))
