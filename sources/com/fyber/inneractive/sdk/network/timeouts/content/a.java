package com.fyber.inneractive.sdk.network.timeouts.content;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.global.features.j;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.fyber.inneractive.sdk.network.timeouts.a {
    public final j h;
    public int i;

    public a(String str, String str2, int i, boolean z, String str3, s sVar) {
        j jVar = (j) sVar.a(j.class);
        this.h = jVar;
        this.i = 0;
        a(jVar.e());
        int iA = a(str, z, str3);
        if (iA > i) {
            a(str, str2, str3);
        }
        a(iA, i);
    }

    public int a(int i) {
        if (this.f2129g) {
            i = this.a - i;
        }
        return this.f2126d + (this.b * i) + (i == this.a ? this.i : 0);
    }

    public final int a(String str, boolean z, String str2) {
        return z ? this.h.b(str, str2) : !TextUtils.isEmpty(str2) ? this.h.c(str, str2) : this.h.e(str);
    }

    public final void a(int i, int i2) {
        int i3 = i - (this.f2128f + i2);
        IAlog.a("%s : LoadAdContentTimeout resolveLoadAdTimeout : usedTime: %d, global timeout: %d, timeout: %d", IAlog.a((Class<?>) a.class), Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(i3));
        this.c = Math.max(i3, 0);
        int iA = a();
        this.a = iA;
        if (iA == 0) {
            this.f2126d = this.c;
        }
        IAlog.a("%s : LoadAdContentTimeout onFixedLoadAdTimeoutUpdated : Calculated: %d attempts with LeftoverTime: %d", IAlog.a(this), Integer.valueOf(this.a), Integer.valueOf(this.i));
        int i4 = this.a;
        if (i4 > 0) {
            int i5 = this.c;
            int i6 = this.f2128f;
            int i7 = this.f2127e;
            for (int i8 = 0; i8 <= i4; i8++) {
                i5 -= this.f2126d + (this.b * i8);
            }
            this.i = Math.max(0, i5 - ((i6 * i4) + (i7 * i4)));
        }
    }

    public final void a(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            j jVar = this.h;
            jVar.getClass();
            this.f2127e = jVar.a(j.a(str, str2, "retry_interval"), 100);
            this.f2128f = this.h.d();
            j jVar2 = this.h;
            jVar2.getClass();
            this.f2126d = jVar2.a(j.a(str, str2, "ilat"), jVar2.g(str) ? 20000 : 10000);
            return;
        }
        j jVar3 = this.h;
        jVar3.getClass();
        this.f2127e = jVar3.a(j.a(str, str2, "retry_interval", j.i(str3)), jVar3.a(j.a("retry_interval", "all_mediators"), 100));
        this.f2128f = this.h.f(str3);
        j jVar4 = this.h;
        jVar4.getClass();
        this.f2126d = jVar4.a(j.a(str, str2, "ilat", j.i(str3)), jVar4.a(j.a(str, str2, "ilat", "all_mediators"), jVar4.g(str) ? 20000 : 10000));
    }
}
