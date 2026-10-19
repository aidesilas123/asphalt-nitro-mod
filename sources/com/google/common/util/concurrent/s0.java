package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.json.o2;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: TimeoutFuture.java */
/* JADX INFO: loaded from: classes3.dex */
final class s0<V> extends FluentFuture.a<V> {
    private h0<V> h;
    private ScheduledFuture<?> i;

    /* JADX INFO: compiled from: TimeoutFuture.java */
    private static final class b<V> implements Runnable {
        s0<V> a;

        b(s0<V> s0Var) {
            this.a = s0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0<? extends V> h0Var;
            s0<V> s0Var = this.a;
            if (s0Var == null || (h0Var = ((s0) s0Var).h) == null) {
                return;
            }
            this.a = null;
            if (h0Var.isDone()) {
                s0Var.D(h0Var);
                return;
            }
            try {
                ScheduledFuture scheduledFuture = ((s0) s0Var).i;
                ((s0) s0Var).i = null;
                String string = "Timed out";
                if (scheduledFuture != null) {
                    try {
                        long jAbs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (jAbs > 10) {
                            StringBuilder sb = new StringBuilder("Timed out".length() + 66);
                            sb.append("Timed out");
                            sb.append(" (timeout delayed by ");
                            sb.append(jAbs);
                            sb.append(" ms after scheduled time)");
                            string = sb.toString();
                        }
                    } catch (Throwable th) {
                        s0Var.C(new c(string));
                        throw th;
                    }
                }
                String strValueOf = String.valueOf(string);
                String strValueOf2 = String.valueOf(h0Var);
                StringBuilder sb2 = new StringBuilder(strValueOf.length() + 2 + strValueOf2.length());
                sb2.append(strValueOf);
                sb2.append(": ");
                sb2.append(strValueOf2);
                s0Var.C(new c(sb2.toString()));
            } finally {
                h0Var.cancel(true);
            }
        }
    }

    /* JADX INFO: compiled from: TimeoutFuture.java */
    private static final class c extends TimeoutException {
        private c(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public synchronized Throwable fillInStackTrace() {
            setStackTrace(new StackTraceElement[0]);
            return this;
        }
    }

    private s0(h0<V> h0Var) {
        this.h = (h0) Preconditions.checkNotNull(h0Var);
    }

    static <V> h0<V> I(h0<V> h0Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        s0 s0Var = new s0(h0Var);
        b bVar = new b(s0Var);
        s0Var.i = scheduledExecutorService.schedule(bVar, j, timeUnit);
        h0Var.addListener(bVar, MoreExecutors.directExecutor());
        return s0Var;
    }

    @Override // com.google.common.util.concurrent.m
    protected void m() {
        x(this.h);
        ScheduledFuture<?> scheduledFuture = this.i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.h = null;
        this.i = null;
    }

    @Override // com.google.common.util.concurrent.m
    protected String y() {
        h0<V> h0Var = this.h;
        ScheduledFuture<?> scheduledFuture = this.i;
        if (h0Var == null) {
            return null;
        }
        String strValueOf = String.valueOf(h0Var);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 14);
        sb.append("inputFuture=[");
        sb.append(strValueOf);
        sb.append(o2.i.f6491e);
        String string = sb.toString();
        if (scheduledFuture == null) {
            return string;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return string;
        }
        String strValueOf2 = String.valueOf(string);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 43);
        sb2.append(strValueOf2);
        sb2.append(", remaining delay=[");
        sb2.append(delay);
        sb2.append(" ms]");
        return sb2.toString();
    }
}
