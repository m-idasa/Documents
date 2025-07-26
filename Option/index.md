---
title: Option - اختیار معامله
layout: default
nav_order: 4
---

# Option - اختیار معامله

**آدرس سرویس:**

- [http://service.tsetmc.com/WebService/TsePublicV2.asmx](http://service.tsetmc.com/WebService/TsePublicV2.asmx)  
- [WSDL](http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL)

---

## نام سرویس: `Option`

### توضیحات:
سرویسی برای دریافت موقعیت‌های باز اختیار معامله (Open Interest) نمادهای دارای اختیار خرید و فروش.

---

## پارامترهای ورودی:

| پارامتر     | توضیح               |
|-------------|----------------------|
| `UserName`  | نام کاربری مشترک     |
| `Password`  | کلمه عبور مشترک      |

---

## اطلاعات خروجی:

| فیلد            | توضیح                          |
|------------------|-----------------------------------|
| `InsCode`         | کد داخلی نماد                    |
| `InstrumentID`    | کد ۱۲ رقمی لاتین نماد            |
| `BuyOP`           | موقعیت خرید اختیار معامله        |
| `SellOP`          | موقعیت فروش اختیار معامله        |

---

> این سرویس برای مشاهده حجم موقعیت‌های باز خرید و فروش در بازار اختیار معامله استفاده می‌شود.