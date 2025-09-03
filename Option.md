---
title: Option - اختیار معامله
layout: default
parent: معاملات مشتقه
---

# Option - اختیار معامله

## 📌 آدرس سرویس

```
POST /Derivate/Option
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/Derivate/Option
```

## 🧾 نام سرویس

`Option`

---

## 🎯 توضیحات

سرویسی برای دریافت موقعیت‌های باز اختیار معامله (Open Interest) نمادهای دارای اختیار خرید و فروش.

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `InsCode` | کد داخلی نماد (کلید یکتا) |
| `InstrumentID` | کد 12 رقمی لاتین نماد |
| `BuyOP` | موقعیت خرید |
| `YesterdayOP` |  |
| `SellOP` | موقعیت فروش |
| `ContractSize` | اندازه قرارداد |
| `StrikePrice` | قیمت اعمال  |
| `UAInsCode` |  |
| `BeginDate`        | روز شروع قرارداد              |
| `EndDate`          | روز پایان قرارداد             |
| `AFactor` | ضریب A |
| `BFactor` | ضریب B |
| `CFactor` | ضریب C |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "InsCode": 123456,
        "InstrumentID": "ABC123",
        "BuyOP": 1200.5,
        "YesterdayOP": 1190.75,
        "SellOP": 1210.25,
        "ContractSize": 100,
        "StrikePrice": 1250.0,
        "UAInsCode": 654321,
        "BeginDate": 20230901,
        "EndDate": 20231201,
        "AFactor": 1.5,
        "BFactor": 2.0,
        "CFactor": 0.75
      }

    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 403 | عدم دسترسی (کاربر نقش لازم را ندارد) |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---


