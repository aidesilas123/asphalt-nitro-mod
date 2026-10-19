package com.bytedance.sdk.openadsdk.component.h;

import com.bytedance.sdk.component.utils.l;
import com.json.o2;

/* JADX INFO: compiled from: OpenAdDisplayStat.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private float a;
    private long b;

    public float a() {
        return this.a;
    }

    public void a(float f2) {
        l.a("OpenAdDisplayStat", "open_ad", "setTotalTime() called with: time = [" + f2 + o2.i.f6491e);
        this.a = f2;
    }

    public void a(long j) {
        this.b = j;
    }

    public long b() {
        return this.b;
    }
}
