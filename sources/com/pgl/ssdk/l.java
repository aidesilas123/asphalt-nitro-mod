package com.pgl.ssdk;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.json.b4;
import java.net.HttpURLConnection;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l {
    private String a;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7717d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f7718e;
    private HandlerThread l;
    private Handler m;
    public String b = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7719f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f7720g = null;
    private int h = 10000;
    private int i = 2;
    private int j = 0;
    private boolean k = false;
    private boolean n = false;
    private HttpURLConnection o = null;

    public l(Context context, String str) {
        this.a = (str == null || str.length() <= 0) ? "" : str;
    }

    private void a(int i) {
        HttpURLConnection httpURLConnection;
        StringBuilder sb;
        String str;
        String str2 = i != 1 ? i != 2 ? "" : "application/octet-stream" : "application/json; charset=utf-8";
        if (str2.length() > 0) {
            this.o.addRequestProperty(b4.I, str2);
        }
        this.o.addRequestProperty("Cookie", "sessionid=" + this.a);
        try {
            String language = Locale.getDefault().getLanguage();
            if (language.equalsIgnoreCase("zh")) {
                httpURLConnection = this.o;
                sb = new StringBuilder();
                sb.append(Locale.getDefault().toString());
                sb.append(",");
                sb.append(language);
                str = ";q=0.9";
            } else {
                httpURLConnection = this.o;
                sb = new StringBuilder();
                sb.append(Locale.getDefault().toString());
                sb.append(",");
                sb.append(language);
                str = ";q=0.9,en-US;q=0.6,en;q=0.4";
            }
            sb.append(str);
            httpURLConnection.addRequestProperty("Accept-Language", sb.toString());
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00c2 A[PHI: r3 r4
      0x00c2: PHI (r3v2 java.net.HttpURLConnection) = (r3v1 java.net.HttpURLConnection), (r3v19 java.net.HttpURLConnection) binds: [B:47:0x00c0, B:42:0x00b6] A[DONT_GENERATE, DONT_INLINE]
      0x00c2: PHI (r4v1 boolean) = (r4v0 boolean), (r4v8 boolean) binds: [B:47:0x00c0, B:42:0x00b6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a() {
        /*
            Method dump skipped, instruction units count: 248
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.l.a():boolean");
    }

    static /* synthetic */ int b(l lVar) {
        int i = lVar.j;
        lVar.j = i + 1;
        return i;
    }

    public void a(int i, int i2, byte[] bArr) {
        if (this.k) {
            return;
        }
        this.c = i;
        this.f7717d = i2;
        this.f7718e = bArr;
        this.k = true;
        this.j = 0;
        HandlerThread handlerThread = new HandlerThread("request");
        this.l = handlerThread;
        handlerThread.start();
        Handler handler = new Handler(this.l.getLooper(), new k(this));
        this.m = handler;
        handler.sendEmptyMessage(1);
    }
}
