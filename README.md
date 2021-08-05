# DBAPP ~

## 데이터베이스 생성 방법

```sql
CREATE USER 'starbucks'@'%' IDENTIFIED BY 'starbucks1234';
GRANT ALL PRIVILEGES ON *.* TO 'starbucks'@'%';
CREATE DATABASE starbucks;
```

## manager table 더미 데이터

```sql
INSERT INTO manager(managerId, managerPw) VALUES('admin', '1234');
```

### 추가 의존성

```xml
<dependency>
  <groupId>org.apache.tomcat</groupId>
  <artifactId>tomcat-jasper</artifactId>
  <version>9.0.46</version>
</dependency>

<dependency>
	<groupId>javax.servlet</groupId>
	<artifactId>jstl</artifactId>
	<version>1.2</version>
</dependency>
```

### JSP / JSTL 태그 라이브러리

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
```

### application.yml

```yml
server:
  port: 8081
  servlet:
    encoding:
      charset: UTF-8

spring:
  mvc:
    view:
      prefix: /WEB-INF/views/
      suffix: .jsp
  output:
    ansi:
      enabled: always

  datasource:
    driver-class-name: org.mariadb.jdbc.Driver
    username: starbucks
    password: starbucks1234
    url: jdbc:mysql://localhost:3306/starbucks

  jpa:
    hibernate:
      ddl-auto: none #create update none
    show-sql: true
```
