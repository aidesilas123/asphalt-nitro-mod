package com.mbridge.msdk.foundation.tools;

import com.mbridge.msdk.MBridgeConstans;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: LimitExecutor.java */
/* JADX INFO: loaded from: classes4.dex */
public final class p implements Executor {
    private Runnable a;
    private Runnable b;

    private Runnable a(final Runnable runnable) {
        return new Runnable() { // from class: com.mbridge.msdk.foundation.tools.p.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    try {
                        runnable.run();
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("LimitExecutor", e2.getMessage());
                        }
                    }
                } finally {
                    p.this.a();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a() {
        Runnable runnable = this.b;
        this.a = runnable;
        this.b = null;
        if (runnable != null) {
            n.a().execute(this.a);
        }
    }

    @Override // java.util.concurrent.Executor
    public final synchronized void execute(Runnable runnable) {
        if (this.a == null) {
            this.a = a(runnable);
            n.a().execute(this.a);
        } else if (this.b == null) {
            this.b = a(runnable);
        }
    }
}
