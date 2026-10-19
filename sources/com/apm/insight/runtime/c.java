package com.apm.insight.runtime;

import androidx.annotation.NonNull;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.IOOMCallback;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private final List<ICrashCallback> a = new CopyOnWriteArrayList();
    private final List<ICrashCallback> b = new CopyOnWriteArrayList();
    private final List<ICrashCallback> c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<ICrashCallback> f310d = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<IOOMCallback> f311e = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: com.apm.insight.runtime.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[CrashType.values().length];
            a = iArr;
            try {
                iArr[CrashType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CrashType.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CrashType.JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CrashType.LAUNCH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[CrashType.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @NonNull
    public List<IOOMCallback> a() {
        return this.f311e;
    }

    void a(ICrashCallback iCrashCallback, CrashType crashType) {
        List<ICrashCallback> list;
        int i = AnonymousClass1.a[crashType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    list = this.b;
                } else if (i == 4) {
                    list = this.a;
                } else if (i != 5) {
                    return;
                } else {
                    list = this.c;
                }
            }
            list.add(iCrashCallback);
        }
        this.a.add(iCrashCallback);
        this.b.add(iCrashCallback);
        this.c.add(iCrashCallback);
        list = this.f310d;
        list.add(iCrashCallback);
    }

    void a(IOOMCallback iOOMCallback) {
        this.f311e.add(iOOMCallback);
    }

    @NonNull
    public List<ICrashCallback> b() {
        return this.a;
    }

    void b(ICrashCallback iCrashCallback, CrashType crashType) {
        List<ICrashCallback> list;
        int i = AnonymousClass1.a[crashType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    list = this.b;
                } else if (i == 4) {
                    list = this.a;
                } else if (i != 5) {
                    return;
                } else {
                    list = this.c;
                }
            }
            list.remove(iCrashCallback);
        }
        this.a.remove(iCrashCallback);
        this.b.remove(iCrashCallback);
        this.c.remove(iCrashCallback);
        list = this.f310d;
        list.remove(iCrashCallback);
    }

    void b(IOOMCallback iOOMCallback) {
        this.f311e.remove(iOOMCallback);
    }

    @NonNull
    public List<ICrashCallback> c() {
        return this.b;
    }

    @NonNull
    public List<ICrashCallback> d() {
        return this.c;
    }

    @NonNull
    public List<ICrashCallback> e() {
        return this.f310d;
    }
}
