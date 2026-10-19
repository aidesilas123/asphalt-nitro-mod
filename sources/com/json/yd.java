package com.json;

import android.os.Handler;
import android.os.Message;
import com.json.sdk.utils.IronSourceStorageUtils;

/* JADX INFO: loaded from: classes2.dex */
class yd implements Runnable {
    private final Handler a;
    private final vd b;

    yd(vd vdVar, Handler handler) {
        this.b = vdVar;
        this.a = handler;
    }

    Message a() {
        return new Message();
    }

    wd b(vd vdVar, String str, long j) {
        return new wd(vdVar, str, j);
    }

    String c(String str) {
        return IronSourceStorageUtils.makeDir(str);
    }

    @Override // java.lang.Runnable
    public void run() {
        int iB;
        q6 q6Var = new q6(this.b.b().getParent(), this.b.b().getName());
        Message messageA = a();
        messageA.obj = q6Var;
        String strC = c(q6Var.getParent());
        if (strC == null) {
            iB = 1020;
        } else {
            q3 q3VarCall = b(new vd(q6Var, this.b.e(), this.b.a(), this.b.c(), this.b.d()), strC, 3L).call();
            iB = q3VarCall.b() == 200 ? 1016 : q3VarCall.b();
        }
        messageA.what = iB;
        this.a.sendMessage(messageA);
    }
}
