package com.json;

import android.content.Context;
import android.text.TextUtils;
import com.json.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class m6 implements b5 {
    private static Map<String, Object> a = new HashMap();

    public static class b {
        String a;
        String b;
        Context c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6212d;

        b a(Context context) {
            this.c = context;
            return this;
        }

        public m6 a() {
            return new m6(this);
        }

        b b(String str) {
            this.b = str;
            return this;
        }

        b c(String str) {
            this.a = str;
            return this;
        }

        b d(String str) {
            this.f6212d = str;
            return this;
        }
    }

    private m6(b bVar) {
        c(bVar);
        b(bVar.c);
    }

    public static void a(String str) {
        a.put(b4.f6057e, SDKUtils.encodeString(str));
    }

    private void b(Context context) {
        a.put(b4.f6057e, l2.b(context));
    }

    private void c(b bVar) {
        Context context = bVar.c;
        n3 n3VarB = n3.b(context);
        a.put(b4.i, SDKUtils.encodeString(n3VarB.e()));
        a.put(b4.j, SDKUtils.encodeString(n3VarB.f()));
        a.put(b4.k, Integer.valueOf(n3VarB.a()));
        a.put(b4.l, SDKUtils.encodeString(n3VarB.d()));
        a.put(b4.m, SDKUtils.encodeString(n3VarB.c()));
        a.put(b4.f6056d, SDKUtils.encodeString(context.getPackageName()));
        a.put(b4.f6058f, SDKUtils.encodeString(bVar.b));
        a.put(b4.f6059g, SDKUtils.encodeString(bVar.a));
        a.put(b4.b, SDKUtils.encodeString(SDKUtils.getSDKVersion()));
        a.put(b4.n, b4.s);
        a.put("origin", b4.p);
        if (TextUtils.isEmpty(bVar.f6212d)) {
            return;
        }
        a.put(b4.h, SDKUtils.encodeString(bVar.f6212d));
    }

    @Override // com.json.b5
    public Map<String, Object> a() {
        return a;
    }
}
