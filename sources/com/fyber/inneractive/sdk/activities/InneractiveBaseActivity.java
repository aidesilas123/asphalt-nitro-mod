package com.fyber.inneractive.sdk.activities;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.window.OnBackInvokedCallback;
import androidx.annotation.Nullable;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveBaseActivity extends Activity {

    @Nullable
    public OnBackInvokedCallback a;

    @Override // android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            this.a = new b(this);
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, this.a);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (Build.VERSION.SDK_INT >= 33) {
            try {
                if (this.a != null) {
                    getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(this.a);
                    this.a = null;
                }
            } catch (Exception e2) {
                IAlog.e("failed to unregisterOnBackInvokedCallback with error: %s", e2.getMessage());
            }
        }
    }
}
