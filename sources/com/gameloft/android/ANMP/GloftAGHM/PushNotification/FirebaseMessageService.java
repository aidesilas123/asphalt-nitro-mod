package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class FirebaseMessageService extends FirebaseMessagingService {
    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void q(RemoteMessage remoteMessage) {
        if (remoteMessage.getData().size() > 0) {
            Context applicationContext = SUtils.getApplicationContext() != null ? SUtils.getApplicationContext() : this;
            if (Prefs.isEnabled(applicationContext)) {
                Bundle bundle = new Bundle();
                for (Map.Entry<String, String> entry : remoteMessage.getData().entrySet()) {
                    try {
                        bundle.putString(entry.getKey(), entry.getValue());
                    } catch (Exception unused) {
                    }
                }
                JSONObject jSONObject = new JSONObject();
                if (bundle.isEmpty()) {
                    return;
                }
                String string = bundle.getString("subject");
                String string2 = bundle.getString("reply_to");
                String string3 = bundle.getString("title");
                String string4 = bundle.getString("type");
                String string5 = bundle.getString("body");
                String string6 = bundle.getString("url");
                if (string != null && string.length() != 0) {
                    string3 = string;
                } else if (string3 == null || string3.length() <= 0) {
                    string = applicationContext.getString(R.string.app_name);
                    string3 = string;
                }
                if (string4 == null || string4.length() == 0) {
                    string4 = "info";
                }
                if (string5 == null || SimplifiedAndroidUtils.isTypeBlock(string4)) {
                    return;
                }
                if (string4.equals("play") && string2 != null) {
                    bundle.putString("friend_id", string2);
                }
                if (bundle.containsKey("customIcon")) {
                    SimplifiedAndroidUtils.f2849d = true;
                    SimplifiedAndroidUtils.f2852g = bundle.getString("customIcon");
                } else {
                    SimplifiedAndroidUtils.f2849d = false;
                    SimplifiedAndroidUtils.f2852g = null;
                }
                if (bundle.containsKey("image")) {
                    SimplifiedAndroidUtils.f2851f = true;
                    SimplifiedAndroidUtils.i = bundle.getString("image");
                    if (!RemoteImageManager.GetLocalAsset(applicationContext)) {
                        PNImageHelper.loadMap(applicationContext);
                        PNImageHelper.checkAndRemoveExpiredResouce(applicationContext);
                        PNImageHelper.checkAndRemoveIfReachLimitedResourceAmount(applicationContext);
                        PNImageHelper.saveMap(applicationContext);
                        RemoteImageManager.GetRemoteAsset(applicationContext);
                    }
                } else {
                    SimplifiedAndroidUtils.f2851f = false;
                    SimplifiedAndroidUtils.i = null;
                }
                if (bundle.containsKey("sound")) {
                    SimplifiedAndroidUtils.f2850e = true;
                    SimplifiedAndroidUtils.h = bundle.getString("sound");
                } else {
                    SimplifiedAndroidUtils.f2850e = false;
                    SimplifiedAndroidUtils.h = null;
                }
                SimplifiedAndroidUtils.generateNotification(applicationContext, string5, string3, string4, SimplifiedAndroidUtils.getLaunchIntent(applicationContext, string5, string4, string6, bundle), bundle);
                try {
                    Intent intent = new Intent("com.gameloft.android.ANMP.GloftAGHM_pushbroadcast");
                    intent.putExtra("get_broadcast_push", jSONObject.toString());
                    applicationContext.sendBroadcast(intent);
                } catch (Exception unused2) {
                }
            }
        }
    }
}
