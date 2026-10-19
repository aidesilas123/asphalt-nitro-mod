package com.json;

import android.util.Log;
import com.json.gb;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class o6 {
    private static o6 a;
    private i4 b;

    private o6() {
    }

    private static o6 a() {
        if (a == null) {
            a = new o6();
        }
        return a;
    }

    public static void a(d4 d4Var, m6 m6Var) {
        if (d4Var != null) {
            try {
                a().b = new i4(d4Var, m6Var);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(gb.a aVar) {
        a(aVar, new HashMap());
    }

    public static void a(gb.a aVar, Map<String, Object> map) {
        i4 i4Var = a().b;
        if (i4Var == null) {
            Log.d(b4.a, b4.S);
            return;
        }
        if (map != null) {
            map.put(b4.t, Integer.valueOf(aVar.b));
        }
        i4Var.a(aVar.a, map);
    }
}
