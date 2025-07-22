---
title: اطلاعات معاملات آخرین روز (TradeLastDay)
layout: default
nav_order: 2
---

# اطلاعات معاملات آخرین روز (TradeLastDay)

این سرویس از وب‌سرویس TSETMC برای دریافت اطلاعات معاملات آخرین روز طراحی شده است.

## 📌 آدرس سرویس

- **WSDL:**  
  http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL  
- **Endpoint:**  
  http://service.tsetmc.com/WebService/TsePublicV2.asmx

## 🧾 نام سرویس

`TradeLastDay`

## 🎯 توضیحات

این سرویس اطلاعات مربوط به آخرین روز معاملات بازار بورس، فرابورس، انرژی و سایر بازارها را برمی‌گرداند.

## 📥 پارامترهای ورودی

| نام پارامتر | نوع | توضیح |
|-------------|------|-------|
| `UserName` | string | نام کاربری مشترک |
| `Password` | string | کلمه عبور مشترک |
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

## 📦 نمونه Request (SOAP)

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

```xml
<TradeLastDay>
  <LVal18AFC>فملی</LVal18AFC>
  <DEven>20250722</DEven>
  <ZTotTran>340</ZTotTran>
  <QTotTran5J>120000</QTotTran5J>
  <QTotCap>8750000000</QTotCap>
  <InsCode>1234567890</InsCode>
  <LVal30>ملی صنایع مس ایران</LVal30>
  <PClosing>7300</PClosing>
  <PDrCotVal>7350</PDrCotVal>
  <PriceChange>+50</PriceChange>
  <PriceMin>7200</PriceMin>
  <PriceMax>7400</PriceMax>
  <PriceFirst>7250</PriceFirst>
  <PriceYesterday>7250</PriceYesterday>
  <Last>1</Last>
  <HEven>123015</HEven>
</TradeLastDay>
```


## ✍️ نکات تکمیلی

- مقادیر `Flow` عددی هستند و نقش تعیین بازار هدف را دارند.
- خروجی با ساختار `DataSet` است و ممکن است شامل چندین رکورد `TradeLastDay` باشد.