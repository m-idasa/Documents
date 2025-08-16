---
title: سفارش‌های خرید و فروش (5 مظنه برتر)
layout: default
parent: بهترین ها
---

# BestLimitsAllIns - سفارش‌های خرید و فروش (5 مظنه برتر) 🧾📈

> این سند یک نسخه RESTful/JSON‌محور از سرویس `BestLimitsAllIns` (که در منبع SOAP ارائه شده) ارائه می‌دهد تا به‌راحتی در API‌های مدرن مورد استفاده قرار گیرد.

## 📌 آدرس سرویس

```
POST /BestLimit/BestLimitsAllIns
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/BestLimit/BestLimitsAllIns
```

---

## 🧾 نام سرویس

`BestLimitsAllIns`

---

## 🎯 توضیحات
سرویس `BestLimitsAllIns` تقاضاهای برتر خرید و فروش *همه نمادها* را ارائه می‌کند؛ هر نماد تا 5 مظنه (ردیف) را دارد. این مستند، ورودی را به‌صورت JSON و خروجی را در قالب JSON RESTful توصیف می‌کند.

---
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

### توضیح فیلدهای مهم
- `insCode` : کد داخلی یکتا برای هر نماد.  
- `instrumentID` : شناسه 12 حرفی لاتین نماد (در صورت موجود بودن).  
- `bestLimits` : آرایه‌ای از مظنه‌ها (حداکثر 5 مورد).  
- هر مظنه شامل:  
  - `number` : ردیف مظنه (1..5)  
  - `qTitMeDem` : حجم تقاضا  
  - `zOrdMeDem` : تعداد تقاضا  
  - `pMeDem` : قیمت تقاضا  
  - `pMeOf` : قیمت عرضه  
  - `zOrdMeOf` : تعداد عرضه  
  - `qTitMeOf` : حجم عرضه  
  - `heven` : زمان ثبت مظنه (HH:MM:SS)

---

## مثال درخواست با curl (POST)
```bash
curl -X POST "https://api.example.com/api/v1/markets/best-limits"   -H "Content-Type: application/json"   -d '{
    "username":"publicuser",
    "password":"publicpass",
    "flow":1
  }'
```

## کد نمونه پاسخ برای خطاها
- `400 Bad Request` - پارامترهای ورودی ناقص یا نامعتبر  
- `401 Unauthorized` - خطای احراز هویت  
- `500 Internal Server Error` - خطای سرور

```json
{
  "status": "error",
  "message": "Invalid username or password",
  "code": 401
}
```

---

## JSON Schema (نمونه‌ای برای اعتبارسنجی پاسخ `bestLimits`)
```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "required": ["status","timestamp","data"],
  "properties": {
    "status": {"type": "string"},
    "timestamp": {"type": "string"},
    "flow": {"type": "integer"},
    "data": {
      "type": "array",
      "items": {
        "type": "object",
        "required": ["insCode","bestLimits"],
        "properties": {
          "insCode": {"type": "integer"},
          "instrumentID": {"type": "string"},
          "boardCode": {"type": "string"},
          "bestLimits": {
            "type": "array",
            "maxItems": 5,
            "items": {
              "type": "object",
              "properties": {
                "number": {"type": "integer"},
                "qTitMeDem": {"type": "integer"},
                "zOrdMeDem": {"type": "integer"},
                "pMeDem": {"type": "number"},
                "pMeOf": {"type": "number"},
                "zOrdMeOf": {"type": "integer"},
                "qTitMeOf": {"type": "integer"},
                "heven": {"type": "string"}
              }
            }
          }
        }
      }
    }
  }
}
```

---

## یادداشت‌ها و نکات پیاده‌سازی
- این سند بازتفسیر RESTful از سرویس SOAP است و برای استفاده در APIهای مدرن پیشنهاد شده است.  
- برای استفاده در محیط تولید، احراز هویت امن‌تر (مثلاً توکن‌محور) را پیشنهاد می‌کنیم.  
- `flow` مشخص می‌کند که چه بازارهایی برگردانده شود؛ در صورت `0` همه بازارها بازگردانده می‌شوند.
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---
