from os import name
from fastapi import FastAPI
from starlette.responses import RedirectResponse
from .database import Schema
from .database.Database import engine,MySeesion
from .Models import MyModels

app = FastAPI(
    title="Backend",
    description="Backend shopping fastapi",
    version="1.0.0"
)

Schema.Base.metadata.create_all(bind=engine)


@app.get("/")
def home():
    RedirectResponse
    
# users-------------------------------------------------


@app.get("/users")
def read_users():
    session = MySeesion()
    users = session.query(Schema.Users).all()
    items =[]
    for item in users:
        items.append({
            "name": item.name,
            "email": item.email,
            "contactno": item.contactno,
            "password": item.password,
            "shippingAddress": item.shippingAddress,
            "shippingState": item.shippingState,
            "shippingCity": item.shippingCity,
            "shippingPincode": item.shippingPincode,
            "billingAddress": item.billingAddress,
            "billingState": item.billingState,
            "billingCity": item.billingCity,
            "billingPincode": item.billingPincode,
            "updationDate": item.updationDate
        })
    return {"data": items}
    

@app.post("/users")
def create_users(model: MyModels.Users):
    users = Schema.Users(
        name= model.name,
        email= model.email,
        contactno= model.contactno,
        password= model.password,
        shippingAddress= model.shippingAddress,
        shippingState= model.shippingState,
        shippingCity= model.shippingCity,
        shippingPincode= model.shippingPincode,
        billingAddress= model.billingAddress,
        billingState= model.billingState,
        billingCity= model.billingCity,
        billingPincode= model.billingPincode,
        updationDate= model.updationDate
    )
    session = MySeesion()
    try:
        session.add(users)
        session.commit()
        session.refresh(users)
    finally:
        session.close()
    return {"data": users}