---
title: زیرگروه های صنعت
layout: default
parent: اطلاعات بازار
---

# SubSector - زیرگروه های صنعت

## 📌 آدرس سرویس

```
POST /MarketInfo/SubSector
Host: {BaseUrl}
Authorization: Bearer {token}
Content-Type: application/json
```

مثال:
```
POST http://service.tsetmc.com/MarketInfo/SubSector
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

## خطاهای محتمل

| کد وضعیت HTTP | توضیح |
|---------------|-------|
| 401 | عدم احراز هویت یا توکن نامعتبر |
| 403 | عدم دسترسی (کاربر نقش لازم را ندارد) |
| 400 | داده ورودی نامعتبر |
| 500 | خطای داخلی سرور |

---


