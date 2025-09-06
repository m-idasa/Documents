---
title: اطلاعات شاخص در یک روز
layout: default
parent: شاخص
---

# نمادهای هرشاخص

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/Index/Indexb2
```

مثال:

```bash
curl --location 'https://{BaseUrl}/Index/Indexb2' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
  "Deven": 20250101
}'
```

## 🧾 نام سرویس

`Indexb2`

---

## 🎯 توضیحات

 اطلاعات سابقه شاخص ها را ارائه مي کند. 

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام پارامتر | نوع داده | توضیح |
|------ | --- | ------------------------------ |
| Deven | int | تاریخ پایان به فرمت `YYYYMMDD`|

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| فیلد | توضیح |
|------|-------|
| `IdxCode` |  کد شاخص |
| `DEVen` | تاریخ (نمادهایی که در آخرین روز معاملاتی وجود نداشته باشند دارای تاریخ قدیمی هستند) |
| `tHEven`                     | زمان (hhmmss) |
| `XNivInuClMresIbs`           | مقدار شاخص |
| `HNivInuClMresIbs`           | زمان شاخص |
| `XNivInuPrDifMresIbs`        | مقدار اولين انتشار شاخص |
| `HNivInuPrDifMresIbs`        | زمان اولين انتشار شاخص |
| `XNivInuPhMresIbs`           | بيشترين شاخص در طول روز |
| `HNivInuPhMresIbs`           | زمان بيشترين شاخص در طول روز |
| `XVarIdxPhJClV`              | درصد تغييرات بيشترين مقدار شاخص بر حسب روز قبل |
| `XNivInuPbMresIbs`           | کمترين شاخص در طول روز |
| `HNivInuPbMresIbs`           | زمان کمترين شاخص در طول روز |
| `XVarIdxPbJClV`              | درصد تغييرات کمترين مقدار شاخص بر حسب روز قبل |
| `XVarDrInuClV`               | درصد تغيير نمادهاي کاهش يافته در شاخص |
| `QDvdNetJValIbs`             | مقدار سود خالص پرداختي نمادهاي شاخص در روز جاری |
| `QCapBsRfVIbs`               | مقدار سرمايه ديروز شاخص |
| `KAjCapBzIbs`                | ضريب تنظيم براي سرمايه پايه شاخص |
| `XNivIrteNetClIbs`           | مقدار شاخص بازده خالص نقدی|

---

## 📦 نمونه ورودی 

```json
{
  "Deven": 20250101
}
```

## 📄 نمونه خروجی

```json
{
    "IsSuccess": true,
    "Data": [
      {
        {
          "InsCode": 1234567890,
          "DEven": 20250903,
          "tHEven": 103000,
          "XNivInuClMresIbs": 2500000.5,
          "HNivInuClMresIbs": 93000,
          "XNivInuPrDifMresIbs": -12500.75,
          "HNivInuPrDifMresIbs": 93000,
          "XNivInuPhMresIbs": 920000.3,
          "HNivInuPhMresIbs": 93000,
          "XVarIdxPhJClV": -3500.25,
          "XNivInuPbMresIbs": 500000.8,
          "HNivInuPbMresIbs": 93000,
          "XVarIdxPbJClV": 1200.5,
          "XVarDrInuClV": -250.0,
          "QDvdNetJValIbs": 75000.0,
          "QCapBsRfVIbs": 1800000000000,
          "KAjCapBzIbs": 1700000000000,
          "XNivIrteNetClIbs": 15.75
        }
      }
    ],
    "Msg": null
}
```

---

## ✍️ نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---