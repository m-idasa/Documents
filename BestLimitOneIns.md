---
title: سفارش‌های خرید و فروش یک نماد برای 3 مظنه برتر
layout: default
parent: بهترین ها
---

# سفارش‌های خرید و فروش یک نماد برای 3 مظنه برتر

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/BestLimit/BestLimitOneIns
```

مثال:

```bash
curl --location 'https://{BaseUrl}/BestLimit/BestLimitOneIns' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
    "Inscode": 134623465465
}'
```

## 🧾 نام سرویس

`InstrumentFilterByDate`

---

## 🎯 توضیحات

این سرویس، **5 تقاضای برتر خرید و فروش** یک نماد را ارائه می‌کند.

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|------------|-------|-------|
| Inscode    | int | کد داخلي نماد |

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| فیلد | توضیحات |
|------|---------|
| `number` | ردیف - برای هر نماد تا 5 مظنه برتر نمایش داده می‌شود که این عدد معرف شماره ردیف مظنه است. |
| `InsCode` | کد داخلی نماد |
| `QTitMeDem` | حجم تقاضا |
| `ZOrdMeDem` | تعداد تقاضا |
| `PMeDem` | قیمت تقاضا |
| `PMeOf` | قیمت عرضه |
| `ZOrdMeOf` | تعداد عرضه |
| `QTitMeOf` | حجم عرضه |
| `Heven` | ساعت |

---

## 📦 نمونه ورودی 

```json
{
  "Inscode": 134623465465
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data": [
    {
      "InsCode": "123456789",
      "CGrValCot": "01",
      "InstrumentID": "IRB123456789",
      "CValMne": "ABCD1",
      "LVal18": "SOME-LATIN-NAME",
      "CSocCSAC": "COMP1",
      "LSoc30": "شرکت نمونه",
      "LVal18AFC": "نماد نمونه",
      "LVal30": "نماد نمونه بازار",
      "CIsin": "IRO123456789"
    }
  ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---
