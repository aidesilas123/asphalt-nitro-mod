package com.json;

import android.app.Activity;
import android.content.Context;
import com.json.h6;
import com.json.sdk.controller.t;

/* JADX INFO: loaded from: classes2.dex */
public class g1 {
    public static g1 a;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[h6.a.values().length];
            a = iArr;
            try {
                iArr[h6.a.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[h6.a.Device.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[h6.a.Controller.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static g1 a() {
        g1 g1Var = a;
        return g1Var == null ? new g1() : g1Var;
    }

    public boolean a(Activity activity) {
        if (a.a[g8.e().b().ordinal()] != 3) {
            return false;
        }
        try {
            t tVar = (t) u7.b((Context) activity).a().j();
            if (tVar == null) {
                return true;
            }
            tVar.k("back");
            return true;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }
}
