---
title: سفارش‌های خرید و فروش یک نماد برای 3 مظنه برتر
layout: default
parent: بهترین ها
---

# BestLimitOneIns - سفارش‌های خرید و فروش یک نماد برای 3 مظنه برتر

## 📌 آدرس سرویس

```
POST /BestLimit/BestLimitOneIns
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/BestLimit/BestLimitOneIns
```

---

## 🧾 نام سرویس

`InstrumentFilterByDate`

## 🎯 توضیحات

این سرویس، **5 تقاضای برتر خرید و فروش** یک نماد را ارائه می‌کند.

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|------------|-------|-------|
| InsCode    | int | کد داخلي نماد |


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

## 📦 نمونه ورودی 

```json
{
  "InsCode": 134623465465
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data": [
    {
      "DEVen": 0,
      "InsCode": 0,
      "InstrumentID": "string",
      "CValMne": "string",
      "LVal18": "string",
      "CSocCSAC": "string",
      "LSoc30": "string",
      "LVal18AFC": "string",
      "LVal30": "string",
      "CIsin": "string",
      "QNmVlo": 0.0,
      "ZTitad": 0.0,
      "DESop": 0,
      "YOPSJ": 0,
      "CGdSVal": "string",
      "CGrValCot": "string",
      "DInMar": 0,
      "YUniExpP": 0,
      "YMarNSC": "string",
      "CComVal": "string",
      "CSecVal": "string",
      "CSoSecVal": "string",
      "YDeComp": 0,
      "PSaiSMaxOkValMdv": 0.0,
      "PSaiSMinOkValMdv": 0.0,
      "BaseVol": 0,
      "YVal": 0,
      "QPasCotFxeVal": 0,
      "QQtTranMarVal": 0,
      "Flow": 0,
      "QtitMinSaiOmProd": 0,
      "QtitMaxSaiOmProd": 0
    }
  ],
  "Msg": null
}
```

## ✍️ نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---
