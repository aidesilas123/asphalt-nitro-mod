package com.bytedance.sdk.component.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: WeakHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class x extends Handler {
    protected WeakReference<a> a;

    /* JADX INFO: compiled from: WeakHandler.java */
    public interface a {
        void a(Message message);
    }

    public x(Looper looper, a aVar) {
        super(looper);
        if (aVar != null) {
            this.a = new WeakReference<>(aVar);
        }
    }

    public x(a aVar) {
        if (aVar != null) {
            this.a = new WeakReference<>(aVar);
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        a aVar;
        WeakReference<a> weakReference = this.a;
        if (weakReference == null || (aVar = weakReference.get()) == null || message == null) {
            return;
        }
        aVar.a(message);
    }
}
