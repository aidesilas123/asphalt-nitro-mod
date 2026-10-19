package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.app.IntentService;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class LaunchPushService extends IntentService {
    public LaunchPushService() {
        super("hello");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        SimplifiedAndroidUtils.LaunchAppFromPN(this, intent);
    }
}
