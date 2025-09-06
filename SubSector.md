---
title: زیرگروه های صنعت
layout: default
parent: اطلاعات بازار
---

# SubSector - زیرگروه های صنعت

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/MarketInfo/SubSector
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/SubSector' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}'
```  

## 🧾 نام سرویس

`SubSector`

---

## 🎯 توضیحات

   اطلاعات زیر گروه هاي صنعت را ارائه مي کند. 

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `CSecVal` | کد گروه صنعت |
| `CSoSecVal` | کد زیرگروه |
| `LSoSecVal` | نام زیرگروه صنعت |
| `DEven`     | تاریخ |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "CSecVal": "CAR",
        "CSoSecVal": "IKO",
        "LSoSecVal": "ایران خودرو",
        "DEven": 20250911
      }

    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---


