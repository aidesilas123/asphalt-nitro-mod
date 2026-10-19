package com.json;

import android.app.Activity;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class h implements ed {
    private WeakReference<Activity> a;

    public h(Activity activity) {
        this.a = new WeakReference<>(activity);
    }

    @Override // com.json.ed
    public void a() {
        Activity activity = this.a.get();
        if (activity != null) {
            activity.requestWindowFeature(1);
        }
    }
}
