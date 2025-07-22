---
title: گزارش های مدیریتی
layout: default
parent: مستندات سرویس‌ها
---

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

<!-- تب‌ها -->
<div class="tab-container">

  <button onclick="showTab('json')">JSON</button>
  <button onclick="showTab('xml')">XML</button>

  <div id="json" class="tab-content">
    <pre><code>{
  "name": "Mahsa",
  "role": "Developer"
}</code></pre>
  </div>

  <div id="xml" class="tab-content" style="display:none;">
    <pre><code>&lt;user&gt;
  &lt;name&gt;Mahsa&lt;/name&gt;
  &lt;role&gt;Developer&lt;/role&gt;
&lt;/user&gt;</code></pre>
  </div>

</div>

<script>
  function showTab(id) {
    document.querySelectorAll('.tab-content').forEach(e => e.style.display = 'none');
    document.getElementById(id).style.display = 'block';
  }
</script>