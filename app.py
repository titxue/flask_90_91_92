from flask import Flask, render_template_string

app = Flask(__name__)

@app.route('/')
def hello():
    return render_template_string("""
        <!DOCTYPE html>
        <html>
        <head>
            <title>Flask with uni.css</title>
            <!-- 使用完整的静态资源 URL -->
            <link rel="stylesheet" href="http://localhost:92/uni.css">
        </head>
        <body>
            <p>Hello from the Flask app!</p>
        </body>
        </html>
    """)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=91)
