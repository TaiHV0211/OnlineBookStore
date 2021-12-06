from sqlalchemy import Integer,String,TIMESTAMP,Column,LargeBinary
from sqlalchemy.sql.functions import func
from .Database import Base

# table users
class Users(Base):
    __tablename__= "users"
    id = Column(Integer,primary_key=True,autoincrement=True)
    name = Column(String(255))
    email = Column(String(255))
    contactno = Column(Integer)
    password = Column(String(255))
    shippingAddress = Column(String(255))
    shippingState = Column(String(255))
    shippingCity = Column(String(255))
    shippingPincode = Column(Integer)
    billingAddress = Column(String(255))
    billingState = Column(String(255))
    billingCity = Column(String(255))
    billingPincode = Column(Integer)
    regDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)
    updationDate = Column(String(255))
    
 
 # table admin
 
class Admin(Base):
    __tablename__= "admin"
    id = Column(Integer,primary_key=True,autoincrement=True)
    username = Column(String(255),nullable=False)
    password = Column(String(255),nullable=False)
    creationDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)
    updationDate = Column(String(255),nullable=False)
    
    
# table category
class Category(Base):
    __tablename__= "category"
    id = Column(Integer,primary_key=True,autoincrement=True)
    categoryName = Column(String(255))
    categoryDescription = Column(String(255))
    creationDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)
    updationDate = Column(String(255))
    
    
# table orders
class Orders(Base):
    __tablename__= "orders"
    id = Column(Integer,primary_key=True,autoincrement=True)
    userId = Column(Integer)
    productId = Column(String(255))
    quantity = Column(Integer)
    orderDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)
    paymentMethod = Column(String(50))
    orderStatus = Column(String(50))


# table ordertrackhistory

class Ordertrackhistory(Base):
    __tablename__= "ordertrackhistory"
    id = Column(Integer,primary_key=True,autoincrement=True)
    orderId = Column(Integer)
    status = Column(String(255))
    remark = Column(String(255))
    postingDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)
 

# table productreviews
class Productreviews(Base):
    __tablename__= "productreviews"
    id = Column(Integer,primary_key=True,autoincrement=True)
    productId = Column(Integer)
    quality = Column(Integer)
    price = Column(Integer)
    value = Column(Integer)
    name = Column(String(255))
    summary = Column(String(255))
    review = Column(String(255))
    reviewDate = Column(TIMESTAMP,server_default=func.now())


# table products
class Products(Base):
    __tablename__= "products"
    id = Column(Integer,primary_key=True,autoincrement=True)
    category = Column(Integer,nullable=False)
    subCategory = Column(Integer)
    productName = Column(String(255))
    productCompany = Column(String(255))
    productPrice = Column(Integer)
    productPriceBeforeDiscount = Column(Integer)
    productDescription = Column(String(255))
    productImage1 = Column(String(255))
    productImage2 = Column(String(255))
    productImage3 = Column(String(255))
    shippingCharge = Column(Integer)
    productAvailability = Column(String(255))
    postingDate = Column(TIMESTAMP,server_default=func.now())
    updationDate = Column(String(255))



# table subcategory 
class Subcategory(Base):
    __tablename__= "subcategory"
    id = Column(Integer,primary_key=True,autoincrement=True)
    categoryid = Column(Integer)
    subcategory = Column(String(255))
    creationDate = Column(TIMESTAMP,server_default=func.now())
    updationDate = Column(String(255))


# table userlog 
class Userlog(Base):
    __tablename__= "userlog"
    id = Column(Integer,primary_key=True,autoincrement=True)
    userEmail = Column(String(255))
    userip = Column(LargeBinary)
    loginTime = Column(TIMESTAMP,server_default=func.now())
    logout = Column(String(255))
    status = Column(Integer)


# table wishlist 
class Wishlist(Base):
    __tablename__= "wishlist"
    id = Column(Integer,primary_key=True,autoincrement=True)
    userId = Column(Integer)
    productId = Column(Integer)
    postingDate = Column(TIMESTAMP,server_default=func.now(),nullable=False)


