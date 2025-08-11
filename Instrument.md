---
title: فهرست و مشخصات نمادها
layout: default
parent: نمادها
---

# Instrument - فهرست و مشخصات نمادها

## 📌 آدرس سرویس

```
POST /Instrument/Instrument
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/Instrument/Instrument
```

---

## 🧾 نام سرویس

`Instrument`

## 🎯 توضیحات

اطلاعات مربوط به نمادها را ارائه می‌کند.


## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام پارامتر | توضیح |
|------------|-------|
| `Flow` | کد بازار:<br> `1`: بورس<br>`2`: فرابورس<br>`3`: مشتقه<br>`4`: پایه فرابورس<br>`5`: پایه فرابورس (منتشر نمی‌شود)<br>`6`: بورس انرژی<br>`7`: بورس کالا |


## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| فیلد | توضیح |
|------|-------|
| `DEVen` | تاریخ (نمادهایی که در آخرین روز معاملاتی وجود نداشته باشند دارای تاریخ قدیمی هستند) |
| `InsCode` | کد داخلی نماد (یکتا برای هر نماد) |
| `InstrumentID` | کد 12 رقمی لاتین نماد |
| `CValMne` | کد 5 رقمی لاتین نماد |
| `LVal18` | نام 18 رقمی لاتین نماد |
| `CSocCSAC` | کد 5 رقمی لاتین شرکت |
| `LSoc30` | نام 30 رقمی فارسی شرکت |
| `LVal18AFC` | کد 18 رقمی فارسی نماد |
| `LVal30` | نام 30 رقمی فارسی نماد |
| `CIsin` | کد 12 رقمی شرکت |
| `QNmVlo` | قیمت اسمی |
| `ZTitad` | تعداد سهام - سرمایه |
| `DESop` | تاریخ تغییر نماد |
| `YOPSJ` | نوع تغییر امروز نماد |
| `CGdSVal` | نوع نماد (A - I - O) |
| `CGrValCot` | کد گروه نماد |
| `DInMar` | تاریخ اولین روز معاملاتی نماد |
| `YUniExpP` | واحد قیمت (1: قیمت، 2: درصد) |
| `YMarNSC` | کد بازار |
| `CComVal` | کد تابلو |
| `CSecVal` | کد گروه صنعت |
| `CSoSecVal` | کد زیرگروه صنعت |
| `YDeComp` | میزان تاخیر تصویه |
| `PSaiSMaxOkValMdv` | حداکثر قیمت مجاز |
| `PSaiSMinOkValMdv` | حداقل قیمت مجاز |
| `BaseVol` | حجم مبنا |
| `YVal` | نوع نماد |
| `QPasCotFxeVal` | کوچک‌ترین واحد قیمتی قابل معامله |
| `QQtTranMarVal` | کوچک‌ترین تعداد سهام قابل معامله |
| `Flow` | بازار |
| `QtitMinSaiOmProd` | حداقل حجم مجاز سفارش |
| `QtitMaxSaiOmProd` | حداکثر حجم مجاز سفارش |
| `Valid` | اعتبار نماد (0: قدیمی، 1: معتبر) |

## 📦 نمونه ورودی 

```json
{
  "Flow": 1
}
```

## 📄 نمونه خروجی

```json
{
    "IsSuccess": true,
    "Data": [
      {
        "DEVen": 20250101,
        "InsCode": 1234567890,
        "InstrumentID": "ABC123",
        "CValMne": "نماد",
        "LVal18": "نام کوتاه",
        "CSocCSAC": "کد بازار",
        "LSoc30": "نام کامل بازار",
        "LVal18AFC": "نام فارسی",
        "LVal30": "نام بلند",
        "CIsin": "IR1234567890",
        "QNmVlo": 1000.5,
        "ZTitad": 5000.0,
        "DESop": 1,
        "YOPSJ": 1,
        "CGdSVal": "گروه صنعت",
        "CGrValCot": "کد گروه",
        "DInMar": 20250102,
        "YUniExpP": 1,
        "YMarNSC": "بازار اصلی",
        "CComVal": "کد کالا",
        "CSecVal": "کد بخش",
        "CSoSecVal": "کد زیر بخش",
        "YDeComp": 1,
        "PSaiSMaxOkValMdv": 1500.25,
        "PSaiSMinOkValMdv": 900.75,
        "BaseVol": 100000,
        "YVal": 1,
        "QPasCotFxeVal": 200,
        "QQtTranMarVal": 300,
        "Flow": 1,
        "QtitMinSaiOmProd": 1000,
        "QtitMaxSaiOmProd": 5000,
        "Valid": 1
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