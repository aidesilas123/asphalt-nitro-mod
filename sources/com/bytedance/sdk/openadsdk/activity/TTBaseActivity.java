package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Build;
import com.bytedance.sdk.component.utils.l;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class TTBaseActivity extends Activity {
    @Override // android.app.Activity
    protected void onResume() {
        int i = Build.VERSION.SDK_INT;
        if (i > 28 || i < 24) {
            super.onResume();
            return;
        }
        try {
            super.onResume();
        } catch (IllegalArgumentException e2) {
            l.c("TTBaseActivity", "super.onResume() run fail", e2);
            try {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.set(this, Boolean.TRUE);
            } catch (Exception e3) {
                l.c("TTBaseActivity", "onResume set mCalled fail", e3);
            }
        }
    }
}
