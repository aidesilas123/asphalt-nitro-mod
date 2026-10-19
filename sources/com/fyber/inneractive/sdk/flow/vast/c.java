package com.fyber.inneractive.sdk.flow.vast;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.network.s;

/* JADX INFO: loaded from: classes2.dex */
public class c extends e {
    public boolean h;
    public boolean i;

    public c(com.fyber.inneractive.sdk.player.controller.c cVar) {
        super(cVar);
        this.h = false;
        this.i = false;
    }

    public void a(s.a aVar) {
        String str = this.f2033e;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        aVar.a("version", str);
    }
}
