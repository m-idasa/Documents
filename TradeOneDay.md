---
title: اطلاعات معاملات در یک روز
layout: default
parent: معاملات
---

# TradeOneDay - اطلاعات معاملات در یک روز

## توضیحات کلی
وب‌سرویس **TradeOneDay** اطلاعات معاملات روزانه را ارائه می‌کند.

---

## مشخصات سرویس
- **آدرس سرویس:**  

```
POST /api/TradeOneDayAll
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/Trade/TradeOneDay
```

---
  
- **نام سرویس:** `TradeOneDay`
- **توضیحات:** ارائه اطلاعات معاملات روزانه بازارهای 

---

## پارامترهای ورودی

| نام پارامتر | نوع | توضیحات |
|-------------|------|---------|
| Flow        | int | کد بازار: <br>0: عمومی (بورس و فرابورس) <br>1: بورس <br>2: فرابورس <br>3: آتی <br>4: پایه فرابورس <br>5: پایه فرابورس (منتشر نمی‌شود) <br>6: بورس انرژی <br>7: بورس کالا |

---

## توضیح فیلدهای خروجی

| فیلد | توضیح |
|------|-------|
| LVal18AFC | نماد |
| DEven | تاریخ |
| ZTotTran | تعداد معاملات |
| QTotTran5J | حجم - تعداد سهام معامله شده |
| QTotCap | ارزش معاملات |
| InsCode | کد نماد |
| LVal30 | توضیح |
| PClosing | قیمت نهایی |
| PDrCotVal | آخرین قیمت معامله شده |
| PriceChange | تغییر قیمت |
| PriceMin | حداقل قیمت |
| PriceMax | حداکثر قیمت |
| PriceFirst | قیمت اولین معامله |
| PriceYesterday | قیمت دیروز |
| Last | آخرین رکورد بودن |
| HEven | زمان |

---

## 📦 نمونه Request 

```json
{
  "Flow": 1
}
```

## ساختار خروجی (Dataset)

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
- مقادیر `Flow` عددی هستند و نقش تعیین بازار هدف را دارند.
- خروجی با ساختار `DataSet` است و ممکن است شامل چندین رکورد `TradeLastDay` باشد.