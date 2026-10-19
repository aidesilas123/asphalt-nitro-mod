package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: SnackbarManager.java */
/* JADX INFO: loaded from: classes3.dex */
class b {
    private static b a;

    @NonNull
    private final Object b = new Object();

    @NonNull
    private final Handler c = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private c f3421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private c f3422e;

    /* JADX INFO: compiled from: SnackbarManager.java */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            if (message.what != 0) {
                return false;
            }
            b.this.d((c) message.obj);
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.snackbar.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SnackbarManager.java */
    interface InterfaceC0236b {
        void a(int i);

        void show();
    }

    /* JADX INFO: compiled from: SnackbarManager.java */
    private static class c {

        @NonNull
        final WeakReference<InterfaceC0236b> a;
        int b;
        boolean c;

        boolean a(@Nullable InterfaceC0236b interfaceC0236b) {
            return interfaceC0236b != null && this.a.get() == interfaceC0236b;
        }
    }

    private b() {
    }

    private boolean a(@NonNull c cVar, int i) {
        InterfaceC0236b interfaceC0236b = cVar.a.get();
        if (interfaceC0236b == null) {
            return false;
        }
        this.c.removeCallbacksAndMessages(cVar);
        interfaceC0236b.a(i);
        return true;
    }

    static b c() {
        if (a == null) {
            a = new b();
        }
        return a;
    }

    private boolean f(InterfaceC0236b interfaceC0236b) {
        c cVar = this.f3421d;
        return cVar != null && cVar.a(interfaceC0236b);
    }

    private boolean g(InterfaceC0236b interfaceC0236b) {
        c cVar = this.f3422e;
        return cVar != null && cVar.a(interfaceC0236b);
    }

    private void l(@NonNull c cVar) {
        int i = cVar.b;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        this.c.removeCallbacksAndMessages(cVar);
        Handler handler = this.c;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i);
    }

    private void m() {
        c cVar = this.f3422e;
        if (cVar != null) {
            this.f3421d = cVar;
            this.f3422e = null;
            InterfaceC0236b interfaceC0236b = cVar.a.get();
            if (interfaceC0236b != null) {
                interfaceC0236b.show();
            } else {
                this.f3421d = null;
            }
        }
    }

    public void b(InterfaceC0236b interfaceC0236b, int i) {
        synchronized (this.b) {
            if (f(interfaceC0236b)) {
                a(this.f3421d, i);
            } else if (g(interfaceC0236b)) {
                a(this.f3422e, i);
            }
        }
    }

    void d(@NonNull c cVar) {
        synchronized (this.b) {
            if (this.f3421d == cVar || this.f3422e == cVar) {
                a(cVar, 2);
            }
        }
    }

    public boolean e(InterfaceC0236b interfaceC0236b) {
        boolean z;
        synchronized (this.b) {
            z = f(interfaceC0236b) || g(interfaceC0236b);
        }
        return z;
    }

    public void h(InterfaceC0236b interfaceC0236b) {
        synchronized (this.b) {
            if (f(interfaceC0236b)) {
                this.f3421d = null;
                if (this.f3422e != null) {
                    m();
                }
            }
        }
    }

    public void i(InterfaceC0236b interfaceC0236b) {
        synchronized (this.b) {
            if (f(interfaceC0236b)) {
                l(this.f3421d);
            }
        }
    }

    public void j(InterfaceC0236b interfaceC0236b) {
        synchronized (this.b) {
            if (f(interfaceC0236b)) {
                c cVar = this.f3421d;
                if (!cVar.c) {
                    cVar.c = true;
                    this.c.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public void k(InterfaceC0236b interfaceC0236b) {
        synchronized (this.b) {
            if (f(interfaceC0236b)) {
                c cVar = this.f3421d;
                if (cVar.c) {
                    cVar.c = false;
                    l(cVar);
                }
            }
        }
    }
}
