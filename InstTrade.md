---
title: معاملات یک نماد در یک بازه زمانی
layout: default
parent: معاملات
---


# InstTrade – معاملات یک نماد در یک بازه زمانی

## توضیحات
این سرویس اطلاعات آماری معاملات یک نماد را در یک بازه زمانی مشخص ارائه می‌کند.  
دسترسی به این سرویس نیازمند احراز هویت و داشتن نقش `InstTrade` است.

---

## آدرس سرویس

```
POST /api/InstTrade
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST https://example.com/api/InstTrade
```

---

## پارامترهای ورودی

Body (JSON):

| نام فیلد   | نوع داده | توضیحات |
|------------|----------|---------|
| `InsCode`  | long     | کد داخلی نماد |
| `DateFrom` | string   | تاریخ شروع به فرمت `yyyyMMdd` |
| `DateTo`   | string   | تاریخ پایان به فرمت `yyyyMMdd` |

نمونه ورودی:

```json
{
  "InsCode": 12345678901234567,
  "DateFrom": "20250801",
  "DateTo": "20250808"
}
```

---

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### ساختار خروجی:

| فیلد | نوع داده | توضیحات |
|------|----------|---------|
| `InsCode` | long | کد نماد |
| `DEven` | int | تاریخ |
| `ZTotTran` | decimal | تعداد معاملات |
| `QTotTran5J` | decimal | تعداد سهام معامله شده |
| `QTotCap` | decimal | حجم معاملات |
| `LVal30` | string | توضیح |
| `PClosing` | decimal | قیمت پایانی |
| `PDrCotVal` | decimal | آخرین قیمت معامله شده |
| `ZTotTran1` | decimal | تعداد معاملات (سفارشات خرید/فروش) |
| `QTotTran5J1` | decimal | حجم (سفارشات خرید/فروش) |
| `QTotCap1` | decimal | ارزش معاملات (سفارشات خرید/فروش) |
| `PriceChange` | decimal | تغییر قیمت |
| `PriceMin` | decimal | حداقل قیمت |
| `PriceMax` | decimal | حداکثر قیمت |
| `PriceYesterday` | decimal | قیمت دیروز |

---

### نمونه پاسخ:

```json
[
  {
    "InsCode": 12345678901234567,
    "DEven": 20250801,
    "ZTotTran": 120,
    "QTotTran5J": 350000,
    "QTotCap": 5250000000,
    "LVal30": "ایران خودرو",
    "PClosing": 15250,
    "PDrCotVal": 15300,
    "ZTotTran1": 60,
    "QTotTran5J1": 175000,
    "QTotCap1": 2625000000,
    "PriceChange": 50,
    "PriceMin": 15000,
    "PriceMax": 15500,
    "PriceYesterday": 15200
  }
]
```

---

## نکات امنیتی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.
- فقط کاربرانی که نقش `InstTrade` دارند می‌توانند این سرویس را فراخوانی کنند.
- محدودیت دسترسی بر اساس [CheckCredit] اعمال می‌شود.

---

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 403 | عدم دسترسی (کاربر نقش لازم را ندارد) |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---
