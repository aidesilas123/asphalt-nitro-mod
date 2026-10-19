package com.json;

import android.util.Log;
import android.util.Pair;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class i4 {
    private b5 a;
    private d4 b;
    private j5 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ExecutorService f6151d;

    class a implements Runnable {
        final /* synthetic */ String a;

        a(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                wa waVar = new wa();
                ArrayList<Pair<String, String>> arrayListD = i4.this.b.d();
                if ("POST".equals(i4.this.b.e())) {
                    waVar = w5.b(i4.this.b.b(), this.a, arrayListD);
                } else if ("GET".equals(i4.this.b.e())) {
                    waVar = w5.a(i4.this.b.b(), this.a, arrayListD);
                }
                i4.this.c("response status code: " + waVar.a);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public i4(d4 d4Var, b5 b5Var) {
        if (d4Var == null) {
            throw new InvalidParameterException("Null configuration not supported ");
        }
        if (d4Var.c() == null) {
            throw new InvalidParameterException("Null formatter not supported ");
        }
        this.b = d4Var;
        this.a = b5Var;
        this.c = d4Var.c();
        this.f6151d = Executors.newSingleThreadExecutor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.b.f()) {
            Log.d("EventsTracker", str);
        }
    }

    private void d(Map<String, Object> map, Map<String, Object> map2) {
        try {
            map.putAll(map2);
        } catch (Exception unused) {
        }
    }

    private void e(String str) {
        this.f6151d.submit(new a(str));
    }

    public void a(String str, Map<String, Object> map) {
        c(String.format(Locale.ENGLISH, "%s %s", str, map.toString()));
        if (this.b.a() && !str.isEmpty()) {
            HashMap map2 = new HashMap();
            map2.put("eventname", str);
            d(map2, this.a.a());
            d(map2, map);
            e(this.c.a(map2));
        }
    }
}
