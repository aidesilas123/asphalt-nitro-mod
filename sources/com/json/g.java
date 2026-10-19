package com.json;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class g implements ed {
    private WeakReference<Activity> a;

    public g(Activity activity) {
        this.a = new WeakReference<>(activity);
    }

    @Override // com.json.ed
    public void a() {
        Activity activity = this.a.get();
        if (activity == null) {
            return;
        }
        int i = Build.VERSION.SDK_INT;
        Window window = activity.getWindow();
        if (i < 30) {
            window.setFlags(1024, 1024);
            return;
        }
        WindowInsetsController windowInsetsController = window.getDecorView().getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsets.Type.statusBars());
        }
    }
}
