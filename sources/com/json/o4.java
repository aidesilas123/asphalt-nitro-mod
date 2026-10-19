package com.json;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class o4 extends Handler {
    private final ConcurrentHashMap<String, fa> a;

    public o4(Looper looper) {
        super(looper);
        this.a = new ConcurrentHashMap<>();
    }

    private boolean b(int i) {
        return i == 1016 || i == 1015;
    }

    void a(String str, fa faVar) {
        if (str == null || faVar == null) {
            return;
        }
        this.a.put(str, faVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            q6 q6Var = (q6) message.obj;
            String path = q6Var.getPath();
            fa faVar = this.a.get(path);
            if (faVar == null) {
                return;
            }
            if (b(message.what)) {
                faVar.a(q6Var);
            } else {
                int i = message.what;
                faVar.a(q6Var, new i6(i, zc.a(i)));
            }
            this.a.remove(path);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
