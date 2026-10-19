package com.tapjoy.internal;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tapjoy.TJContentActivity;
import java.io.IOException;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class k5 implements DialogInterface.OnDismissListener {
    public final /* synthetic */ Activity a;
    public final /* synthetic */ g2 b;
    public final /* synthetic */ i6 c;

    public k5(i6 i6Var, Activity activity, g2 g2Var) {
        this.c = i6Var;
        this.a = activity;
        this.b = g2Var;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        LinkedHashMap linkedHashMap;
        String string;
        w1 w1Var;
        i6.f7913d = null;
        Activity activity = this.a;
        String str = this.c.f7916g.f8006g;
        if (!TextUtils.isEmpty(str)) {
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (Exception unused) {
            }
        }
        i6 i6Var = this.c;
        v1 v1Var = i6Var.f7914e;
        LinkedHashMap linkedHashMap2 = i6Var.f7916g.k;
        SystemClock.elapsedRealtime();
        long j = this.c.j;
        i5 i5Var = v1Var.i;
        i5Var.getClass();
        d4 d4VarA = i5Var.a(r1.CAMPAIGN, "view");
        if (linkedHashMap2 != null) {
            StringWriter stringWriter = new StringWriter();
            h1 h1Var = new h1(stringWriter);
            try {
                h1Var.a(linkedHashMap2);
                try {
                    h1Var.a.flush();
                    stringWriter.toString();
                } catch (IOException e2) {
                    s9.a(e2);
                    throw null;
                }
            } catch (IOException e3) {
                s9.a(e3);
                throw null;
            }
        }
        i5Var.b(d4VarA);
        i6 i6Var2 = this.c;
        if (!i6Var2.a) {
            this.b.a(i6Var2.f7915f, i6Var2.c, i6Var2.f7916g.h);
        }
        i6 i6Var3 = this.c;
        if (i6Var3.l && (linkedHashMap = i6Var3.f7916g.k) != null && linkedHashMap.containsKey("action_id") && (string = this.c.f7916g.k.get("action_id").toString()) != null && string.length() > 0 && (w1Var = this.c.f7914e.f8016e) != null) {
            String str2 = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault()).format(new Date());
            String strC = w1Var.b.c();
            String strC2 = w1Var.a.c();
            if (strC2 == null || !str2.equals(strC2)) {
                w1Var.a.b(str2);
                strC = "";
            }
            if (!(strC.length() == 0)) {
                string = !strC.contains(string) ? strC.concat(",".concat(string)) : strC;
            }
            w1Var.b.b(string);
        }
        Activity activity2 = this.a;
        if (activity2 instanceof TJContentActivity) {
            activity2.finish();
        }
    }
}
