---
title: فهرست نمادهای بورس انرژی (برق)
layout: default
parent: انرژی
---

# فهرست نمادهای بورس انرژی (برق)

## 📌 آدرس سرویس

```
POST /Energy/PowerInstrument
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/Energy/PowerInstrument
```

## 🧾 نام سرویس

`PowerInstrument`

---

## 🎯 توضیحات

سرویس **PowerInstrument** فهرست نمادهای فعال بازار برق را ارائه می‌کند.

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| Idn | شماره رکورد (کلید یکتا) |
| InstrumentISIN | نماد ۱۲ رقمی |
| InsCode | کد داخلی نماد (کلید یکتا) |
| StartDate | تاریخ شروع بازه نماد (مثال: 13921101 برای پرباری بهمن 1392) |
| EndDate | تاریخ پایان بازه نماد (مثال: 13921130 برای پرباری بهمن 1392) |
| ExpireDate | آخرین روز قابل معامله بودن نماد |
| StuffCode | نوع دارایی؛ در حال حاضر عدد 1 (برق) |
| LoadType | نوع بار (شرح در ادامه) |
| Title | عنوان نماد |
| Hours | تعداد ساعت‌های تشکیل‌دهنده قرارداد (نماد) |
| EnergySymbol | نماد ۱۷ رقمی |
| StartValidity | تاریخ شروع اعتبار نماد |
| EndValidity | تاریخ پایان اعتبار نماد |
| StartValidityShamsi | تاریخ شروع اعتبار (شمسی) |
| EndValidityShamsi | تاریخ پایان اعتبار (شمسی) |

### مقادیر LoadType
- 0: بار پایه
- 1: کم‌باری
- 2: میان‌باری
- 3: پرباری

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "Idn": 1,
        "InstrumentIsin": "IR1234567890",
        "InsCode": 1234567890,
        "StartDate": 13921101,
        "EndDate": 13921130,
        "ExpireDate": "1392/11/30",
        "StuffCode": 1,
        "LoadType": 3,
        "Title": "پرباری بهمن 1392",
        "Hours": 720,
        "EnergySymbol": "IR12345678901234567",
        "StartValidity": "2014-01-21",
        "EndValidity": "2014-02-19",
        "StartValidityShamsi": 13921030,
        "EndValidityShamsi": 13921130
      }
    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.
- فقط کاربرانی که نقش `PowerInstrument` دارند می‌توانند این سرویس را فراخوانی کنند.

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 403 | عدم دسترسی (کاربر نقش لازم را ندارد) |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---

