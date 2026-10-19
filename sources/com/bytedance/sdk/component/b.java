package com.bytedance.sdk.component;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.facebook.internal.security.CertificateUtil;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: TTPropHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private static boolean a;

    @GuardedBy("TTPropHelper.class")
    private static ArrayMap<String, File> k;
    private static ArrayMap<File, b> l;
    private static ExecutorService m;
    private final Object b;
    private final Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("mLoadLock")
    private Properties f887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("mLoadLock")
    private int f889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private long f890g;

    @GuardedBy("mWriteLock")
    private long h;
    private final File i;
    private final File j;

    /* JADX INFO: compiled from: TTPropHelper.java */
    public static class a {
        public static void a(ExecutorService executorService) {
            ExecutorService unused = b.m = executorService;
        }
    }

    /* JADX INFO: renamed from: com.bytedance.sdk.component.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TTPropHelper.java */
    private static class C0110b {
        final long a;
        final Properties b;
        final CountDownLatch c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @GuardedBy("mWritingToDiskLock")
        volatile boolean f891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        boolean f892e;

        private C0110b(long j, Properties properties) {
            this.c = new CountDownLatch(1);
            this.f891d = false;
            this.f892e = false;
            this.a = j;
            this.b = properties;
        }

        void a(boolean z, boolean z2) {
            this.f892e = z;
            this.f891d = z2;
            this.c.countDown();
        }
    }

    /* JADX INFO: compiled from: TTPropHelper.java */
    public class c implements SharedPreferences.Editor {
        private final Object b = new Object();

        @GuardedBy("mEditorLock")
        private final Map<String, Object> c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @GuardedBy("mEditorLock")
        private boolean f893d = false;

        public c() {
        }

        private C0110b b() {
            Properties properties;
            long j;
            Object obj;
            boolean z;
            synchronized (b.this.b) {
                if (b.this.f889f > 0) {
                    Properties properties2 = new Properties();
                    properties2.putAll(b.this.f887d);
                    b.this.f887d = properties2;
                }
                properties = b.this.f887d;
                b.e(b.this);
                synchronized (this.b) {
                    boolean z2 = false;
                    if (this.f893d) {
                        if (properties.isEmpty()) {
                            z = false;
                        } else {
                            properties.clear();
                            z = true;
                        }
                        this.f893d = false;
                        z2 = z;
                    }
                    for (Map.Entry<String, Object> entry : this.c.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value == this || value == null) {
                            if (properties.containsKey(key)) {
                                properties.remove(key);
                                z2 = true;
                            }
                        } else if (!properties.containsKey(key) || (obj = properties.get(key)) == null || !obj.equals(String.valueOf(value))) {
                            properties.put(key, String.valueOf(value));
                            z2 = true;
                        }
                    }
                    this.c.clear();
                    if (z2) {
                        b.f(b.this);
                    }
                    j = b.this.f890g;
                }
            }
            return new C0110b(j, properties);
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c clear() {
            synchronized (this.b) {
                this.f893d = true;
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c remove(String str) {
            synchronized (this.b) {
                this.c.put(str, this);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c putFloat(String str, float f2) {
            synchronized (this.b) {
                this.c.put(str, Float.valueOf(f2));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c putInt(String str, int i) {
            synchronized (this.b) {
                this.c.put(str, Integer.valueOf(i));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c putLong(String str, long j) {
            synchronized (this.b) {
                this.c.put(str, Long.valueOf(j));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c putString(String str, @Nullable String str2) {
            synchronized (this.b) {
                this.c.put(str, str2);
            }
            return this;
        }

        public c a(String str, @Nullable Set<String> set) {
            synchronized (this.b) {
                this.c.put(str, set == null ? null : new HashSet(set));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public c putBoolean(String str, boolean z) {
            synchronized (this.b) {
                this.c.put(str, Boolean.valueOf(z));
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            b.this.a(b(), false);
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            long jCurrentTimeMillis = b.a ? System.currentTimeMillis() : 0L;
            C0110b c0110bB = b();
            b.this.a(c0110bB, true);
            try {
                c0110bB.c.await();
                if (b.a) {
                    Log.d("TTPropHelper", b.this.i.getName() + CertificateUtil.DELIMITER + c0110bB.a + " committed after " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                }
                return c0110bB.f891d;
            } catch (InterruptedException unused) {
                if (b.a) {
                    Log.d("TTPropHelper", b.this.i.getName() + CertificateUtil.DELIMITER + c0110bB.a + " committed after " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                }
                return false;
            } catch (Throwable th) {
                if (b.a) {
                    Log.d("TTPropHelper", b.this.i.getName() + CertificateUtil.DELIMITER + c0110bB.a + " committed after " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                }
                throw th;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public /* synthetic */ SharedPreferences.Editor putStringSet(String str, @Nullable Set set) {
            return a(str, (Set<String>) set);
        }
    }

    private b(File file) {
        Object obj = new Object();
        this.b = obj;
        this.c = new Object();
        this.f887d = new Properties();
        this.f888e = false;
        this.f889f = 0;
        this.i = file;
        this.j = a(file);
        synchronized (obj) {
            this.f888e = false;
        }
        ExecutorService executorService = m;
        if (executorService == null) {
            new Thread("TTPropHelper") { // from class: com.bytedance.sdk.component.b.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    b.this.a();
                }
            }.start();
        } else {
            executorService.execute(new Runnable() { // from class: com.bytedance.sdk.component.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.a();
                }
            });
        }
    }

    @RequiresApi(api = 19)
    public static b a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = "tt_prop";
        }
        synchronized (b.class) {
            if (k == null) {
                k = new ArrayMap<>();
            }
            File file = k.get(str);
            if (file == null) {
                file = new File(context.getFilesDir(), str);
                k.put(str, file);
            }
            if (l == null) {
                l = new ArrayMap<>();
            }
            b bVar = l.get(file);
            if (bVar != null) {
                return bVar;
            }
            b bVar2 = new b(file);
            l.put(file, bVar2);
            return bVar2;
        }
    }

    static File a(File file) {
        return new File(file.getPath() + ".bak");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final C0110b c0110b, final boolean z) {
        boolean z2;
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.b.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (b.this.c) {
                    try {
                        b.this.b(c0110b, z);
                    } catch (OutOfMemoryError unused) {
                    }
                }
                synchronized (b.this.b) {
                    b.i(b.this);
                }
            }
        };
        if (z) {
            synchronized (this.b) {
                z2 = this.f889f == 1;
            }
            if (z2) {
                runnable.run();
                return;
            }
        }
        com.bytedance.sdk.component.c.a(runnable, true ^ z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:118:0x011a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012c A[Catch: all -> 0x01a2, TryCatch #1 {all -> 0x01a2, blocks: (B:39:0x0093, B:40:0x0095, B:76:0x0128, B:78:0x012c, B:80:0x0133, B:82:0x013c, B:84:0x0144, B:86:0x0150, B:97:0x01a1, B:75:0x0127, B:55:0x00f1, B:56:0x00f7, B:74:0x0120, B:94:0x019e, B:93:0x0195, B:51:0x00eb), top: B:108:0x0093, inners: #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013c A[Catch: all -> 0x01a2, TryCatch #1 {all -> 0x01a2, blocks: (B:39:0x0093, B:40:0x0095, B:76:0x0128, B:78:0x012c, B:80:0x0133, B:82:0x013c, B:84:0x0144, B:86:0x0150, B:97:0x01a1, B:75:0x0127, B:55:0x00f1, B:56:0x00f7, B:74:0x0120, B:94:0x019e, B:93:0x0195, B:51:0x00eb), top: B:108:0x0093, inners: #9, #10 }] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0150 A[Catch: all -> 0x01a2, TRY_LEAVE, TryCatch #1 {all -> 0x01a2, blocks: (B:39:0x0093, B:40:0x0095, B:76:0x0128, B:78:0x012c, B:80:0x0133, B:82:0x013c, B:84:0x0144, B:86:0x0150, B:97:0x01a1, B:75:0x0127, B:55:0x00f1, B:56:0x00f7, B:74:0x0120, B:94:0x019e, B:93:0x0195, B:51:0x00eb), top: B:108:0x0093, inners: #9, #10 }] */
    @androidx.annotation.GuardedBy("mWriteLock")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(com.bytedance.sdk.component.b.C0110b r18, boolean r19) {
        /*
            Method dump skipped, instruction units count: 472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.b.b(com.bytedance.sdk.component.b$b, boolean):void");
    }

    private void d() {
        while (!this.f888e) {
            try {
                this.b.wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    static /* synthetic */ int e(b bVar) {
        int i = bVar.f889f;
        bVar.f889f = i + 1;
        return i;
    }

    static /* synthetic */ long f(b bVar) {
        long j = bVar.f890g;
        bVar.f890g = 1 + j;
        return j;
    }

    static /* synthetic */ int i(b bVar) {
        int i = bVar.f889f;
        bVar.f889f = i - 1;
        return i;
    }

    public float a(String str, float f2) {
        float f3;
        if (TextUtils.isEmpty(str)) {
            return f2;
        }
        synchronized (this.b) {
            try {
                try {
                    d();
                    f3 = Float.parseFloat(this.f887d.getProperty(str, String.valueOf(f2)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return f2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f3;
    }

    public int a(String str, int i) {
        int i2;
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        synchronized (this.b) {
            try {
                try {
                    d();
                    i2 = Integer.parseInt(this.f887d.getProperty(str, String.valueOf(i)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    public long a(String str, long j) {
        long j2;
        if (TextUtils.isEmpty(str)) {
            return j;
        }
        synchronized (this.b) {
            try {
                try {
                    d();
                    j2 = Long.parseLong(this.f887d.getProperty(str, String.valueOf(j)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return j;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return j2;
    }

    public String a(String str, String str2) {
        String property;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        synchronized (this.b) {
            d();
            property = this.f887d.getProperty(str, str2);
        }
        return property;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00d3  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b3 -> B:62:0x00bc). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a() {
        /*
            Method dump skipped, instruction units count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.b.a():void");
    }

    public boolean a(String str) {
        boolean zContainsKey;
        synchronized (this.b) {
            try {
                try {
                    d();
                    zContainsKey = this.f887d.containsKey(str);
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zContainsKey;
    }

    public boolean a(String str, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str)) {
            return z;
        }
        synchronized (this.b) {
            try {
                try {
                    d();
                    z2 = Boolean.parseBoolean(this.f887d.getProperty(str, String.valueOf(z)));
                } catch (NumberFormatException e2) {
                    Log.e("TTPropHelper", e2.getMessage());
                    return z;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z2;
    }

    public c b() {
        return new c();
    }
}
