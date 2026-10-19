package com.pgl.ssdk;

import android.content.Context;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes4.dex */
public class g {
    private static g c;
    private Context a;
    private List b = new ArrayList();

    private g(Context context) {
        this.a = null;
        this.a = context;
    }

    public static g a(Context context) {
        if (c == null) {
            synchronized (g.class) {
                if (c == null) {
                    c = new g(context);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
    
        r1 = (r1 * 10000) + r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a() {
        /*
            r7 = this;
            r0 = 0
            monitor-enter(r7)     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5c
            android.content.Context r1 = r7.a     // Catch: java.lang.Throwable -> L54
            android.content.IntentFilter r2 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L54
            java.lang.String r3 = "android.intent.action.BATTERY_CHANGED"
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L54
            r3 = 0
            android.content.Intent r1 = r1.registerReceiver(r3, r2)     // Catch: java.lang.Throwable -> L54
            if (r1 != 0) goto L14
            r1 = 0
            goto L1a
        L14:
            java.lang.String r2 = "plugged"
            int r1 = r1.getIntExtra(r2, r0)     // Catch: java.lang.Throwable -> L54
        L1a:
            android.content.Context r2 = r7.a     // Catch: java.lang.Throwable -> L51
            android.content.IntentFilter r4 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L51
            java.lang.String r5 = "android.intent.action.BATTERY_CHANGED"
            r4.<init>(r5)     // Catch: java.lang.Throwable -> L51
            android.content.Intent r2 = r2.registerReceiver(r3, r4)     // Catch: java.lang.Throwable -> L51
            if (r2 != 0) goto L2a
            goto L47
        L2a:
            java.lang.String r3 = "level"
            int r3 = r2.getIntExtra(r3, r0)     // Catch: java.lang.Throwable -> L51
            java.lang.String r4 = "scale"
            int r2 = r2.getIntExtra(r4, r0)     // Catch: java.lang.Throwable -> L51
            float r3 = (float) r3     // Catch: java.lang.Throwable -> L51
            float r2 = (float) r2     // Catch: java.lang.Throwable -> L51
            float r3 = r3 / r2
            r2 = 1120403456(0x42c80000, float:100.0)
            float r3 = r3 * r2
            r2 = 1092616192(0x41200000, float:10.0)
            float r3 = r3 * r2
            int r2 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> L51
            int r0 = r2 / 10
        L47:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4c
            int r1 = r1 * 10000
            int r1 = r1 + r0
            goto L60
        L4c:
            r2 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L56
        L51:
            r2 = move-exception
            r0 = r1
            goto L55
        L54:
            r2 = move-exception
        L55:
            r1 = 0
        L56:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L58
            throw r2     // Catch: java.lang.Throwable -> L5a java.lang.Exception -> L5d
        L58:
            r2 = move-exception
            goto L56
        L5a:
            r0 = move-exception
            throw r0
        L5c:
            r1 = 0
        L5d:
            int r0 = r0 * 10000
            int r1 = r1 + r0
        L60:
            r0 = -1
            if (r1 != r0) goto L64
            return
        L64:
            java.util.List r0 = r7.b
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r0.add(r1)
            java.util.List r0 = r7.b     // Catch: java.lang.Throwable -> L8b
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L8b
            r1 = 20
            if (r0 <= r1) goto L8b
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L8b
            java.util.List r2 = r7.b     // Catch: java.lang.Throwable -> L8b
            int r3 = r0 + (-10)
            java.util.List r0 = r2.subList(r3, r0)     // Catch: java.lang.Throwable -> L8b
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L8b
            java.util.List r0 = r7.b     // Catch: java.lang.Throwable -> L8b
            r0.clear()     // Catch: java.lang.Throwable -> L8b
            r7.b = r1     // Catch: java.lang.Throwable -> L8b
        L8b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.g.a():void");
    }

    public synchronized String b() {
        if (this.b.size() <= 0) {
            return UniquePlacementId.NO_ID;
        }
        return String.valueOf(((Integer) this.b.get(r0.size() - 1)).intValue() % 10000);
    }

    public synchronized String c() {
        return new JSONArray((Collection) this.b).toString();
    }
}
