package com.gameloft.android2d.iap.utils;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class IABAsyncTask {
    private boolean a;
    private Context b = null;

    class a implements Runnable {
        final /* synthetic */ Integer a;

        a(Integer num) {
            this.a = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (IABAsyncTask.this.a) {
                    IABAsyncTask.this.d();
                } else {
                    IABAsyncTask.this.e(this.a);
                }
            } catch (Exception unused) {
            }
        }
    }

    class b implements Runnable {
        final /* synthetic */ Bundle a;

        b(Bundle bundle) {
            this.a = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            IABAsyncTask.this.c(Integer.valueOf(IABAsyncTask.this.a(this.a).intValue()));
        }
    }

    public IABAsyncTask() {
        this.a = false;
        this.a = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Integer num) {
        Context context = this.b;
        if (context == null) {
            return;
        }
        ((Activity) context).runOnUiThread(new a(num));
    }

    protected abstract Integer a(Bundle bundle);

    public final void b(Bundle bundle, Context context) {
        this.b = context;
        f();
        new Thread(new b(bundle)).start();
    }

    protected void d() {
    }

    protected void e(Integer num) {
    }

    protected void f() {
    }
}
