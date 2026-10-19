package com.bytedance.sdk.component.g.a;

import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.x;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: HandlerWapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends x implements c {
    private final HandlerThread b;

    b(HandlerThread handlerThread, x.a aVar) {
        super(handlerThread.getLooper(), aVar);
        this.b = handlerThread;
    }

    @Override // com.bytedance.sdk.component.g.a.c
    public void a() {
        removeCallbacksAndMessages(null);
        WeakReference<x.a> weakReference = this.a;
        if (weakReference != null) {
            weakReference.clear();
            this.a = null;
        }
    }

    public void a(x.a aVar) {
        this.a = new WeakReference<>(aVar);
    }

    public void b() {
        HandlerThread handlerThread = this.b;
        if (handlerThread != null) {
            handlerThread.quit();
        }
    }
}
