package com.pgl.ssdk;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes4.dex */
class k implements Handler.Callback {
    final /* synthetic */ l a;

    k(l lVar) {
        this.a = lVar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (this.a.j >= this.a.i) {
            this.a.k = false;
            this.a.j = 0;
            this.a.l.quit();
            return false;
        }
        if (!this.a.a()) {
            this.a.m.sendEmptyMessageDelayed(1, this.a.h * 1);
            l.b(this.a);
            return false;
        }
        this.a.k = false;
        this.a.j = 0;
        this.a.l.quit();
        return true;
    }
}
