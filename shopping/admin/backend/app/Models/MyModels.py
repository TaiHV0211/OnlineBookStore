from pydantic import BaseModel


class Users(BaseModel):    
    name: str
    email: str
    contactno: int
    password: str
    shippingAddress: str
    shippingState: str
    shippingCity: str
    shippingPincode: int
    billingAddress: str
    billingState:str
    billingCity:str
    billingPincode: int
    updationDate: str