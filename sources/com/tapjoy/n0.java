package com.tapjoy;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes4.dex */
public final class n0 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ k b;

    public n0(k kVar, String str) {
        this.b = kVar;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k kVar = this.b;
        if (kVar.f8032d == null) {
            String str = this.a;
            if (str != null) {
                kVar.j(str, Boolean.FALSE);
                return;
            }
            return;
        }
        String str2 = this.a;
        if (str2 != null) {
            kVar.j(str2, Boolean.TRUE);
        }
        k kVar2 = this.b;
        String str3 = kVar2.k;
        if (str3 != null) {
            kVar2.j(str3, Boolean.TRUE);
            this.b.k = null;
        }
        ((ViewGroup) this.b.f8032d.getParent()).removeView(this.b.f8032d);
        this.b.f8032d = null;
    }
}
