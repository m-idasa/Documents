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
  `http://service.tsetmc.com/WebService/TsePublicV2.asmx`  
  `http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL`
- **نام سرویس:** `TradeOneDay`
- **توضیحات:** ارائه اطلاعات معاملات روزانه بازارهای مختلف

---

## پارامترهای ورودی

| نام پارامتر | نوع | توضیحات |
|-------------|------|---------|
| UserName    | string | نام کاربری مشترک |
| Password    | string | کلمه عبور مشترک |
| SelDate     | string (yyyyMMdd) | تاریخ مورد نظر |
| Flow        | int | کد بازار: <br>0: عمومی (بورس و فرابورس) <br>1: بورس <br>2: فرابورس <br>3: آتی <br>4: پایه فرابورس <br>5: پایه فرابورس (منتشر نمی‌شود) <br>6: بورس انرژی <br>7: بورس کالا |

---

## ساختار خروجی (Dataset)

```json

{
  "LVal18AFC": "نماد",
  "DEven": 20230815,
  "ZTotTran": 150,
  "QTotTran5J": 250000,
  "QTotCap": 1250000000,
  "InsCode": 1234567890,
  "LVal30": "توضیح نماد",
  "PClosing": 15000,
  "PDrCotVal": 15100,
  "ZTotTran1": 150,
  "QTotTran5J1": 250000,
  "QTotCap1": 1250000000,
  "PriceChange": 100,
  "PriceMin": 14900,
  "PriceMax": 15200,
  "PriceFirst": 15050,
  "PriceYesterday": 14900
}

```

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

---

## نمونه درخواست 

```json
POST /api/TradeOneDay
Content-Type: application/json

{
  "UserName": "demo",
  "Password": "1234",
  "SelDate": "20230815",
  "Flow": 1
}
```

---

## نمونه پاسخ 

```json
{
  "TradeSelectedDate": {
    "TradeSelectedDate": {
      "LVal18AFC": "نماد نمونه",
      "DEven": 20240101,
      "ZTotTran": 120,
      "QTotTran5J": 350000,
      "QTotCap": 500000000,
      "InsCode": 1234567890,
      "LVal30": "شرکت نمونه",
      "PClosing": 1500,
      "PDrCotVal": 1520,
      "PriceChange": "+20",
      "PriceMin": 1480,
      "PriceMax": 1530,
      "PriceFirst": 1500,
      "PriceYesterday": 1480
    }
  }
}
```

---
