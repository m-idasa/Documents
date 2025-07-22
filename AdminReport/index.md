---
title: گزارش های مدیریتی
layout: default
parent: مستندات سرویس‌ها
---

<style>
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
  }
  
  /* Style the buttons inside the tab */
  .tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
  }
  
  /* Change background color of buttons on hover */
  .tab button:hover {
    background-color: #ddd;
  }
  
  /* Create an active/current tablink class */
  .tab button.active {
    background-color: #ccc;
  }
  
  /* Style the tab content */
  .tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
  }  
</style>

# گزارش های مدیریتی

## GET /api/admin (Admin)

## POST /api/admin/total (Admin)

### پارامترهای ورودی:

| نام متغیر | نوع | الزامی |
|-----------|------|--------|
| from | string | خیر |
| to | string | خیر |
| services | array | بله |
| clients | array | بله |
| timePeriod | integer | خیر |

### درخواست نمونه:

```json
{
  "from": "value",
  "to": "value",
  "services": [
    "value"
  ],
  "clients": [
    "value"
  ],
  "timePeriod": "value"
}
```
### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/totalperhour (Admin)

## POST /api/admin/circle (Admin)

### پارامترهای ورودی:

| نام متغیر | نوع | الزامی |
|-----------|------|--------|
| from | string | خیر |
| to | string | خیر |
| services | array | بله |
| clients | array | بله |
| timePeriod | integer | خیر |

### درخواست نمونه:

```json
{
  "from": "value",
  "to": "value",
  "services": [
    "value"
  ],
  "clients": [
    "value"
  ],
  "timePeriod": "value"
}
```

### پاسخ نمونه:

```json
"OK"
```

## POST /api/admin/line (Admin)

### پارامترهای ورودی:

| نام متغیر | نوع | الزامی |
|-----------|------|--------|
| from | string | خیر |
| to | string | خیر |
| services | array | بله |
| clients | array | بله |
| timePeriod | integer | خیر |

### درخواست نمونه:

```json
{
  "from": "value",
  "to": "value",
  "services": [
    "value"
  ],
  "clients": [
    "value"
  ],
  "timePeriod": "value"
}
```

### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/clients (Admin)

### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/services (Admin)

### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/dailylogin (Admin)

### پاسخ نمونه:

```json
{
  "service": "value",
  "client": "value",
  "data": [
    "value"
  ]
}
```

## GET /api/admin/logedinusers (Admin)

### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/notlogedinusers (Admin)

### پاسخ نمونه:

```json
"OK"
```

## GET /api/admin/sendmessage (Admin)

### پاسخ نمونه:

```json
"OK"
```


<h2>Tabs</h2>
<p>Click on the buttons inside the tabbed menu:</p>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">London</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">Paris</button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">Tokyo</button>
</div>

<div id="London" class="tabcontent">
  <h3>London</h3>
  <p>London is the capital city of England.</p>
</div>

<div id="Paris" class="tabcontent">
  <h3>Paris</h3>
  <p>Paris is the capital of France.</p> 
</div>

<div id="Tokyo" class="tabcontent">
  <h3>Tokyo</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>