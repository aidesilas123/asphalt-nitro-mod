package com.bytedance.sdk.component.g;

import android.os.SystemClock;
import com.bytedance.sdk.component.utils.l;

/* JADX INFO: compiled from: DelegateRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
class b implements Comparable, Runnable {
    private h a;
    private a b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread f1071d = null;

    public b(h hVar, a aVar) {
        this.a = null;
        this.b = null;
        this.c = 0L;
        this.a = hVar;
        this.b = aVar;
        this.c = SystemClock.uptimeMillis();
    }

    private void a(String str, String str2, long j) {
        l.e("DelegateRunnable", "pool is " + str + "  name is " + str2 + "is timeout,cost " + j);
    }

    public h a() {
        return this.a;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        if (obj instanceof b) {
            return this.a.compareTo(((b) obj).a());
        }
        return 0;
    }

    public boolean equals(Object obj) {
        h hVar;
        return (obj instanceof b) && (hVar = this.a) != null && hVar.equals(((b) obj).a());
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.g.b.run():void");
    }
}
