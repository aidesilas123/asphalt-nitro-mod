package com.pgl.ssdk;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes4.dex */
class z implements Handler.Callback {
    final /* synthetic */ A a;

    z(A a) {
        this.a = a;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        r rVarB;
        A a = this.a;
        if (a.b >= a.a) {
            A a2 = this.a;
            a2.b = 0;
            a2.quit();
            y.a = 500;
            return false;
        }
        byte[] bArrA = null;
        try {
            bArrA = E.a(this.a.f7702e, this.a.f7703f);
        } catch (Throwable unused) {
        }
        if (bArrA != null && (rVarB = u.a().b()) != null) {
            rVarB.post(new C(bArrA, this.a.f7701d, this.a));
            return true;
        }
        this.a.f7704g.sendEmptyMessageDelayed(1, r6.c * 1);
        this.a.b++;
        return false;
    }
}
