---
title: روزهای باز بازار
layout: default
parent: اطلاعات بازار
---

# NSCStart - روزهای باز بازار

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/MarketInfo/NSCStart
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/NSCStart' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}'
```  

## 🧾 نام سرویس

`NSCStart`

---

## 🎯 توضیحات

اطلاعات 20 روز آخری که بازار باز بوده است را ارائه می کند.

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد. 

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `DEven` | تاریخ |
| `HEven` | زمان |
| `NSCEnd` | نشان دهنده ی پایان یا عدم پایان روز |


#### مقادیر ممکن برای `NSCEnd`

- 0: روز تمام نشده است.
- 1: روز تمام شده است.

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "DEven": 20250903,
        "HEven": 111530,
        "NSCEnd": "0",
}


    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---


