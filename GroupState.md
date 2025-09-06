---
title: وضعیت گروه ها
layout: default
parent: اطلاعات بازار
---

# GroupState - وضعیت گروه ها

## 📌 آدرس سرویس

```http
POST http://{BaseUrl}/MarketInfo/GroupState
```

مثال:

```bash
curl --location 'https://{BaseUrl}/MarketInfo/GroupState' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
    "Deven": 20240101
}'
```

## 🧾 نام سرویس

`GroupState`

---

## 🎯 توضیحات

   اطلاعات وضعیت گروه ها در تاریخ درخواست شده را ارائه مي کند. 

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|------------|-------|-------|
| `Deven`    | int | تاریخ به فرمت YYYYMMDD |

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون | توضیحات |
|---|---|
| `DEven` | تاریخ |
| `HEven` | زمان |
| `TseTitle` | عنوان وضعیت |
| `TseDesc` | توضیحات وضعیت |
| `Flow` | کد بازار |

---

## 📦 نمونه ورودی 

```json
{
  "Deven": 20240101
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "DEven": 20250903,
        "HEven": 111530,
        "TseTitle": "توقف نماد",
        "TseDesc": "نماد به دلیل افشای اطلاعات بااهمیت متوقف شد.",
        "Flow": 1
}


    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی

- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---


