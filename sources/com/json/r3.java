package com.json;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class r3 extends Handler {
    fa a;

    public r3(Looper looper) {
        super(looper);
    }

    public void a() {
        this.a = null;
    }

    public void a(fa faVar) {
        if (faVar == null) {
            throw new IllegalArgumentException();
        }
        this.a = faVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        fa faVar = this.a;
        if (faVar == null) {
            Logger.i("DownloadHandler", "OnPreCacheCompletion listener is null, msg: " + message.toString());
            return;
        }
        try {
            int i = message.what;
            if (i == 1016) {
                faVar.a((q6) message.obj);
            } else {
                this.a.a((q6) message.obj, new i6(i, zc.a(i)));
            }
        } catch (Throwable th) {
            Logger.i("DownloadHandler", "handleMessage | Got exception: " + th.getMessage());
            th.printStackTrace();
        }
    }
}
