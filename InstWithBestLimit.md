---
title: ليست نمادهايي داراي صف خريد و فروش
layout: default
parent: بهترین ها
---

# ليست نمادهايي داراي صف خريد و فروش InstWithBestLimit

## توضیحات کلی
سرویس **InstWithBestLimit** فهرست نمادهایی که دارای صف خرید و فروش هستند را ارائه می‌کند.

---

## آدرس سرویس

- **Endpoint SOAP:**  
  `http://service.tsetmc.com/WebService/TsePublicV2.asmx`

- **WSDL:**  
  `http://service.tsetmc.com/WebService/TsePublicV2.asmx?WSDL`

---

## پارامترهای ورودی (RESTful JSON)

```json
{
  "UserName": "string",
  "Password": "string",
  "Flow": 0
}
```
**Flow**: کد بازار  
- `0` : عمومی - مشترک بین بورس و فرابورس  
- `1` : بورس  
- `2` : فرابورس  
- `3` : آتی  
- `4` : پایه فرابورس  
- `5` : پایه فرابورس (منتشر نمی‌شود)  

---

## ساختار خروجی (نمونه JSON)

```json
{
  "InstWithBestLimit": [
    {
      "InsCode": "string",
      "CGrValCot": "string",
      "InstrumentID": "string",
      "CValMne": "string",
      "LVal18": "string",
      "CSocCSAC": "string",
      "LSoc30": "string",
      "LVal18AFC": "string",
      "LVal30": "string",
      "CIsin": "string"
    }
  ]
}
```

---

## توضیحات فیلدها

| نام فیلد       | توضیح |
|---------------|-------|
| **InsCode**   | کد داخلی نماد |
| **CGrValCot** | کد گروه نماد |
| **InstrumentID** | کد 12 رقمی لاتین نماد |
| **CValMne**   | کد 5 رقمی لاتین نماد |
| **LVal18**    | نام 18 رقمی لاتین نماد |
| **CSocCSAC**  | کد 5 رقمی لاتین شرکت |
| **LSoc30**    | نام 30 رقمی فارسی شرکت |
| **LVal18AFC** | کد 18 رقمی فارسی نماد |
| **LVal30**    | نام 30 رقمی فارسی نماد |
| **CIsin**     | کد 12 رقمی ISIN |

---

## نمونه درخواست RESTful

**POST** `http://service.tsetmc.com/api/InstWithBestLimit`

Header:
```http
Content-Type: application/json
```

Body:
```json
{
  "UserName": "your_username",
  "Password": "your_password",
  "Flow": 1
}
```

---

## نمونه پاسخ

```json
{
  "InstWithBestLimit": [
    {
      "InsCode": "123456789",
      "CGrValCot": "01",
      "InstrumentID": "IRB123456789",
      "CValMne": "ABCD1",
      "LVal18": "SOME-LATIN-NAME",
      "CSocCSAC": "COMP1",
      "LSoc30": "شرکت نمونه",
      "LVal18AFC": "نماد نمونه",
      "LVal30": "نماد نمونه بازار",
      "CIsin": "IRO123456789"
    }
  ]
}
```

---

## نکات
- سرویس به‌روزرسانی آنی ندارد و داده‌ها ممکن است چند ثانیه تأخیر داشته باشند.
- مقادیر `Flow` تعیین‌کننده بازار هدف است.
