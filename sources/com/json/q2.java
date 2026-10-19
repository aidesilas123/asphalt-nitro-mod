package com.json;

import android.app.Activity;
import android.content.MutableContextWrapper;

/* JADX INFO: loaded from: classes2.dex */
public class q2 {
    MutableContextWrapper a;

    public Activity a() {
        return (Activity) this.a.getBaseContext();
    }

    public synchronized void a(Activity activity) {
        if (this.a == null) {
            this.a = new MutableContextWrapper(activity);
        }
        this.a.setBaseContext(activity);
    }

    public synchronized void b() {
        this.a = null;
    }
}
