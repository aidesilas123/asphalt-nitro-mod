package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: ExecutionList.java */
/* JADX INFO: loaded from: classes3.dex */
public final class v {
    private static final Logger a = Logger.getLogger(v.class.getName());
    private a b;
    private boolean c;

    /* JADX INFO: compiled from: ExecutionList.java */
    private static final class a {
        final Runnable a;
        final Executor b;
        a c;

        a(Runnable runnable, Executor executor, a aVar) {
            this.a = runnable;
            this.b = executor;
            this.c = aVar;
        }
    }

    private static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e2) {
            Logger logger = a;
            Level level = Level.SEVERE;
            String strValueOf = String.valueOf(runnable);
            String strValueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 57 + strValueOf2.length());
            sb.append("RuntimeException while executing runnable ");
            sb.append(strValueOf);
            sb.append(" with executor ");
            sb.append(strValueOf2);
            logger.log(level, sb.toString(), (Throwable) e2);
        }
    }

    public void a(Runnable runnable, Executor executor) {
        Preconditions.checkNotNull(runnable, "Runnable was null.");
        Preconditions.checkNotNull(executor, "Executor was null.");
        synchronized (this) {
            if (this.c) {
                c(runnable, executor);
            } else {
                this.b = new a(runnable, executor, this.b);
            }
        }
    }

    public void b() {
        synchronized (this) {
            if (this.c) {
                return;
            }
            this.c = true;
            a aVar = this.b;
            a aVar2 = null;
            this.b = null;
            while (aVar != null) {
                a aVar3 = aVar.c;
                aVar.c = aVar2;
                aVar2 = aVar;
                aVar = aVar3;
            }
            while (aVar2 != null) {
                c(aVar2.a, aVar2.b);
                aVar2 = aVar2.c;
            }
        }
    }
}
