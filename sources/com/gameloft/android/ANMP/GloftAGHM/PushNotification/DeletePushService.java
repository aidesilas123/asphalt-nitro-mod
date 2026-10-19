package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.app.IntentService;
import android.content.Intent;

/* JADX INFO: loaded from: classes2.dex */
public class DeletePushService extends IntentService {
    public DeletePushService() {
        super("hello");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        SimplifiedAndroidUtils.LaunchPNClearStack(this, intent);
    }
}
