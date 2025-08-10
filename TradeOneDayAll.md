---
title: کلیه معاملات در یک روز
layout: default
parent: معاملات
---


# TradeOneDayAll – کلیه معاملات در یک روز

## توضیحات
این سرویس اطلاعات معاملات روزانه را بر اساس تاریخ و کد بازار (Flow) ارائه می‌کند.  
دسترسی به این سرویس نیازمند احراز هویت و داشتن نقش `TradeOneDayAll` است.

---

## آدرس سرویس

```
POST /api/TradeOneDayAll
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST https://example.com/api/TradeOneDayAll
```

---

## پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|-----------|-----------|---------|
| `SelDate` | string    | تاریخ مورد نظر به فرمت `yyyyMMdd` |
| `Flow`    | integer   | کد بازار:<br>1: بورس<br>2: فرابورس<br>3: آتی<br>4: پایه فرابورس<br>5: پایه فرابورس (منتشر نمی‌شود) |

نمونه ورودی:
```json
{
  "SelDate": "20250808",
  "Flow": 1
}
```

---

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### ساختار خروجی:

| فیلد | نوع داده | توضیحات |
|------|----------|---------|
| `LVal18AFC` | string  | نماد |
| `DEven` | int | تاریخ |
| `ZTotTran` | decimal | تعداد معاملات |
| `QTotTran5J` | decimal | حجم (تعداد سهام معامله شده) |
| `QTotCap` | decimal | ارزش معاملات |
| `InsCode` | long | کد نماد |
| `LVal30` | string | توضیح |
| `PClosing` | decimal | قیمت پایانی |
| `PDrCotVal` | decimal | آخرین قیمت معامله شده |
| `PriceChange` | decimal | تغییر قیمت |
| `PriceMin` | decimal | حداقل قیمت |
| `PriceMax` | decimal | حداکثر قیمت |
| `PriceFirst` | decimal | قیمت اولین معامله |
| `PriceYesterday` | decimal | قیمت دیروز |

---

### نمونه پاسخ:
```json
{
  "LVal18AFC": "خودرو",
  "DEven": 20250808,
  "ZTotTran": 1250,
  "QTotTran5J": 2350000,
  "QTotCap": 15800000000,
  "InsCode": 12345678901234567,
  "LVal30": "ایران خودرو",
  "PClosing": 15250,
  "PDrCotVal": 15300,
  "PriceChange": 50,
  "PriceMin": 15000,
  "PriceMax": 15500,
  "PriceFirst": 15100,
  "PriceYesterday": 15200
}
```

---

## نکات امنیتی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.
- فقط کاربرانی که نقش `TradeOneDayAll` دارند می‌توانند این سرویس را فراخوانی کنند.
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
