---
title: معاملات یک نماد در یک بازه زمانی
layout: default
parent: معاملات
---

# InstTrade – معاملات یک نماد در یک بازه زمانی

## 🎯 توضیحات
این سرویس اطلاعات آماری معاملات یک نماد را در یک بازه زمانی مشخص ارائه می‌کند.  
دسترسی به این سرویس نیازمند احراز هویت و داشتن نقش `InstTrade` است.

---

## 📌 آدرس سرویس

```
POST /Trade/InstTrade
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/Trade/InstTrade
```

## 🧾 نام سرویس

`InstTrade`

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد   | نوع داده | توضیحات |
|------------|----------|---------|
| InsCode  | long     | کد داخلی نماد |
| DateFrom | decimal   | تاریخ شروع به فرمت `YYYYMMDD` |
| DateTo   | decimal   | تاریخ پایان به فرمت `YYYYMMDD` |

---

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

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
| `Last` | آخرین رکورد بودن |
| `HEven` | زمان |

---

## 📦 نمونه Request 

```json
{
  "InsCode": 006101034107,
  "DateFrom": 20250809,
  "DateTo": 20250910
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "LVal18AFC": "خودرو",
        "DEven": 20240101,
        "ZTotTran": 120,
        "QTotTran5J": 350000,
        "QTotCap": 500000000,
        "InsCode": 1234567890,
        "LVal30": "ایران خودرو",
        "PClosing": 1500,
        "PDrCotVal": 1520,
        "PriceChange": "+20",
        "PriceMin": 1480,
        "PriceMax": 1530,
        "PriceFirst": 1500,
        "PriceYesterday": 1480,
        "Last": 0,
        "HEven": 112530
      }
    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی

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
