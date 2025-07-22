---
title: گزارش های مدیریتی
layout: default
parent: مستندات سرویس‌ها
---

<style>
.tab-container {
  border-radius: 6px;
  overflow: hidden;
  border: 1px solid #d0cce0;
  font-family: sans-serif;
}

.tab-buttons {
  display: flex;
  background-color: #d6cce9;
}

.tab-buttons button {
  flex: 1;
  background: transparent;
  border: none;
  padding: 8px 12px;
  cursor: pointer;
  font-weight: bold;
  color: #333;
}

.tab-buttons button.active {
  background: #cbb9e5;
}

.tab-content {
  display: none;
  background-color: #eee6fc;
  padding: 12px;
  font-family: monospace;
}

.tab-content pre {
  margin: 0;
}

.tab-content.active {
  display: block;
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

<!-- تب‌ها -->
<div class="tab-container" >

  <button class="active" onclick="switchTab(this, 'json')">JSON</button>
  <button onclick="switchTab(this, 'xml')">XML</button>

  <div id="json" class="tab-content active">
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
function switchTab(button, tabId) {
  document.querySelectorAll('.tab-buttons button').forEach(btn => btn.classList.remove('active'));
  document.querySelectorAll('.tab-content').forEach(tab => tab.classList.remove('active'));

  button.classList.add('active');
  document.getElementById(tabId).classList.add('active');
}
</script>