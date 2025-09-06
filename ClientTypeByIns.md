---
title:  اطلاعات معاملات به تفکیک حقیقی و حقوقی براساس نماد
layout: default
parent: نوع خریداران
---

#  اطلاعات معاملات به تفکیک حقیقی و حقوقی براساس نماد

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/ClientType/ClientTypeByIns
```

مثال:

```bash
curl --location 'https://{BaseUrl}/ClientType/ClientTypeByIns' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' \
--data '{
    "Inscode": 124234234235
}'
```

## 🧾 نام سرویس

`ClientTypeByIns`

---

## 🎯 توضیحات

 اطلاعات معاملات به تفکیک حقیقی و حقوقی براساس نماد

---

## درخواست

پارامترهای ورودی در قالب JSON ارسال می‌گردد.

### 📥 پارامترهای ورودی

Body (JSON):

| نام فیلد  | نوع داده  | توضیحات |
|------------|-------|-------|
| `Inscode`    | long | کد داخلي نماد |

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| نام ستون               | توضیح |
|------------------------|-------|
| `RecDate`                | تاریخ رکورد |
| `InsCode`                | کد نماد |
| `Buy_I_Volume`           | حجم خرید حقیقی |
| `Buy_N_Volume`           | حجم خرید حقوقی |
| `Buy_I_Value`            | ارزش خرید حقیقی |
| `Buy_N_Value`            | ارزش خرید حقوقی |
| `Buy_Count_ClientN`      | تعداد خریداران حقوقی |
| `Buy_Count_ClientI`      | تعداد خریداران حقیقی |
| `Sell_I_Volume`          | حجم فروش حقیقی |
| `Sell_N_Volume`          | حجم فروش حقوقی |
| `Sell_I_Value`           | ارزش فروش حقیقی |
| `Sell_N_Value`           | ارزش فروش حقوقی |
| `Sell_Count_ClientN`     | تعداد فروشندگان حقوقی |
| `Sell_Count_ClientI`     | تعداد فروشندگان حقیقی |

---

## 📦 نمونه ورودی 

```json
{
  "Inscode": 124234234235
}
```

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "RecDate": 20250903,
        "InsCode": 1234567890,
        "Buy_I_Volume": 450000.5,
        "Buy_N_Volume": 120000.0,
        "Buy_I_Value": 6375000000.0,
        "Buy_N_Value": 1440000000.0,
        "Buy_Count_ClientN": 250,
        "Buy_Count_ClientI": 1500,
        "Sell_I_Volume": 420000.75,
        "Sell_N_Volume": 110000.0,
        "Sell_I_Value": 5880000000.0,
        "Sell_N_Value": 1320000000.0,
        "Sell_Count_ClientN": 200,
        "Sell_Count_ClientI": 1300
      }
    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---