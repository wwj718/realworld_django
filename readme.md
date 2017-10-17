# realworld django
实现类知乎的api接口约定和后端实现 , inspired by realworld

项目以[cookiecutter-django](https://github.com/pydanny/cookiecutter-django) 为脚手架，尽量遵循Django社区最佳实践

## 项目定位
API Server

## 依赖
*  Python3.5
*  docker
*  基础服务:
    *  postgres
    *  redis
    *  elasticsearch
    *  rabbitmq

## 搭建开发环境

### mac/linux

```
git clone https://github.com/wwj718/realworld_django
cd realworld_django
virtualenv env3 -p python3.5 # 推荐使用pyenv安装python3.5
source env3/bin/activate

# 安装依赖
pip install -r requirements/local.txt

# 运行基础服务
cd compose
docker-compose up

# 创建数据库
docker exec -u postgres compose_postgres_1 createdb realworld

# 创建迁移，新建超级用户
python manage.py migrate
python manage.py createsuperuser # realworld pass1912

# 运行
python manage.py runserver_plus
```

