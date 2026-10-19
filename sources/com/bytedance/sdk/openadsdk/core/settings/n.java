package com.bytedance.sdk.openadsdk.core.settings;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.settings.d;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: SettingsPropRepository.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n implements d {
    private final ConcurrentHashMap<String, Object> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f1686d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f1687e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CountDownLatch f1688f = new CountDownLatch(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Properties f1689g = new Properties();
    private volatile boolean h = false;
    private final String i;

    /* JADX INFO: compiled from: SettingsPropRepository.java */
    public class a implements d.a {
        private final Map<String, Object> b = new HashMap();
        private final Object c = new Object();

        public a() {
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str) {
            synchronized (this.c) {
                this.b.put(str, this);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str, float f2) {
            synchronized (this.c) {
                this.b.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str, int i) {
            synchronized (this.c) {
                this.b.put(str, Integer.valueOf(i));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str, long j) {
            synchronized (this.c) {
                this.b.put(str, Long.valueOf(j));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str, String str2) {
            synchronized (this.c) {
                this.b.put(str, str2);
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public d.a a(String str, boolean z) {
            synchronized (this.c) {
                this.b.put(str, Boolean.valueOf(z));
            }
            return this;
        }

        @Override // com.bytedance.sdk.openadsdk.core.settings.d.a
        public void a() {
            Object obj;
            boolean z = false;
            com.bytedance.sdk.component.utils.l.a("SdkSettings.Prop", "commit: ", this.b);
            Properties properties = new Properties();
            synchronized (this.c) {
                properties.putAll(n.this.f1689g);
                for (Map.Entry<String, Object> entry : this.b.entrySet()) {
                    String key = entry.getKey();
                    Object value = entry.getValue();
                    if (value == this || value == null) {
                        if (properties.containsKey(key)) {
                            properties.remove(key);
                            z = true;
                        }
                    } else if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(value)) {
                        properties.put(key, String.valueOf(value));
                        z = true;
                    }
                }
                this.b.clear();
                if (z) {
                    n.this.a(properties);
                    n.this.f1689g = properties;
                    n.this.c.clear();
                }
            }
        }
    }

    public n(String str) {
        this.i = str;
        aa.a(new com.bytedance.sdk.component.g.h("SetL_" + str) { // from class: com.bytedance.sdk.openadsdk.core.settings.n.1
            @Override // java.lang.Runnable
            public void run() {
                n.this.a(false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    public void a(Properties properties) {
        FileOutputStream fileOutputStream;
        synchronized (this.f1687e) {
            File fileE = e();
            ?? r2 = 0;
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new FileOutputStream(fileE);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception e2) {
                e = e2;
            }
            try {
                properties.store(fileOutputStream, (String) null);
                Object[] objArr = {"saveToLocal: save to", fileE.getAbsolutePath(), "success"};
                com.bytedance.sdk.component.utils.l.a("SdkSettings.Prop", objArr);
                com.bytedance.sdk.openadsdk.utils.h.a(fileOutputStream);
                r2 = objArr;
            } catch (Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "saveToLocal: ", e);
                r2 = fileOutputStream2;
                if (fileOutputStream2 != null) {
                    com.bytedance.sdk.openadsdk.utils.h.a(fileOutputStream2);
                    r2 = fileOutputStream2;
                }
            } catch (Throwable th2) {
                th = th2;
                r2 = fileOutputStream;
                if (r2 != 0) {
                    com.bytedance.sdk.openadsdk.utils.h.a(r2);
                }
                throw th;
            }
        }
        o.ai();
    }

    private void d() {
        while (!this.h) {
            try {
                this.f1688f.await();
            } catch (InterruptedException e2) {
                com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "awaitLoadedLocked: ", e2);
            }
        }
    }

    private File e() {
        return new File(com.bytedance.sdk.openadsdk.core.o.a().getFilesDir(), this.i);
    }

    public float a(String str, float f2) {
        if (TextUtils.isEmpty(str)) {
            return f2;
        }
        d();
        try {
            return Float.parseFloat(this.f1689g.getProperty(str, String.valueOf(f2)));
        } catch (NumberFormatException e2) {
            com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "", e2);
            return f2;
        }
    }

    public int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        d();
        try {
            return Integer.parseInt(this.f1689g.getProperty(str, String.valueOf(i)));
        } catch (NumberFormatException e2) {
            com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "", e2);
            return i;
        }
    }

    public long a(String str, long j) {
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        d();
        try {
            return Long.parseLong(this.f1689g.getProperty(str, String.valueOf(j)));
        } catch (NumberFormatException e2) {
            com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "", e2);
            return j;
        }
    }

    public d.a a() {
        d();
        return new a();
    }

    public <T> T a(String str, T t, d.b<T> bVar) {
        T tB;
        if (TextUtils.isEmpty(str)) {
            return t;
        }
        if (this.c.containsKey(str)) {
            try {
                return (T) this.c.get(str);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "", e2);
                return t;
            }
        }
        d();
        String property = this.f1689g.getProperty(str, null);
        if (property == null || bVar == null || (tB = bVar.b(property)) == null) {
            return t;
        }
        this.c.put(str, tB);
        return tB;
    }

    public String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        d();
        return this.f1689g.getProperty(str, str2);
    }

    public void a(boolean z) {
        Object obj;
        synchronized (this.f1686d) {
            if (this.h && !z) {
                com.bytedance.sdk.component.utils.l.b("SdkSettings.Prop", "reload: already loaded, ignore");
                return;
            }
            File fileE = e();
            boolean z2 = false;
            if (!fileE.exists()) {
                if (q.a(com.bytedance.sdk.openadsdk.core.o.a()) && "tt_sdk_settings.prop".equals(this.i)) {
                    try {
                        SharedPreferences sharedPreferences = com.bytedance.sdk.openadsdk.core.o.a().getSharedPreferences("tt_sdk_settings", 0);
                        if (!sharedPreferences.getAll().isEmpty()) {
                            d.a aVarA = a();
                            for (Map.Entry<String, ?> entry : sharedPreferences.getAll().entrySet()) {
                                String key = entry.getKey();
                                Object value = entry.getValue();
                                if (!TextUtils.isEmpty(key) && value != null) {
                                    aVarA.a(key, value.toString());
                                    z2 = true;
                                }
                            }
                            if (z2) {
                                aVarA.a();
                            }
                            sharedPreferences.edit().clear().commit();
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                this.h = true;
                this.f1688f.countDown();
            }
            Properties properties = new Properties();
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(fileE);
                    try {
                        properties.load(fileInputStream2);
                        com.bytedance.sdk.component.utils.l.a("SdkSettings.Prop", "reload: find", Integer.valueOf(properties.size()), "items from " + fileE.getAbsolutePath());
                        if (!properties.isEmpty()) {
                            this.f1689g = properties;
                            this.c.clear();
                        }
                        com.bytedance.sdk.openadsdk.utils.h.a(fileInputStream2);
                        obj = this.f1686d;
                    } catch (OutOfMemoryError unused) {
                        fileInputStream = fileInputStream2;
                        try {
                            com.bytedance.sdk.component.utils.f.c(fileE);
                        } catch (Throwable th) {
                            com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "delete: ", th);
                        }
                        if (fileInputStream != null) {
                            com.bytedance.sdk.openadsdk.utils.h.a(fileInputStream);
                        }
                        obj = this.f1686d;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileInputStream2;
                        com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "reload: ", th);
                        if (fileInputStream != null) {
                            com.bytedance.sdk.openadsdk.utils.h.a(fileInputStream);
                        }
                        obj = this.f1686d;
                    }
                } catch (Throwable th3) {
                    if (fileInputStream != null) {
                        com.bytedance.sdk.openadsdk.utils.h.a(fileInputStream);
                    }
                    this.f1686d.notifyAll();
                    throw th3;
                }
            } catch (OutOfMemoryError unused2) {
            } catch (Throwable th4) {
                th = th4;
            }
            obj.notifyAll();
            this.h = true;
            this.f1688f.countDown();
        }
    }

    public boolean a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        d();
        try {
            return Boolean.parseBoolean(this.f1689g.getProperty(str, String.valueOf(z)));
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.c("SdkSettings.Prop", "", e2);
            return z;
        }
    }

    public boolean b() {
        return this.h;
    }

    public void c() {
        File fileE = e();
        if (fileE.exists()) {
            fileE.delete();
        }
    }
}
