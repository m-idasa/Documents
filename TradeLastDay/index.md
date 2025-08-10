---
title: اطلاعات معاملات آخرین روز (TradeLastDay)
layout: default
parent: معاملات
---

# اطلاعات معاملات آخرین روز (TradeLastDay)

این سرویس از وب‌سرویس TSETMC برای دریافت اطلاعات معاملات آخرین روز طراحی شده است.

## 📌 آدرس سرویس

```
POST /api/TradeLastDay
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST https://example.com/api/TradeLastDay
```

---

## 🧾 نام سرویس

`TradeLastDay`

## 🎯 توضیحات

این سرویس اطلاعات مربوط به آخرین روز معاملات بازار بورس، فرابورس، انرژی و سایر بازارها را برمی‌گرداند.

## 📥 پارامترهای ورودی

| نام پارامتر | نوع | توضیح |
|-------------|------|-------|
| `Flow` | integer | نوع بازار:<br>0: عمومی<br>1: بورس<br>2: فرابورس<br>3: آتی<br>4: پایه فرابورس<br>5: پایه فرابورس (منتشر نمی‌شود)<br>6: بورس انرژی<br>7: بورس کالا |

## 📤 ساختار خروجی

خروجی به صورت `Dataset` از نوع XML برمی‌گردد که شامل اطلاعات زیر است:

| نام فیلد | نوع | توضیح |
|----------|-----|-------|
| `LVal18AFC` | string | نماد |
| `DEven` | int | تاریخ |
| `ZTotTran` | decimal | تعداد معاملات |
| `QTotTran5J` | decimal | حجم معاملات |
| `QTotCap` | decimal | ارزش معاملات |
| `InsCode` | long | کد نماد |
| `LVal30` | string | توضیح نماد |
| `PClosing` | decimal | قیمت پایانی |
| `PDrCotVal` | decimal | آخرین قیمت معامله شده |
| `PriceChange` | decimal | تغییر قیمت |
| `PriceMin` | decimal | حداقل قیمت |
| `PriceMax` | decimal | حداکثر قیمت |
| `PriceFirst` | decimal | اولین قیمت معامله |
| `PriceYesterday` | decimal | قیمت دیروز |
| `Last` | unsignedByte | وضعیت آخر |
| `HEven` | int | ساعت |

## 📦 نمونه Request 

```xml
<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               xmlns:xsd="http://www.w3.org/2001/XMLSchema"
               xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
  <soap:Body>
    <TradeLastDay xmlns="http://tempuri.org/">
      <UserName>your_username</UserName>
      <Password>your_password</Password>
      <Flow>1</Flow>
    </TradeLastDay>
  </soap:Body>
</soap:Envelope>
```

## 📄 نمونه خروجی

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


## ✍️ نکات تکمیلی

- مقادیر `Flow` عددی هستند و نقش تعیین بازار هدف را دارند.
- خروجی با ساختار `DataSet` است و ممکن است شامل چندین رکورد `TradeLastDay` باشد.