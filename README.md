# Real-Time Chat with Flask and Socket.IO

This project implements a real-time chat application using Flask and Socket.IO. It allows users to send and receive messages instantly without needing to refresh the page.

## Features

- Real-time messaging with Socket.IO
- Simple and clean user interface
- Responsive design using Bootstrap
- Easy to deploy and customize

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your_username/real-time-chat.git
    ```

2. Navigate to the project directory:

    ```bash
    cd real-time-chat
    ```

3. Set up a virtual environment (optional but recommended):

    ```bash
    python3 -m venv venv
    source venv/bin/activate  # For Unix/macOS
    venv\Scripts\activate.bat  # For Windows
    ```

4. Install dependencies:

    ```bash
    pip install -r requirements.txt
    ```

## Usage

1. Run the Flask application:

    ```bash
    python app.py
    ```

2. Open your web browser and go to [http://localhost:5000](http://localhost:5000) to use the chat application.

## Dependencies

- bidict==0.23.1
- blinker==1.7.0
- click==8.1.7
- colorama==0.4.6
- Flask==3.0.2
- flask-marshmallow==1.2.0
- Flask-SQLAlchemy==3.1.1
- greenlet==3.0.3
- h11==0.14.0
- itsdangerous==2.1.2
- Jinja2==3.1.3
- MarkupSafe==2.1.5
- marshmallow==3.21.1
- packaging==24.0
- PyMySQL==1.1.0
- python-engineio==4.9.0
- python-socketio==5.11.1
- simple-websocket==1.0.0
- SQLAlchemy==2.0.28
- typing_extensions==4.10.0
- Werkzeug==3.0.1
- wsproto==1.2.0

## Virtual Environment

A virtual environment is a self-contained directory tree that contains a Python installation for a particular version of Python, plus a number of additional packages. It allows you to work on a specific project without worrying about affecting other projects or the system-wide Python installation.

To set up a virtual environment:

1. Install `virtualenv` if you haven't already:

    ```bash
    pip install virtualenv
    ```

2. Create a new virtual environment in your project directory:

    ```bash
    python3 -m venv venv
    ```

3. Activate the virtual environment:

    ```bash
    source venv/bin/activate  # For Unix/macOS
    venv\Scripts\activate.bat  # For Windows
    ```

4. Install dependencies within the virtual environment as usual:

    ```bash
    pip install -r requirements.txt
    ```

Remember to deactivate the virtual environment when you're done:

```bash
deactivate
