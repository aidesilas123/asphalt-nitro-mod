package com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.os.Build;
import com.gameloft.android.ANMP.GloftAGHM.PushNotification.RemoteImageManager;
import com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;

/* JADX INFO: compiled from: PushBuilderV26.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends PushBuilder {
    public d(Context context) {
        super(context);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushBuilder
    public Notification a() {
        Notification.Builder builder = new Notification.Builder(this.a, this.p);
        builder.setContentTitle(this.c).setContentText(this.b).setSmallIcon(R.drawable.pn_status_icon).setWhen(this.f2796g).setContentIntent(this.f2793d).setTicker(this.c).setAutoCancel(this.h).setChannelId(this.p).setNumber(this.q).setStyle(new Notification.BigTextStyle().bigText(this.b));
        if (Build.VERSION.SDK_INT > 25) {
            builder.setChannelId("GL_Channel");
        }
        if (!SimplifiedAndroidUtils.f2851f || SimplifiedAndroidUtils.i == null || RemoteImageManager.GetAsset() == null) {
            String[] strArr = this.j;
            if (strArr != null && strArr.length > 1) {
                Notification.InboxStyle inboxStyle = new Notification.InboxStyle();
                inboxStyle.setBigContentTitle(this.c);
                for (int length = this.j.length - 1; length >= 0; length--) {
                    inboxStyle.addLine(this.j[length]);
                }
                builder.setStyle(inboxStyle);
            }
        } else {
            Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle();
            bigPictureStyle.setBigContentTitle(this.c);
            bigPictureStyle.setSummaryText(this.b);
            bigPictureStyle.bigPicture(RemoteImageManager.GetAsset());
            builder.setStyle(bigPictureStyle);
        }
        if (!this.o) {
            builder.setDefaults(-1);
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
        return builder.build();
    }
}
