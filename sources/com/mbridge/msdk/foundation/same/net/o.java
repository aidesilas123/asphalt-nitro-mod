package com.mbridge.msdk.foundation.same.net;

import android.content.Context;

/* JADX INFO: compiled from: VolleyManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static o f7168d;
    private k a;
    private k b;
    private com.mbridge.msdk.foundation.same.net.e.b c;

    private o() {
    }

    public static com.mbridge.msdk.foundation.same.net.e.b a() {
        o oVar = f7168d;
        if (oVar != null) {
            com.mbridge.msdk.foundation.same.net.e.b bVar = oVar.c;
            if (bVar != null) {
                return bVar;
            }
            oVar.c = new com.mbridge.msdk.foundation.same.net.e.b(b(), 3);
            return f7168d.c;
        }
        o oVar2 = new o();
        f7168d = oVar2;
        if (oVar2.c == null) {
            oVar2.c = new com.mbridge.msdk.foundation.same.net.e.b(b(), 3);
        }
        return f7168d.c;
    }

    public static void a(Context context) {
        if (f7168d == null) {
            o oVar = new o();
            f7168d = oVar;
            oVar.a = new k(context.getApplicationContext());
            f7168d.c = new com.mbridge.msdk.foundation.same.net.e.b(b(), 3);
        }
    }

    public static void a(j jVar) {
        o oVar = f7168d;
        if (oVar == null) {
            o oVar2 = new o();
            f7168d = oVar2;
            if (oVar2.b == null) {
                oVar2.b = new k(com.mbridge.msdk.foundation.controller.b.d().g(), null);
            }
        } else if (oVar.b == null) {
            oVar.b = new k(com.mbridge.msdk.foundation.controller.b.d().g(), null);
        }
        f7168d.b.a(jVar);
    }

    private static k b() {
        o oVar = f7168d;
        if (oVar != null) {
            k kVar = oVar.a;
            if (kVar != null) {
                return kVar;
            }
            oVar.a = new k(com.mbridge.msdk.foundation.controller.b.d().g());
            return f7168d.a;
        }
        o oVar2 = new o();
        f7168d = oVar2;
        if (oVar2.a == null) {
            oVar2.a = new k(com.mbridge.msdk.foundation.controller.b.d().g());
        }
        return f7168d.a;
    }

    public static void b(j jVar) {
        b().a(jVar);
    }
}
