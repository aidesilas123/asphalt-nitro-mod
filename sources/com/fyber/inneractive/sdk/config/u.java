package com.fyber.inneractive.sdk.config;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.l;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class u implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ v b;

    public u(Context context, v vVar) {
        this.a = context;
        this.b = vVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (InneractiveAdManager.isCurrentUserAChild()) {
            return;
        }
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            w.a(this.a, this.b);
            if (TextUtils.isEmpty(l.a())) {
                Context context = this.a;
                v vVar = this.b;
                String string = null;
                try {
                    ContentResolver contentResolver = context.getContentResolver();
                    z = Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0;
                    string = Settings.Secure.getString(contentResolver, "advertising_id");
                } catch (Settings.SettingNotFoundException unused) {
                }
                if (string != null) {
                    l lVar = (l) vVar;
                    synchronized (lVar) {
                        l.c cVar = lVar.b;
                        cVar.a = string;
                        cVar.b = z;
                        cVar.c = true;
                    }
                }
            }
        } catch (ClassNotFoundException e2) {
            IAlog.b("SDK internal error: Make sure that Google Play Services for Mobile Ads is added to the compile dependencies of your project" + e2.toString(), new Object[0]);
        }
    }
}
