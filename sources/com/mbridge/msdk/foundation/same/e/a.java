package com.mbridge.msdk.foundation.same.e;

/* JADX INFO: compiled from: CommonTask.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements Runnable {
    public static long b;
    public b c = b.READY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InterfaceC0404a f7122d;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.e.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CommonTask.java */
    public interface InterfaceC0404a {
        void a(b bVar);
    }

    /* JADX INFO: compiled from: CommonTask.java */
    public enum b {
        READY,
        RUNNING,
        PAUSE,
        CANCEL,
        FINISH
    }

    public a() {
        b++;
    }

    private void a(b bVar) {
        this.c = bVar;
        InterfaceC0404a interfaceC0404a = this.f7122d;
        if (interfaceC0404a != null) {
            interfaceC0404a.a(bVar);
        }
    }

    public abstract void a();

    public abstract void b();

    public final void d() {
        b bVar = this.c;
        b bVar2 = b.CANCEL;
        if (bVar != bVar2) {
            a(bVar2);
            b();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.c == b.READY) {
                a(b.RUNNING);
                a();
                a(b.FINISH);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
