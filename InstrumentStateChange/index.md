---
title: اطلاعات معاملات آخرین روز (TradeLastDay)
layout: default
nav_order: 3
---

# تغییر وضعیت نماد - InstrumentStateChange

**آدرس سرویس:**

[http://service.tsetmc.com/WebService/TsePublicV2.asmx](http://service.tsetmc.com/WebService/TsePublicV2.asmx)  
[WSDL](http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL)

---

## نام سرویس: `InstrumentsStateChange`

### توضیحات:
سرویسی جهت دریافت وضعیت‌های جدید یا تغییر یافته نمادها

---

## پارامترهای ورودی:

| نام پارامتر | توضیح |
|-------------|--------|
| `UserName`  | نام کاربری مشترک |
| `Password`  | کلمه عبور مشترک |
| `Deven`     | تاریخ (مثال: `14020420`) |
| `InsCode`   | کد داخلی نماد |

---

## اطلاعات خروجی:

| نام فیلد       | توضیح               |
|----------------|----------------------|
| `InsCode`      | کد داخلی نماد         |
| `Lval18AfC`    | نماد                  |
| `LVal30`       | نام                   |
| `LBoard`       | تابلو                 |
| `StateTypeDesc`| شرح وضعیت             |
| `CEtaVal`      | کد وضعیت              |
| `HEven`        | ساعت (زمان وقوع تغییر) |

---

> این سرویس برای بررسی تغییرات وضعیت نمادها در تاریخ مشخص استفاده می‌شود.
