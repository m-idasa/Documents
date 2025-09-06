---
title: Future - آتی
layout: default
parent: معاملات مشتقه
---

# Future - آتی

## 📌 آدرس سرویس

```
POST http://{BaseUrl}/Derivate/Future
```

مثال:

```bash
curl --location 'https://{BaseUrl}/Derivate/Future' \
--header 'Content-Type: application/json' \
--header 'Authorization: Bearer {token}' 
```

## 🧾 نام سرویس

`Future`

---

## 🎯 توضیحات

سرویسی برای دریافت موقعیت‌های باز اختیار معامله (Open Interest) نمادهای دارای اختیار خرید و فروش.

---

## درخواست

این سرویس هیچ پارامتر ورودی ندارد.

## پاسخ

پاسخ در قالب JSON برمی‌گردد.

### 📤 ساختار خروجی:

| ستون             | توضیح                                                |
|------------------|------------------------------------------------------|
| `ID`                        | کد جدول                                          |
| `CIsin`                     | کد 12 رقمی شرکت                                  |
| `BaseInstrumentCIsin`       | کد نماد اصلی                                     |
| `Quantity`                  | اندازه ی قرارداد                                 |
| `MaxClientOP`               | حداکثر تعداد موقعیت‌های باز مجاز توسط مشتری     |
| `MaxActClientOP`            | سقف موقعیت های باز مشتری حقیقی                  |
| `MaxBrokerOP`               | حداکثر تعداد موقعیت‌های باز مجاز توسط کارگزار   |
| `MaxMarketOP`               | حداکثر تعداد موقعیت‌های باز مجاز در بازار       |
| `BeginDate`                 | روز شروع قرارداد                                 |
| `EndDate`                   | روز پایان قرارداد                                |
| `PhysicalSettlementDate`      | تاریخ نهایی تسویه فیزیکی قرارداد              |
| `PrioritizationstlmntDate`    | تاریخ تعیین اولویت تسویه قرارداد              |
| `CashStlmntDate`              | تاریخ نهایی تسویه نقدی قرارداد                |
| `IMAValue`                    | وجه تضمین اولیه                                |
| `RMBValue`                    | وجه تضمین لازم                                  |
| `CRound_Value`                | ضریب گرد کردن                                  |
| `DExtraMargin`                | وجه تضمین اضافی                                |
| `MaintananceMarginPercent`    | وجه تضمین حداقل                                |
| `PartialStlmntIsAllowded`     | اجازه تعیین اولویت تسویه                      |
| `Month`                       | ماه قرارداد                                    |
| `Year`                        | سال قرارداد                                    |
| `SettlementTypeID`            | Id نوع تسویه در سررسید                         |
| `SettlemnetTypeName`          |  نوع تسویه در سررسید (نقدی یا فیزیکی)         |
| `AppropiationID`              | روش تخصیص                                       |
| `AppropriationName`           | روش تخصیص                                       |
| `BaseAssetPriceDeterminationID` | Id نحوه تعیین قیمت                           |
| `PenaltyRatio`                | خسارت                                           |
| `BaseAssetPriceName`          | نحوه تعیین قیمت                                |
| `PhysicalFeeRatio`            | کارمزد تسویه فیزیکی                            |
| `CashFeeRatio`                | کارمزد تسویه نقدی                              |
| `TaxRatio`                    | مالیات                                          |
| `MOP`                         | تعداد موقعیت های باز                           |

---

## 📄 نمونه خروجی

```json
{
  "IsSuccess": true,
  "Data":
    [
      {
        "ID": 1,
        "Cisin": "IR1234567890",
        "BaseInstrumentCIsin": "IR0987654321",
        "Quantity": 100,
        "MaxClientOP": "50",
        "MaxActClientOP": "45",
        "MaxBrokerOP": "200",
        "MaxMarketOP": "500",
        "BeginDate": "20250101",
        "EndDate": "20251230",
        "PhysicalSettlementDate": "20251231",
        "PrioritizationstlmntDate": "20251229",
        "CashStlmntDate": "20260102",
        "IMAValue": 1500000.00,
        "RMBValue": 750000.00,
        "CRound_Value": 0.05,
        "DExtraMargin": 200000.00,
        "MaintananceMarginPercent": 0.25,
        "PartialStlmntIsAllowded": 1,
        "Month": 9,
        "Year": 2025,
        "SettlementTypeID": 2,
        "SettlemnetTypeName": "نقدی",
        "AppropiationID": 3,
        "AppropriationName": "اختصاصی",
        "BaseAssetPriceDeterminationID": 4,
        "PenaltyRatio": 0.10,
        "BaseAssetPriceName": "قیمت دارایی پایه بورس",
        "PhysicalFeeRatio": 0.02,
        "CashFeeRatio": 0.015,
        "TaxRatio": 0.09,
        "MOP": 1
      }
    ],
  "Msg": null
}
```

---

## ✍️ نکات تکمیلی
- حتماً باید در هدر درخواست، **توکن JWT معتبر** ارسال شود.

---