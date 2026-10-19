package com.apm.insight.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.runtime.p;

/* JADX INFO: loaded from: classes.dex */
public class a implements ICrashCallback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f187d;
    private volatile String a;
    private volatile b b;
    private volatile c c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f188e = false;

    private a() {
    }

    public static a a() {
        if (f187d == null) {
            synchronized (a.class) {
                if (f187d == null) {
                    f187d = new a();
                }
            }
        }
        return f187d;
    }

    public void a(CrashType crashType, long j, String str) {
    }

    public void a(String str) {
    }

    public void a(String str, b bVar, c cVar) {
        this.a = str;
        this.b = bVar;
        this.c = cVar;
        if (this.f188e) {
            return;
        }
        this.f188e = true;
        p.b().a(new Runnable() { // from class: com.apm.insight.a.a.1
            @Override // java.lang.Runnable
            public void run() {
            }
        });
    }

    public void b() {
    }

    @Override // com.apm.insight.ICrashCallback
    public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
        crashType.equals(CrashType.NATIVE);
    }
}
