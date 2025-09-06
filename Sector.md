---
title: مشخصات گروه های صنعت
layout: default
parent: اطلاعات بازار
---

# Sector - مشخصات گروه های صنعت

## 📌 آدرس سرویس

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/MarketInfo/Sector
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/Sector' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}'
```  

## 🧾 نام سرویس

`Sector`

---

## 🎯 توضیحات

   اطلاعات گروه هاي صنعت را ارائه مي کند. 

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `CSecVal` | کد گروه صنعت |
| `LSecVal` | نام گروه صنعت |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "CSecVal": "CAR",
        "LSecVal": "خودرو سازی",
      }

    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---


