package com.bytedance.sdk.component.g.a;

import com.bytedance.sdk.component.g.a.c;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: RecyclePool.java */
/* JADX INFO: loaded from: classes2.dex */
public class d<T extends c> {
    private int a;
    private BlockingQueue<T> b = new LinkedBlockingQueue();

    private d(int i) {
        this.a = i;
    }

    public static d a(int i) {
        return new d(i);
    }

    public T a() {
        return this.b.poll();
    }

    public boolean a(T t) {
        if (t == null) {
            return false;
        }
        t.a();
        if (this.b.size() >= this.a) {
            return false;
        }
        return this.b.offer(t);
    }
}
