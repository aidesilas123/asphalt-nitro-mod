package com.tapjoy.internal;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class q6 implements View.OnClickListener {
    public final /* synthetic */ o7 a;
    public final /* synthetic */ RelativeLayout b;
    public final /* synthetic */ o7 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ u0 f7967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b7 f7968e;

    public q6(b7 b7Var, o7 o7Var, RelativeLayout relativeLayout, o7 o7Var2, u0 u0Var) {
        this.f7968e = b7Var;
        this.a = o7Var;
        this.b = relativeLayout;
        this.c = o7Var2;
        this.f7967d = u0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        o7 o7Var = this.a;
        if (o7Var != null) {
            o7Var.b();
            this.b.removeView(this.a);
        }
        o7 o7Var2 = this.c;
        if (o7Var2 != null) {
            o7Var2.b();
            this.b.removeView(this.c);
        }
        w7 w7Var = this.f7968e.b;
        u0 u0Var = this.f7967d;
        w7Var.getClass();
        if (!TextUtils.isEmpty(u0Var.i)) {
            w7Var.c.b.a(w7Var.a, u0Var.i, r9.a(u0Var.j));
            w7Var.c.a = true;
        } else if (!TextUtils.isEmpty(u0Var.h)) {
            Activity activity = w7Var.a;
            String str = u0Var.h;
            if (!TextUtils.isEmpty(str)) {
                try {
                    activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                } catch (Exception unused) {
                }
            }
        }
        w7Var.b.a(w7Var.c.f7963f, null);
        if (u0Var.k) {
            w7Var.c.e();
        }
    }
}
