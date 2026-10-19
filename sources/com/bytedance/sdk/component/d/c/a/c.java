package com.bytedance.sdk.component.d.c.a;

import com.json.o2;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Objects;

/* JADX INFO: compiled from: SoftLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class c<K, V> {
    private final LinkedHashMap<K, SoftReference<V>> a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f952d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f953e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f954f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f955g;
    private int h;

    public c(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.c = i;
        this.a = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int c(K k, V v) {
        int iB = b(k, v);
        if (iB >= 0) {
            return iB;
        }
        throw new IllegalStateException("Negative size: " + k + o2.i.b + v);
    }

    public final V a(K k) {
        V v;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            SoftReference<V> softReference = this.a.get(k);
            if (softReference != null) {
                v = softReference.get();
                if (v != null) {
                    this.f955g++;
                    return v;
                }
                this.a.remove(k);
            } else {
                v = null;
            }
            this.h++;
            V vB = b(k);
            if (vB == null) {
                return null;
            }
            synchronized (this) {
                this.f953e++;
                SoftReference<V> softReferencePut = this.a.put(k, new SoftReference<>(vB));
                if (softReferencePut != null) {
                    v = softReferencePut.get();
                }
                if (v != null) {
                    this.a.put(k, softReferencePut);
                } else {
                    this.b += c(k, vB);
                }
            }
            if (v != null) {
                a(false, k, vB, v);
                return v;
            }
            a(this.c);
            return vB;
        }
    }

    public final V a(K k, V v) {
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        V v2 = null;
        synchronized (this) {
            this.f952d++;
            this.b += c(k, v);
            SoftReference<V> softReferencePut = this.a.put(k, new SoftReference<>(v));
            if (softReferencePut != null && (v2 = softReferencePut.get()) != null) {
                this.b -= c(k, v2);
            }
        }
        if (v2 != null) {
            a(false, k, v2, v);
        }
        a(this.c);
        return v2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0058, code lost:
    
        android.util.Log.e("LruCache", "oom maybe occured, clear cache. size= " + r5.b + ", maxSize: " + r6);
        r5.b = 0;
        r5.a.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r6) {
        /*
            r5 = this;
        L0:
            monitor-enter(r5)
            int r0 = r5.b     // Catch: java.lang.Throwable -> L82
            if (r0 < 0) goto L58
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r5.a     // Catch: java.lang.Throwable -> L82
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L12
            int r0 = r5.b     // Catch: java.lang.Throwable -> L82
            if (r0 == 0) goto L12
            goto L58
        L12:
            int r0 = r5.b     // Catch: java.lang.Throwable -> L82
            if (r0 > r6) goto L18
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            goto L81
        L18:
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r0 = r5.a     // Catch: java.lang.Throwable -> L82
            java.util.Set r0 = r0.entrySet()     // Catch: java.lang.Throwable -> L82
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Throwable -> L82
            java.lang.Object r0 = r0.next()     // Catch: java.lang.Throwable -> L82
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0     // Catch: java.lang.Throwable -> L82
            if (r0 != 0) goto L2c
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            goto L81
        L2c:
            java.lang.Object r1 = r0.getKey()     // Catch: java.lang.Throwable -> L82
            java.lang.Object r0 = r0.getValue()     // Catch: java.lang.Throwable -> L82
            java.lang.ref.SoftReference r0 = (java.lang.ref.SoftReference) r0     // Catch: java.lang.Throwable -> L82
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r2 = r5.a     // Catch: java.lang.Throwable -> L82
            r2.remove(r1)     // Catch: java.lang.Throwable -> L82
            r2 = 0
            if (r0 == 0) goto L4c
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> L82
            int r3 = r5.b     // Catch: java.lang.Throwable -> L82
            int r4 = r5.c(r1, r0)     // Catch: java.lang.Throwable -> L82
            int r3 = r3 - r4
            r5.b = r3     // Catch: java.lang.Throwable -> L82
            goto L4d
        L4c:
            r0 = r2
        L4d:
            int r3 = r5.f954f     // Catch: java.lang.Throwable -> L82
            r4 = 1
            int r3 = r3 + r4
            r5.f954f = r3     // Catch: java.lang.Throwable -> L82
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            r5.a(r4, r1, r0, r2)
            goto L0
        L58:
            java.lang.String r0 = "LruCache"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L82
            r1.<init>()     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = "oom maybe occured, clear cache. size= "
            r1.append(r2)     // Catch: java.lang.Throwable -> L82
            int r2 = r5.b     // Catch: java.lang.Throwable -> L82
            r1.append(r2)     // Catch: java.lang.Throwable -> L82
            java.lang.String r2 = ", maxSize: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L82
            r1.append(r6)     // Catch: java.lang.Throwable -> L82
            java.lang.String r6 = r1.toString()     // Catch: java.lang.Throwable -> L82
            android.util.Log.e(r0, r6)     // Catch: java.lang.Throwable -> L82
            r6 = 0
            r5.b = r6     // Catch: java.lang.Throwable -> L82
            java.util.LinkedHashMap<K, java.lang.ref.SoftReference<V>> r6 = r5.a     // Catch: java.lang.Throwable -> L82
            r6.clear()     // Catch: java.lang.Throwable -> L82
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
        L81:
            return
        L82:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L82
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.d.c.a.c.a(int):void");
    }

    protected void a(boolean z, K k, V v, V v2) {
    }

    protected int b(K k, V v) {
        return 1;
    }

    protected V b(K k) {
        return null;
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f955g;
        i2 = this.h + i;
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.c), Integer.valueOf(this.f955g), Integer.valueOf(this.h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
