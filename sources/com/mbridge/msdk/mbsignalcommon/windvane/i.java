package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.mbridge.msdk.mbsignalcommon.c.a;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: WindVaneSignalCommunication.java */
/* JADX INFO: loaded from: classes4.dex */
public final class i implements Handler.Callback, c {
    protected Pattern a;
    protected String b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f7330d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected WindVaneWebView f7331e;
    protected final int c = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Handler f7332f = new Handler(Looper.getMainLooper(), this);

    public i(Context context) {
        this.f7330d = context;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.c
    public final void a(WindVaneWebView windVaneWebView) {
        this.f7331e = windVaneWebView;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.windvane.c
    public final boolean a(String str) {
        if (!j.a(str)) {
            return false;
        }
        this.a = j.b(str);
        this.b = str;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0068  */
    @Override // com.mbridge.msdk.mbsignalcommon.windvane.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(java.lang.String r8) {
        /*
            r7 = this;
            boolean r0 = android.text.TextUtils.isEmpty(r8)
            if (r0 == 0) goto L7
            return
        L7:
            r0 = 2
            r1 = 0
            r2 = 1
            if (r8 != 0) goto Ld
            goto L68
        Ld:
            com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView r3 = r7.f7331e
            com.mbridge.msdk.mbsignalcommon.windvane.a r3 = com.mbridge.msdk.mbsignalcommon.mraid.c.a(r3, r8)
            if (r3 == 0) goto L1a
            com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView r8 = r7.f7331e
            r3.a = r8
            goto L69
        L1a:
            java.util.regex.Pattern r3 = r7.a
            java.util.regex.Matcher r8 = r3.matcher(r8)
            boolean r3 = r8.matches()
            if (r3 == 0) goto L68
            com.mbridge.msdk.mbsignalcommon.windvane.a r3 = new com.mbridge.msdk.mbsignalcommon.windvane.a
            r3.<init>()
            int r4 = r8.groupCount()
            r5 = 5
            if (r4 < r5) goto L38
            java.lang.String r5 = r8.group(r5)
            r3.f7323f = r5
        L38:
            r5 = 3
            if (r4 < r5) goto L68
            java.lang.String r4 = r8.group(r2)
            r3.f7321d = r4
            java.lang.String r4 = r8.group(r0)
            r3.f7324g = r4
            java.lang.String r8 = r8.group(r5)
            r3.f7322e = r8
            java.util.HashMap<java.lang.String, java.lang.String> r4 = com.mbridge.msdk.mbsignalcommon.base.e.k
            if (r4 == 0) goto L63
            boolean r8 = r4.containsKey(r8)
            if (r8 == 0) goto L63
            java.util.HashMap<java.lang.String, java.lang.String> r8 = com.mbridge.msdk.mbsignalcommon.base.e.k
            java.lang.String r4 = r3.f7322e
            java.lang.Object r8 = r8.get(r4)
            java.lang.String r8 = (java.lang.String) r8
            r3.f7322e = r8
        L63:
            com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView r8 = r7.f7331e
            r3.a = r8
            goto L69
        L68:
            r3 = r1
        L69:
            if (r3 != 0) goto L6c
            return
        L6c:
            com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView r8 = r3.a
            if (r8 != 0) goto L71
            goto L77
        L71:
            java.lang.String r1 = r3.f7321d
            java.lang.Object r1 = r8.getJsObject(r1)
        L77:
            if (r1 != 0) goto L7a
            goto Lc1
        L7a:
            android.content.Context r8 = r7.f7330d     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.ClassLoader r8 = r8.getClassLoader()     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.Class r4 = r1.getClass()     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.String r4 = r4.getName()     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            com.mbridge.msdk.mbsignalcommon.c.a$c r8 = com.mbridge.msdk.mbsignalcommon.c.a.a(r8, r4)     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.String r4 = r3.f7322e     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.Class[] r0 = new java.lang.Class[r0]     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r5 = 0
            java.lang.Class<java.lang.Object> r6 = java.lang.Object.class
            r0[r5] = r6     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            java.lang.Class<java.lang.String> r5 = java.lang.String.class
            r0[r2] = r5     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            com.mbridge.msdk.mbsignalcommon.c.a$d r8 = r8.a(r4, r0)     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r8.a()     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            boolean r0 = r1 instanceof com.mbridge.msdk.mbsignalcommon.windvane.h     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            if (r0 == 0) goto Lc1
            r3.b = r1     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r3.c = r8     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r3.b = r1     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            android.os.Message r8 = android.os.Message.obtain()     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r8.what = r2     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r8.obj = r3     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            android.os.Handler r0 = r7.f7332f     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            r0.sendMessage(r8)     // Catch: java.lang.Exception -> Lb8 com.mbridge.msdk.mbsignalcommon.c.a.b.C0414a -> Lbd
            goto Lc1
        Lb8:
            r8 = move-exception
            r8.printStackTrace()
            goto Lc1
        Lbd:
            r8 = move-exception
            r8.printStackTrace()
        Lc1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbsignalcommon.windvane.i.b(java.lang.String):void");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        a aVar = (a) message.obj;
        if (aVar == null) {
            return false;
        }
        try {
            if (message.what == 1) {
                Object obj = aVar.b;
                a.d dVar = aVar.c;
                Object[] objArr = new Object[2];
                objArr[0] = aVar;
                objArr[1] = TextUtils.isEmpty(aVar.f7323f) ? JsonUtils.EMPTY_JSON : aVar.f7323f;
                dVar.a(obj, objArr);
                return true;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }
}
