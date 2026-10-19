package com.tapjoy.internal;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationCompatExtras;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class b5 {
    public final Notification.Builder a;
    public final c9 b;
    public final ArrayList c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f7865d = new Bundle();

    public b5(c9 c9Var) {
        ArrayList arrayList;
        this.b = c9Var;
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            this.a = new Notification.Builder(c9Var.a, c9Var.j);
        } else {
            this.a = new Notification.Builder(c9Var.a);
        }
        Notification notification = c9Var.k;
        this.a.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, null).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(c9Var.c).setContentText(c9Var.f7880d).setContentInfo(null).setContentIntent(c9Var.f7881e).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(null, (notification.flags & 128) != 0).setLargeIcon(c9Var.f7882f).setNumber(0).setProgress(0, 0, false);
        if (i < 21) {
            this.a.setSound(notification.sound, notification.audioStreamType);
        }
        if (i >= 16) {
            this.a.setSubText(null).setUsesChronometer(false).setPriority(c9Var.f7883g);
            Iterator it = c9Var.b.iterator();
            while (it.hasNext()) {
                g6.a(it.next());
                a();
            }
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 19) {
            this.a.setShowWhen(c9Var.h);
            if (i2 < 21 && (arrayList = c9Var.l) != null && !arrayList.isEmpty()) {
                Bundle bundle = this.f7865d;
                ArrayList arrayList2 = c9Var.l;
                bundle.putStringArray(NotificationCompat.EXTRA_PEOPLE, (String[]) arrayList2.toArray(new String[arrayList2.size()]));
            }
        }
        if (i2 >= 20) {
            this.a.setLocalOnly(false).setGroup(null).setGroupSummary(false).setSortKey(null);
        }
        if (i2 >= 21) {
            this.a.setCategory(null).setColor(0).setVisibility(0).setPublicVersion(null).setSound(notification.sound, notification.audioAttributes);
            Iterator it2 = c9Var.l.iterator();
            while (it2.hasNext()) {
                this.a.addPerson((String) it2.next());
            }
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 24) {
            this.a.setExtras(null).setRemoteInputHistory(null);
        }
        if (i3 >= 26) {
            this.a.setBadgeIconType(0).setShortcutId(null).setTimeoutAfter(0L).setGroupAlertBehavior(0);
            if (TextUtils.isEmpty(c9Var.j)) {
                return;
            }
            this.a.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
        }
    }

    public static void a() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 20) {
            throw null;
        }
        if (i < 16) {
            return;
        }
        Object obj = a0.a;
        throw null;
    }

    public final Notification b() {
        Notification notification;
        n9 n9Var = this.b.i;
        if (n9Var != null) {
            s8 s8Var = (s8) n9Var;
            if (Build.VERSION.SDK_INT >= 16) {
                new Notification.BigTextStyle(this.a).setBigContentTitle(s8Var.b).bigText(s8Var.c);
            }
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26 || i >= 24) {
            notification = this.a.build();
        } else if (i < 21 && i < 20) {
            int i2 = 0;
            SparseArray<? extends Parcelable> sparseArray = null;
            if (i >= 19) {
                ArrayList arrayList = this.c;
                Object obj = a0.a;
                int size = arrayList.size();
                while (i2 < size) {
                    Bundle bundle = (Bundle) arrayList.get(i2);
                    if (bundle != null) {
                        if (sparseArray == null) {
                            sparseArray = new SparseArray<>();
                        }
                        sparseArray.put(i2, bundle);
                    }
                    i2++;
                }
                if (sparseArray != null) {
                    this.f7865d.putSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS, sparseArray);
                }
                this.a.setExtras(this.f7865d);
                notification = this.a.build();
            } else if (i >= 16) {
                notification = this.a.build();
                Bundle bundleA = a5.a(notification);
                Bundle bundle2 = new Bundle(this.f7865d);
                for (String str : this.f7865d.keySet()) {
                    if (bundleA.containsKey(str)) {
                        bundle2.remove(str);
                    }
                }
                bundleA.putAll(bundle2);
                ArrayList arrayList2 = this.c;
                Object obj2 = a0.a;
                int size2 = arrayList2.size();
                while (i2 < size2) {
                    Bundle bundle3 = (Bundle) arrayList2.get(i2);
                    if (bundle3 != null) {
                        if (sparseArray == null) {
                            sparseArray = new SparseArray<>();
                        }
                        sparseArray.put(i2, bundle3);
                    }
                    i2++;
                }
                if (sparseArray != null) {
                    a5.a(notification).putSparseParcelableArray(NotificationCompatExtras.EXTRA_ACTION_EXTRAS, sparseArray);
                }
            } else {
                notification = this.a.getNotification();
            }
        } else {
            this.a.setExtras(this.f7865d);
            notification = this.a.build();
        }
        this.b.getClass();
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21 && n9Var != null) {
            this.b.i.getClass();
        }
        if (i3 >= 16 && n9Var != null) {
            a5.a(notification);
        }
        return notification;
    }
}
