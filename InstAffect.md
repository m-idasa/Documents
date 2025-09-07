---
title: تاثیر در شاخص
layout: default
parent: شاخص
---

# تاثیر در شاخص

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/Index/InstAffect
```

مثال:

```bash
curl --location 'https://{BaseUrl}/Index/InstAffect' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
  "Flow": 1,
  "IdxCode": 544233543589
}'
```

## 🧾 نام سرویس

`InstAffect`

---

## 🎯 توضیحات

  اطلاعات تاثیر نمادها در شاخص را ارائه مي کند. 

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| فیلد | توضیح |
|------|-------|
| `InsCode`         | کد داخلی شرکت |
| `LSoc30`        | نام 30 رقمي فارسي شرکت |
| `LVal18AFC` | کد 18 رقمي فارسي نماد |
| `InstAffect` | تاثیر در شاخص کل |

---

## 📦 نمونه ورودی 

```json
{
  "Flow": 1,
  "IdxCode": 544233543589
}
```

## 📄 نمونه خروجی

```json
{
    "IsSuccess": true,
    "Data": [
      {
        {
          "InsCode": 1234567890,
          "LSoc30": "صنعت فلزات اساسی",
          "LVal18AFC": "IRO1FOLD0001",
          "InstAffect": 200.35
        }
      }
    ],
    "Msg": null
}
```

---

## ✍️ نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---