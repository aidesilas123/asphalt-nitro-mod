package com.pgl.ssdk;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes4.dex */
public class x {
    private BlockingQueue a = new LinkedBlockingQueue();

    private x(int i) {
    }

    public static x a(int i) {
        return new x(i);
    }

    public w a() {
        return (w) this.a.poll();
    }
}
