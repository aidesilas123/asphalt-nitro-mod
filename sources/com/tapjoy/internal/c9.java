package com.tapjoy.internal;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final class c9 {
    public final Context a;
    public CharSequence c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CharSequence f7880d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PendingIntent f7881e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bitmap f7882f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7883g;
    public n9 i;
    public final String j;
    public final Notification k;
    public final ArrayList l;
    public final ArrayList b = new ArrayList();
    public final boolean h = true;

    public c9(Context context, String str) {
        Notification notification = new Notification();
        this.k = notification;
        this.a = context;
        this.j = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f7883g = 0;
        this.l = new ArrayList();
    }

    public final c9 a(s8 s8Var) {
        if (this.i != s8Var) {
            this.i = s8Var;
            if (s8Var.a != this) {
                s8Var.a = this;
                a(s8Var);
            }
        }
        return this;
    }
}
