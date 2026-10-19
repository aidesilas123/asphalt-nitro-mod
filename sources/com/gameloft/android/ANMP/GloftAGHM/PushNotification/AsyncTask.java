package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AsyncTask {
    private boolean a;

    class a implements Runnable {
        final /* synthetic */ Integer a;

        a(Integer num) {
            this.a = num;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AsyncTask.this.a) {
                    AsyncTask.this.b();
                } else {
                    AsyncTask.this.c(this.a);
                }
            } catch (Exception unused) {
            }
        }
    }

    public AsyncTask() {
        this.a = false;
        this.a = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Integer num) {
        SUtils.runOnUiThread(new a(num));
    }

    protected void b() {
    }

    protected void c(Integer num) {
    }
}
