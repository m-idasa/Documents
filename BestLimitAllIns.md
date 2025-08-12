---
title: فسفارش‌های خرید و فروش (5 مظنه برتر)
layout: default
parent: بهترین ها
---

# BestLimitsAllIns - سفارش‌های خرید و فروش (5 مظنه برتر) 🧾📈

**Endpoint SOAP (اصل):** `http://service.tsetmc.com/WebService/TsePublicV2.asmx`  
**WSDL:** `http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL`

> این سند یک نسخه RESTful/JSON‌محور از سرویس `BestLimitsAllIns` (که در منبع SOAP ارائه شده) ارائه می‌دهد تا به‌راحتی در API‌های مدرن مورد استفاده قرار گیرد.

---

## توضیح خلاصه
سرویس `BestLimitsAllIns` تقاضاهای برتر خرید و فروش *همه نمادها* را ارائه می‌کند؛ هر نماد تا 5 مظنه (ردیف) را دارد. این مستند، ورودی را به‌صورت JSON و خروجی را در قالب JSON RESTful توصیف می‌کند.

---

## مسیر RESTful پیشنهادی
`GET /api/v1/markets/best-limits?flow={flow}`

یا برای درخواست با بدنه (POST):  
`POST /api/v1/markets/best-limits`

---

## پارامترهای ورودی (JSON)
```json
{
  {
    "flow": 0                 // کد بازار: 0=عمومی,1=بورس,2=فرابورس,3=آتی,4=پایه فرابورس,5=پایه فرابورس (منتشر نمی‌شود)
  }
}
```
> در صورت استفاده از `GET` می‌توانید `username`, `password`, `flow` را به‌صورت query string ارسال کنید (هرچند POST با بدنه امن‌تر است).

---

## پاسخ (Response) — ساختار RESTful (JSON)
- وضعیت HTTP: `200 OK` (در صورت موفقیت)  
- بدنه پاسخ شامل یک آرایه `data` است که هر آیتم مربوط به یک نماد بوده و حاوی حداکثر 5 مظنه است.

```json
{
  "status": "success",
  "timestamp": "2025-08-12T11:00:00Z",
  "flow": 1,
  "data": [
    {
      "insCode": 1234567890,
      "instrumentID": "ABC123",
      "boardCode": "TSE",
      "bestLimits": [
        {
          "number": 1,
          "qTitMeDem": 120000,
          "zOrdMeDem": 3,
          "pMeDem": 25000.0,
          "pMeOf": 25500.0,
          "zOrdMeOf": 2,
          "qTitMeOf": 50000,
          "heven": "10:32:12"
        },
        {
          "number": 2,
          "qTitMeDem": 80000,
          "zOrdMeDem": 2,
          "pMeDem": 24900.0,
          "pMeOf": 25600.0,
          "zOrdMeOf": 1,
          "qTitMeOf": 30000,
          "heven": "10:31:58"
        }
        // تا 5 مظنه
      ]
    },
    {
      "insCode": 9876543210,
      "instrumentID": "XYZ789",
      "boardCode": "TSE",
      "bestLimits": [
        {
          "number": 1,
          "qTitMeDem": 50000,
          "zOrdMeDem": 1,
          "pMeDem": 120000.0,
          "pMeOf": 121000.0,
          "zOrdMeOf": 2,
          "qTitMeOf": 70000,
          "heven": "10:34:01"
        }
      ]
    }
  ],
  "meta": {
    "count": 2,
    "requestedAt": "2025-08-12T11:00:00Z"
  }
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
