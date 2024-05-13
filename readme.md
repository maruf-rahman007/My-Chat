# MyChat

## Description 
A Group video calling application using the Agora Web SDK with a Django backend.Seamless Video chatting application with friends that allows you to connect with people with minimum effort .

##  How to use this source code

#### 1 - Clone repo
```
git clone https://github.com/maruf-rahman007/My-Chat.git
```

#### 2 - Install requirements
```
cd mychat
pip install -r requirements.txt
```

#### 3 - Update Agora credentals
In order to use this project you will need to replace the agora credentials in `views.py` and `streams.js`.

Create an account at agora.io and create an `app`. Once you create your app, you will want to copy the `appid` & `appCertificate` to update `views.py` and `streams.js`.

###### views.py
```
def getToken(request):
    appId = "YOUR APP ID"
    appCertificate = "YOUR APPS CERTIFICATE"
    ......
```

###### streams.js
```
....
const APP_ID = 'YOUR APP ID'
....
```


#### 4 - Start server
```
python manage.py runserver
```
## Using Docker 
Make sure you have docker installed in your machine 

#### 1 - Clone repo
```
git clone https://github.com/maruf-rahman007/My-Chat.git
```

#### 2 - Install requirements
```
cd mychat
```

#### 3 - Build Docker Image
```

docker build -t mychat .
```

#### 4 - Running Image
```

docker run -p 8000:8000 mychat
```

Now go to browser and search `localhost:8000` and enjoy the webapp