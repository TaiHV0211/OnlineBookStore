from sqlalchemy import create_engine
from sqlalchemy.ext import declarative
from sqlalchemy.orm import sessionmaker
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine("mariadb+pymysql://root:@127.0.0.1/shopfastapi?charset=utf8mb4")


MySeesion = sessionmaker(autocommit=False,autoflush=False,bind=engine)
Base = declarative_base()