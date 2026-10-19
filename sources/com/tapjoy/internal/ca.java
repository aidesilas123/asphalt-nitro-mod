package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.IOException;
import java.io.StringWriter;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ca {
    public static final ca a = new ca();
    public final t6 b = new t6();
    public Context c;

    public static t6 a() {
        return a.b;
    }

    public final synchronized void b(Context context) {
        if (context != null) {
            if (this.c == null) {
                this.c = context;
                SharedPreferences sharedPreferences = context.getSharedPreferences("tjcPrefrences", 0);
                String string = this.c.getSharedPreferences("tjcPrefrences", 0).getString(com.json.mediationsdk.d.j, null);
                if (string != null) {
                    try {
                        k0 k0VarA = b4.a(string);
                        try {
                            LinkedHashMap linkedHashMapM = k0VarA.m();
                            k0VarA.close();
                            t6 t6Var = this.b;
                            t6Var.getClass();
                            Map map = (Map) linkedHashMapM.get("final");
                            Map map2 = (Map) linkedHashMapM.get("default");
                            t6Var.c.a = map;
                            t6Var.f8009f.a = map2;
                            t6Var.setChanged();
                        } catch (Throwable th) {
                            k0VarA.close();
                            throw th;
                        }
                    } catch (Exception unused) {
                        sharedPreferences.edit().remove(com.json.mediationsdk.d.j).apply();
                    }
                }
            }
        }
    }

    public final void c(Object obj) {
        Map map;
        Map map2;
        if (!(obj instanceof Map)) {
            if (obj == null) {
                t6 t6Var = this.b;
                t6Var.c.a = null;
                t6Var.f8009f.a = null;
                t6Var.setChanged();
                this.c.getSharedPreferences("tjcPrefrences", 0).edit().remove(com.json.mediationsdk.d.j).apply();
                return;
            }
            return;
        }
        try {
            t6 t6Var2 = this.b;
            Map map3 = (Map) obj;
            if (map3 != null) {
                t6Var2.getClass();
                map2 = (Map) map3.get("final");
                map = (Map) map3.get("default");
            } else {
                map = null;
                map2 = null;
            }
            t6Var2.c.a = map2;
            t6Var2.f8009f.a = map;
            t6Var2.setChanged();
            StringWriter stringWriter = new StringWriter();
            h1 h1Var = new h1(stringWriter);
            try {
                h1Var.a(obj);
                try {
                    h1Var.a.flush();
                    this.c.getSharedPreferences("tjcPrefrences", 0).edit().putString(com.json.mediationsdk.d.j, stringWriter.toString()).apply();
                } catch (IOException e2) {
                    s9.a(e2);
                    throw null;
                }
            } catch (IOException e3) {
                s9.a(e3);
                throw null;
            }
        } catch (Exception unused) {
        }
    }
}
