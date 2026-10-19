package com.squareup.imagelib;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.squareup.imagelib.j;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: UrlConnectionDownloader.java */
/* JADX INFO: loaded from: classes4.dex */
public class z implements j {
    static volatile Object a;
    private static final Object b = new Object();
    private static final ThreadLocal<StringBuilder> c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f7784d;

    /* JADX INFO: compiled from: UrlConnectionDownloader.java */
    class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    }

    /* JADX INFO: compiled from: UrlConnectionDownloader.java */
    private static class b {
        static Object a(Context context) throws IOException {
            File fileF = a0.f(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            return (fileF == null || installed != null) ? installed : HttpResponseCache.install(fileF, a0.a(fileF));
        }
    }

    public z(Context context) {
        this.f7784d = context.getApplicationContext();
    }

    private static void b(Context context) {
        if (a == null) {
            try {
                synchronized (b) {
                    if (a == null) {
                        a = b.a(context);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.squareup.imagelib.j
    public j.a a(Uri uri, int i) throws IOException {
        String string;
        if (Build.VERSION.SDK_INT >= 14) {
            b(this.f7784d);
        }
        HttpURLConnection httpURLConnectionC = c(uri);
        httpURLConnectionC.setUseCaches(true);
        if (i != 0) {
            if (NetworkPolicy.isOfflineOnly(i)) {
                string = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb = c.get();
                sb.setLength(0);
                if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                    sb.append("no-cache");
                }
                if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("no-store");
                }
                string = sb.toString();
            }
            httpURLConnectionC.setRequestProperty("Cache-Control", string);
        }
        int responseCode = httpURLConnectionC.getResponseCode();
        if (responseCode < 300) {
            return new j.a(httpURLConnectionC.getInputStream(), a0.w(httpURLConnectionC.getHeaderField("X-Android-Response-Source")), httpURLConnectionC.getHeaderFieldInt("Content-Length", -1));
        }
        httpURLConnectionC.disconnect();
        throw new j.b(responseCode + " " + httpURLConnectionC.getResponseMessage(), i, responseCode);
    }

    protected HttpURLConnection c(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }
}
