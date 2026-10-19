package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.ViewConfigurationCompat;

/* JADX INFO: loaded from: classes2.dex */
public class LowProfileListener {
    private static View.OnSystemUiVisibilityChangeListener a = null;
    private static String b = "";

    class a implements Runnable {
        final /* synthetic */ Activity a;

        a(Activity activity) {
            this.a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            LowProfileListener.MakeImmersive(this.a);
        }
    }

    class b implements View.OnSystemUiVisibilityChangeListener {
        final /* synthetic */ Activity a;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (Build.VERSION.SDK_INT >= 19) {
                    LowProfileListener.MakeImmersive(b.this.a);
                } else {
                    b.this.a.getWindow().getDecorView().setSystemUiVisibility(0);
                    b.this.a.getWindow().getDecorView().setSystemUiVisibility(1);
                }
            }
        }

        b(Activity activity) {
            this.a = activity;
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            if (i == 0) {
                new Handler().postDelayed(new a(), 500L);
            }
        }
    }

    public static void ActivateImmersiveMode(Activity activity) {
        if (ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(activity.getApplicationContext()))) {
            return;
        }
        if (Build.VERSION.SDK_INT < 19) {
            activity.getWindow().getDecorView().setSystemUiVisibility(0);
            activity.getWindow().getDecorView().setSystemUiVisibility(1);
            RegisterSystemUIListener(activity);
        } else {
            MakeImmersive(activity);
            RegisterSystemUIListener(activity);
            new Handler().postDelayed(new a(activity), 500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void MakeImmersive(Activity activity) {
        activity.getWindow().getDecorView().setSystemUiVisibility(5894);
    }

    private static void RegisterSystemUIListener(Activity activity) {
        if (a == null || !b.equals(activity.getClass().getSimpleName())) {
            b = activity.getClass().getSimpleName();
            a = new b(activity);
        }
        activity.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(a);
    }

    public static void VisibleImmersive(Activity activity) {
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                activity.getWindow().getDecorView().setOnSystemUiVisibilityChangeListener(null);
                activity.getWindow().getDecorView().setSystemUiVisibility(0);
            } catch (Exception unused) {
            }
        }
    }

    public static void inVisibleImmersive(Activity activity) {
        try {
            activity.getWindow().getDecorView().setSystemUiVisibility(5894);
        } catch (Exception unused) {
        }
    }

    public static void onKeyDown(Activity activity, int i) {
        if (ViewConfigurationCompat.hasPermanentMenuKey(ViewConfiguration.get(activity.getApplicationContext()))) {
            return;
        }
        if (i == 25 || i == 24) {
            ActivateImmersiveMode(activity);
        }
    }
}
