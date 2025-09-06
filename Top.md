---
title: قیمت تئوریک گشایش
layout: default
parent: اطلاعات بازار
---

# Top - قیمت تئوریک گشایش

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/MarketInfo/Top
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/Top' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
  "Idn": 0
}'
```  

## 🧾 نام سرویس

`Top`

---

## 🎯 توضیحات

قیمتی که برای گشایش پیشبینی میشود.

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|------------|-------|-------|
| `Flow`    | int | کد بازار |

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

## 📦 نمونه ورودی 

```json
{
  "Idn": 0
}
```

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

---
