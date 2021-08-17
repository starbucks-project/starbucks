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
INSERT INTO card(cardName, cardImage, pin, cardNum, balance, userId) VALUES('카드1','카드이미지', '1234', '1111-2222-3333-4444', 0, 1);

INSERT INTO store(category,title,latitude,longtitude,content,tel) VALUES('drive','부산재송DT',35.189565,129.121754,'부산광역시 해운대구 해운대로 189 (재송동)','1522-3232');
INSERT INTO store(category,title,latitude,longtitude,content,tel) VALUES('drive','수영망미DT',35.1775,129.107486,'부산광역시 수영구 과정로 68 (망미동)','1522-3232');

INSERT INTO store(category,title,latitude,longtitude,content,tel) VALUES('reserve','서면중앙대로R',35.15550735339308,129.0507638804846,'부산광역시 부산진구 중앙대로 672 (부전동) 1층 2층','1522-3232');
INSERT INTO store(category,title,latitude,longtitude,content,tel) VALUES('reserve','서면로R',35.15539667323169,129.05762092711197,'부산광역시 부산진구 서면로 49-1 (부전동)','1522-3232');
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
