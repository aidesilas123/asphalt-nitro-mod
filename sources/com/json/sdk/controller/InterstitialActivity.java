package com.json.sdk.controller;

import android.os.Bundle;
import com.json.o2;
import com.json.sdk.utils.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class InterstitialActivity extends ControllerActivity {
    private static final String q = "InterstitialActivity";

    @Override // com.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Logger.i(q, "onCreate");
    }

    @Override // com.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        Logger.i(q, o2.h.t0);
    }

    @Override // com.json.sdk.controller.ControllerActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.i(q, o2.h.u0);
    }
}
