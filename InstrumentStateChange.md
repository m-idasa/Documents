---
title: تغییر وضعیت نماد
layout: default
parent: نمادها
---

# تغییر وضعیت نماد

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/Instrument/InstrumentStateChange
```

مثال:

```bash
curl --location 'https://{BaseUrl}/Instrument/InstrumentStateChange' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
  "Flow": 1,
  "Inscode": 20250101
}'
```  

## 🧾 نام سرویس

`InstrumentStateChange`

---

## 🎯 توضیحات

سرویسی جهت دریافت وضعیت‌های جدید یا تغییر یافته نمادها

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام پارامتر | نوع داده | توضیح |
|------- | --- |-------|
| `Inscode` | long  | کد داخلی نماد |
| `Deven`     | تاریخ به فرمت `YYYYMMDD` |

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| فیلد | توضیح |
|------|-------|
| `InsCode` | کد داخلی نماد |
| `LVal18AFC` | کد 18 رقمی فارسی نماد |
| `LVal30` | نام 30 رقمی فارسی نماد |
| `LBoard` | نام تابلو |
| `StateTypeDesc` | دلیل توقف |
| `HEven` | ساعت |
| `CEtaVal` | وضعیت نماد |

### مقادیر ممکن برای `CEtaVal`

| توضیح | مقدار |
|-------|-------|
| `I`  | ممنوع |
| `A`  | مجاز |
| `AG` | مجاز-مسدود |
| `AS` | مجاز-متوقف |
| `AR` | مجاز-محفوظ |
| `IG` | ممنوع-مسدود |
| `IS` | ممنوع-متوقف |
| `IR` | ممنوع-محفوظ |

---

## 📦 نمونه ورودی 

```json
{
  "Inscode": 347231987401,
  "Deven": 20250209
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data": [
    {
      "inscode": 1234567890,
      "LVal18AFC": "نام فارسی",
      "LVal30": "نام بلند",
      "LBoard": "تابلو اصلی",
      "StateTypeDesc": "مجاز",
      "CEtaVal": "I"
    }
  ],
  "Msg": null
}
```

---

## نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---