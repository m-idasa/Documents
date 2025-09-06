---
title: مشخصات تابلو ها
layout: default
parent: اطلاعات بازار
---

# Board - مشخصات تابلو ها

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/MarketInfo/Board
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/Board' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
    "CComVal": "1",
    "LBoard": "بورس",
}'
```

## 🧾 نام سرویس

`Board`

---

## 🎯 توضیحات

  ليست تابلوها را ارائه مي کند. 

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `CComVal` | کد تابلو |
| `LBoard` | نام تابلو |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "CComVal": "1",
        "LBoard": "بورس",
      }

    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---


