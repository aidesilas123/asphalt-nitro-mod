package com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.gameloft.android.ANMP.GloftAGHM.PushNotification.DontDisturbPolicy;
import com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;

/* JADX INFO: compiled from: PushBuilderV11.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends PushBuilder {
    public b(Context context) {
        super(context);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushBuilder
    public Notification a() {
        Notification.Builder builder = new Notification.Builder(this.a);
        builder.setContentTitle(this.c).setContentText(this.b).setSmallIcon(R.drawable.pn_status_icon).setWhen(this.f2796g).setContentIntent(this.f2793d).setTicker(this.c).setAutoCancel(this.h);
        if (!DontDisturbPolicy.isDontDisturbeTime(this.a)) {
            if (SimplifiedAndroidUtils.f2850e && SimplifiedAndroidUtils.h != null) {
                try {
                    if (this.a.getResources().getIdentifier(SimplifiedAndroidUtils.h, "raw", this.a.getPackageName()) > 0) {
                        builder.setSound(Uri.parse("android.resource://" + this.a.getPackageName() + "/raw/" + SimplifiedAndroidUtils.h));
                        builder.setDefaults(6);
                    } else {
                        builder.setDefaults(-1);
                    }
                } catch (Exception e2) {
                    builder.setDefaults(-1);
                    e2.printStackTrace();
                }
            } else if (!this.o) {
                builder.setDefaults(-1);
            }
        }
        builder.setLargeIcon(BitmapFactory.decodeResource(this.a.getResources(), PushTheme.getIcon()));
        int i = this.i;
        if (i > 1) {
            builder.setNumber(i);
        }
        PendingIntent pendingIntent = this.f2794e;
        if (pendingIntent != null) {
            builder.setDeleteIntent(pendingIntent);
        }
        if (this.n) {
            builder.setProgress(this.k, this.l, this.m);
        }
        return builder.getNotification();
    }
}
