package com.nearme.game.sdk.component.proxy;

import android.app.Activity;
import android.content.Intent;
import com.nearme.plugin.framework.LogUtils;

/* JADX INFO: loaded from: classes4.dex */
public class ExitActivity extends Activity {
    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LogUtils.log("ExitActivity", "onDestroy.");
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (!isFinishing()) {
            finish();
            LogUtils.log("ExitActivity", "onNewIntent:finish.");
        }
        System.exit(0);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (!isFinishing()) {
            finish();
            LogUtils.log("ExitActivity", "onResume:finish.");
        }
        System.exit(0);
    }
}
