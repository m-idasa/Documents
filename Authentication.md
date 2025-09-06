---
title: روش احراز هویت
layout: default
parent: مستندات سرویس‌ها
nav_order: 1
---

# دریافت توکن (Login)

برای دسترسی به سایر وب‌سرویس‌ها، ابتدا باید با استفاده از متد `Login` توکن
دریافت کنید.\
این توکن در تمامی درخواست‌های بعدی در هدر `Authorization` استفاده خواهد
شد.

## آدرس

```
POST https://{BaseUrl}/Login
```

مثال:

```bash
curl --location 'https://{BaseUrl}/login' \
--header 'Content-Type: application/json' \
--data-raw '   {
        "UserName": "broker",
        "Password": "Test@123"
    }'
```

## ورودی (LoginRequestDto)

| نام فیلد | نوع داده | توضیح | الزامی |
| -------- | ------ | ---- | ----------- |
| Username | string |  نام کاربری | بله |
| Password | string |  کلمه عبور  | بله |

## خروجی 

| نام فیلد | نوع داده | توضیح |
| ----- | ---------- | -------- |
| IsSuccess | bool | موفق بودن یا نبودن عملیات |
| Message   | string | پیام خطا یا موفقیت |
| Data.Token | string | توکن JWT جهت استفاده در درخواست‌های بعدی |
| Data.ExpireDate | string | تاریخ و زمان انقضای توکن (UTC) |
  
---

## نمونه درخواست

``` bash
curl --location 'https://{BaseUrl}/Login' \
--header 'Content-Type: application/json' \
--data '{
    "Username": "testuser",
    "Password": "P@ssw0rd"
}'
```

## نمونه پاسخ موفق

``` json
{
  "isSuccess": true,
  "message": "ورود موفق",
  "data": {
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6...",
    "expireDate": "2025-09-06T12:30:00Z"
  }
}
```

## نحوه استفاده از توکن در سایر درخواست‌ها

پس از دریافت توکن، در تمام درخواست‌های بعدی باید هدر زیر اضافه شود:

```
Authorization: Bearer {token}
```
