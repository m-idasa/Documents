---
title: قیمت تئوریک گشایش
layout: default
parent: اطلاعات بازار
---

# Top - قیمت تئوریک گشایش

## 📌 آدرس سرویس

```
POST /MarketInfo/Top
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/MarketInfo/Top
```

## 🧾 نام سرویس

`Top`

---

## 🎯 توضیحات

قیمتی که برای گشایش پیشبینی میشود.

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام پارامتر | توضیح |
| ----------- |------------ |
| `Flow`     | کد بازار |

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام فیلد            | توضیح |
|----------------------|-------|
| `NInsCode`            | کد نماد |
| `LVal30`              | نام 30 رقمی فارسی نماد |
| `LVal18AFC`           | کد 18 رقمی فارسی نماد |
| `DEven`               | تاریخ |
| `HEven`               | ساعت |
| `PTeoOvJ`             | قیمت تئوریک |
| `QXtePTeoOvj`         | حجم معامله |
| `CSensQNrepOv`        | تقاضاهای باقی مانده |
| `QNrepOv`             | حجم باقی مانده |
| `QTitMeLimSimAc`      | حجم تئوریک خرید |
| `PMeLimSimAcVal`      | قیمت تئوریک خرید |
| `PMeLimSimVtVal`      | قیمت تئوریک فروش |
| `QTitMeLimSimVt`      | حجم تئوریک فروش |
| `XQVarPJDrPRf`        | درصد تغییر قیمت |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "NInsCode": 1234567890,
        "LVal30": "فولاد مبارکه اصفهان",
        "LVal18AFC": "IRO1FOLD0001",
        "DEven": 20250903,
        "HEven": 120530,
        "PTeoOvJ": 14250.75,
        "QXtePTeoOvj": 1500000,
        "CSensQNrepOv": 2500,
        "QNrepOv": 180000,
        "QTitMeLimSimAc": 900000,
        "PMeLimSimAcVal": 14100,
        "PMeLimSimVtVal": 14400,
        "QTitMeLimSimVt": 600000,
        "XQVarPJDrPRf": -1.25
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
