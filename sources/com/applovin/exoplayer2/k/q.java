package com.applovin.exoplayer2.k;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.webkit.ProxyConfig;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.k.t;
import com.applovin.exoplayer2.l.ai;
import com.mbridge.msdk.foundation.download.Command;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class q extends e implements t {

    @Nullable
    private InputStream Zi;
    private boolean Zk;

    @Nullable
    private Predicate<String> aaA;

    @Nullable
    private HttpURLConnection aaB;
    private int aaC;
    private long aaD;
    private long aaE;
    private final boolean aau;
    private final int aav;
    private final int aaw;

    @Nullable
    private final t.f aax;
    private final t.f aay;
    private final boolean aaz;

    @Nullable
    private final String ta;

    @Nullable
    private l tw;

    public static final class a implements t.b {

        @Nullable
        private aa MH;

        @Nullable
        private Predicate<String> aaA;
        private boolean aau;
        private boolean aaz;

        @Nullable
        private String ta;
        private final t.f aax = new t.f();
        private int aaF = 8000;
        private int aaG = 8000;

        public a aO(@Nullable String str) {
            this.ta = str;
            return this;
        }

        @Override // com.applovin.exoplayer2.k.t.b
        /* JADX INFO: renamed from: ow, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public q ox() {
            q qVar = new q(this.ta, this.aaF, this.aaG, this.aau, this.aax, this.aaA, this.aaz);
            aa aaVar = this.MH;
            if (aaVar != null) {
                qVar.c(aaVar);
            }
            return qVar;
        }
    }

    @Deprecated
    public q() {
        this(null, 8000, 8000);
    }

    @Deprecated
    public q(@Nullable String str, int i, int i2) {
        this(str, i, i2, false, null);
    }

    @Deprecated
    public q(@Nullable String str, int i, int i2, boolean z, @Nullable t.f fVar) {
        this(str, i, i2, z, fVar, null, false);
    }

    private q(@Nullable String str, int i, int i2, boolean z, @Nullable t.f fVar, @Nullable Predicate<String> predicate, boolean z2) {
        super(true);
        this.ta = str;
        this.aav = i;
        this.aaw = i2;
        this.aau = z;
        this.aax = fVar;
        this.aaA = predicate;
        this.aay = new t.f();
        this.aaz = z2;
    }

    private HttpURLConnection a(URL url, int i, @Nullable byte[] bArr, long j, long j2, boolean z, boolean z2, Map<String, String> map) throws IOException {
        HttpURLConnection httpURLConnectionA = a(url);
        httpURLConnectionA.setConnectTimeout(this.aav);
        httpURLConnectionA.setReadTimeout(this.aaw);
        HashMap map2 = new HashMap();
        t.f fVar = this.aax;
        if (fVar != null) {
            map2.putAll(fVar.oy());
        }
        map2.putAll(this.aay.oy());
        map2.putAll(map);
        for (Map.Entry entry : map2.entrySet()) {
            httpURLConnectionA.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        String strA = u.A(j, j2);
        if (strA != null) {
            httpURLConnectionA.setRequestProperty(Command.HTTP_HEADER_RANGE, strA);
        }
        String str = this.ta;
        if (str != null) {
            httpURLConnectionA.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, str);
        }
        httpURLConnectionA.setRequestProperty("Accept-Encoding", z ? "gzip" : "identity");
        httpURLConnectionA.setInstanceFollowRedirects(z2);
        httpURLConnectionA.setDoOutput(bArr != null);
        httpURLConnectionA.setRequestMethod(l.ff(i));
        if (bArr != null) {
            httpURLConnectionA.setFixedLengthStreamingMode(bArr.length);
            httpURLConnectionA.connect();
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
        } else {
            httpURLConnectionA.connect();
        }
        return httpURLConnectionA;
    }

    private URL a(URL url, @Nullable String str, l lVar) throws t.c {
        if (str == null) {
            throw new t.c("Null location redirect", lVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new t.c("Unsupported protocol redirect: " + protocol, lVar, 2001, 1);
            }
            if (this.aau || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new t.c("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", lVar, 2001, 1);
        } catch (MalformedURLException e2) {
            throw new t.c(e2, lVar, 2001, 1);
        }
    }

    private void a(long j, l lVar) throws IOException {
        if (j == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j > 0) {
            int i = ((InputStream) ai.R(this.Zi)).read(bArr, 0, (int) Math.min(j, 4096));
            if (Thread.currentThread().isInterrupted()) {
                throw new t.c(new InterruptedIOException(), lVar, 2000, 1);
            }
            if (i == -1) {
                throw new t.c(lVar, 2008, 1);
            }
            j -= (long) i;
            fe(i);
        }
    }

    private static void a(@Nullable HttpURLConnection httpURLConnection, long j) {
        int i;
        if (httpURLConnection == null || (i = ai.acV) < 19 || i > 20) {
            return;
        }
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            if (j == -1) {
                if (inputStream.read() == -1) {
                    return;
                }
            } else if (j <= PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH) {
                return;
            }
            String name = inputStream.getClass().getName();
            if ("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream".equals(name) || "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream".equals(name)) {
                Method declaredMethod = ((Class) com.applovin.exoplayer2.l.a.checkNotNull(inputStream.getClass().getSuperclass())).getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(inputStream, new Object[0]);
            }
        } catch (Exception unused) {
        }
    }

    private static boolean a(HttpURLConnection httpURLConnection) {
        return "gzip".equalsIgnoreCase(httpURLConnection.getHeaderField("Content-Encoding"));
    }

    private HttpURLConnection d(l lVar) throws IOException {
        HttpURLConnection httpURLConnectionA;
        URL url = new URL(lVar.ef.toString());
        int i = lVar.Zy;
        byte[] bArr = lVar.Zz;
        long j = lVar.uc;
        long j2 = lVar.wC;
        boolean zFg = lVar.fg(1);
        if (!this.aau && !this.aaz) {
            return a(url, i, bArr, j, j2, zFg, true, lVar.ZA);
        }
        URL urlA = url;
        int i2 = i;
        byte[] bArr2 = bArr;
        int i3 = 0;
        while (true) {
            int i4 = i3 + 1;
            if (i3 > 20) {
                throw new t.c(new NoRouteToHostException("Too many redirects: " + i4), lVar, 2001, 1);
            }
            int i5 = i2;
            long j3 = j;
            URL url2 = urlA;
            long j4 = j2;
            httpURLConnectionA = a(urlA, i2, bArr2, j, j2, zFg, false, lVar.ZA);
            int responseCode = httpURLConnectionA.getResponseCode();
            String headerField = httpURLConnectionA.getHeaderField("Location");
            if ((i5 == 1 || i5 == 3) && (responseCode == 300 || responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307 || responseCode == 308)) {
                httpURLConnectionA.disconnect();
                urlA = a(url2, headerField, lVar);
                i2 = i5;
            } else {
                if (i5 != 2 || (responseCode != 300 && responseCode != 301 && responseCode != 302 && responseCode != 303)) {
                    break;
                }
                httpURLConnectionA.disconnect();
                if (this.aaz && responseCode == 302) {
                    i2 = i5;
                } else {
                    bArr2 = null;
                    i2 = 1;
                }
                urlA = a(url2, headerField, lVar);
            }
            i3 = i4;
            j = j3;
            j2 = j4;
        }
        return httpURLConnectionA;
    }

    private int l(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.aaD;
        if (j != -1) {
            long j2 = j - this.aaE;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = ((InputStream) ai.R(this.Zi)).read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.aaE += (long) i3;
        fe(i3);
        return i3;
    }

    private void ov() {
        HttpURLConnection httpURLConnection = this.aaB;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                com.applovin.exoplayer2.l.q.c("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.aaB = null;
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    public long a(l lVar) throws t.c {
        byte[] bArrA;
        this.tw = lVar;
        long j = 0;
        this.aaE = 0L;
        this.aaD = 0L;
        b(lVar);
        try {
            HttpURLConnection httpURLConnectionD = d(lVar);
            this.aaB = httpURLConnectionD;
            this.aaC = httpURLConnectionD.getResponseCode();
            String responseMessage = httpURLConnectionD.getResponseMessage();
            int i = this.aaC;
            if (i < 200 || i > 299) {
                Map<String, List<String>> headerFields = httpURLConnectionD.getHeaderFields();
                if (this.aaC == 416) {
                    if (lVar.uc == u.aQ(httpURLConnectionD.getHeaderField("Content-Range"))) {
                        this.Zk = true;
                        c(lVar);
                        long j2 = lVar.wC;
                        if (j2 != -1) {
                            return j2;
                        }
                        return 0L;
                    }
                }
                InputStream errorStream = httpURLConnectionD.getErrorStream();
                try {
                    bArrA = errorStream != null ? ai.a(errorStream) : ai.ada;
                } catch (IOException unused) {
                    bArrA = ai.ada;
                }
                byte[] bArr = bArrA;
                ov();
                throw new t.e(this.aaC, responseMessage, this.aaC == 416 ? new j(2008) : null, headerFields, lVar, bArr);
            }
            String contentType = httpURLConnectionD.getContentType();
            Predicate<String> predicate = this.aaA;
            if (predicate != null && !predicate.apply(contentType)) {
                ov();
                throw new t.d(contentType, lVar);
            }
            if (this.aaC == 200) {
                long j3 = lVar.uc;
                if (j3 != 0) {
                    j = j3;
                }
            }
            boolean zA = a(httpURLConnectionD);
            if (zA) {
                this.aaD = lVar.wC;
            } else {
                long j4 = lVar.wC;
                if (j4 != -1) {
                    this.aaD = j4;
                } else {
                    long jD = u.d(httpURLConnectionD.getHeaderField("Content-Length"), httpURLConnectionD.getHeaderField("Content-Range"));
                    this.aaD = jD != -1 ? jD - j : -1L;
                }
            }
            try {
                this.Zi = httpURLConnectionD.getInputStream();
                if (zA) {
                    this.Zi = new GZIPInputStream(this.Zi);
                }
                this.Zk = true;
                c(lVar);
                try {
                    a(j, lVar);
                    return this.aaD;
                } catch (IOException e2) {
                    ov();
                    if (e2 instanceof t.c) {
                        throw ((t.c) e2);
                    }
                    throw new t.c(e2, lVar, 2000, 1);
                }
            } catch (IOException e3) {
                ov();
                throw new t.c(e3, lVar, 2000, 1);
            }
        } catch (IOException e4) {
            ov();
            throw t.c.a(e4, lVar, 1);
        }
    }

    @VisibleForTesting
    HttpURLConnection a(URL url) throws IOException {
        return (HttpURLConnection) url.openConnection();
    }

    @Override // com.applovin.exoplayer2.k.i
    public void close() throws t.c {
        try {
            InputStream inputStream = this.Zi;
            if (inputStream != null) {
                long j = this.aaD;
                long j2 = -1;
                if (j != -1) {
                    j2 = j - this.aaE;
                }
                a(this.aaB, j2);
                try {
                    inputStream.close();
                } catch (IOException e2) {
                    throw new t.c(e2, (l) ai.R(this.tw), 2000, 3);
                }
            }
        } finally {
            this.Zi = null;
            ov();
            if (this.Zk) {
                this.Zk = false;
                oe();
            }
        }
    }

    @Override // com.applovin.exoplayer2.k.i
    @Nullable
    public Uri getUri() {
        HttpURLConnection httpURLConnection = this.aaB;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.applovin.exoplayer2.k.e, com.applovin.exoplayer2.k.i
    public Map<String, List<String>> kT() {
        HttpURLConnection httpURLConnection = this.aaB;
        return httpURLConnection == null ? Collections.emptyMap() : httpURLConnection.getHeaderFields();
    }

    @Override // com.applovin.exoplayer2.k.g
    public int read(byte[] bArr, int i, int i2) throws t.c {
        try {
            return l(bArr, i, i2);
        } catch (IOException e2) {
            throw t.c.a(e2, (l) ai.R(this.tw), 2);
        }
    }
}
