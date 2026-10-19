package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Log;
import com.mbridge.msdk.foundation.download.Command;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class o implements g {
    public static final Pattern q = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference<byte[]> r = new AtomicReference<>();
    public final boolean a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f2586d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final w f2588f;
    public final a0<? super o> h;
    public j i;
    public HttpURLConnection j;
    public InputStream k;
    public boolean l;
    public long m;
    public long n;
    public long o;
    public long p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.m<String> f2587e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f2589g = new w();

    public o(String str, com.fyber.inneractive.sdk.player.exoplayer2.util.m<String> mVar, a0<? super o> a0Var, int i, int i2, boolean z, w wVar) {
        this.f2586d = com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(str);
        this.h = a0Var;
        this.b = i;
        this.c = i2;
        this.a = z;
        this.f2588f = wVar;
    }

    public static void a(HttpURLConnection httpURLConnection, long j) {
        int i = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a;
        if (i == 19 || i == 20) {
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
                if (name.equals("com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream") || name.equals("com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream")) {
                    Method declaredMethod = inputStream.getClass().getSuperclass().getDeclaredMethod("unexpectedEndOfInput", new Class[0]);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(inputStream, new Object[0]);
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws t {
        try {
            c();
            return b(bArr, i, i2);
        } catch (IOException e2) {
            throw new t(e2, this.i, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0102  */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j r19) throws com.fyber.inneractive.sdk.player.exoplayer2.upstream.t {
        /*
            Method dump skipped, instruction units count: 389
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.upstream.o.a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j):long");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public Uri a() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    public final HttpURLConnection a(URL url, byte[] bArr, long j, long j2, boolean z, boolean z2) throws IOException {
        Map<String, String> map;
        Map<String, String> map2;
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(this.b);
        httpURLConnection.setReadTimeout(this.c);
        w wVar = this.f2588f;
        if (wVar != null) {
            synchronized (wVar) {
                if (wVar.b == null) {
                    wVar.b = Collections.unmodifiableMap(new HashMap(wVar.a));
                }
                map2 = wVar.b;
            }
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        w wVar2 = this.f2589g;
        synchronized (wVar2) {
            if (wVar2.b == null) {
                wVar2.b = Collections.unmodifiableMap(new HashMap(wVar2.a));
            }
            map = wVar2.b;
        }
        for (Map.Entry<String, String> entry2 : map.entrySet()) {
            httpURLConnection.setRequestProperty(entry2.getKey(), entry2.getValue());
        }
        if (j != 0 || j2 != -1) {
            String str = "bytes=" + j + "-";
            if (j2 != -1) {
                str = str + ((j + j2) - 1);
            }
            httpURLConnection.setRequestProperty(Command.HTTP_HEADER_RANGE, str);
        }
        httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, this.f2586d);
        if (!z) {
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
        }
        httpURLConnection.setInstanceFollowRedirects(z2);
        httpURLConnection.setDoOutput(bArr != null);
        if (bArr != null) {
            httpURLConnection.setRequestMethod("POST");
            if (bArr.length == 0) {
                httpURLConnection.connect();
            } else {
                httpURLConnection.setFixedLengthStreamingMode(bArr.length);
                httpURLConnection.connect();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(bArr);
                outputStream.close();
            }
        } else {
            httpURLConnection.connect();
        }
        return httpURLConnection;
    }

    public final int b(byte[] bArr, int i, int i2) throws IOException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.n;
        if (j != -1) {
            long j2 = j - this.p;
            if (j2 == 0) {
                return -1;
            }
            i2 = (int) Math.min(i2, j2);
        }
        int i3 = this.k.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.n == -1) {
                return -1;
            }
            throw new EOFException();
        }
        long j3 = i3;
        this.p += j3;
        a0<? super o> a0Var = this.h;
        if (a0Var != null) {
            l lVar = (l) a0Var;
            synchronized (lVar) {
                lVar.f2580d += j3;
            }
        }
        return i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.net.HttpURLConnection b(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j r20) throws java.io.IOException {
        /*
            r19 = this;
            r0 = r20
            java.net.URL r1 = new java.net.URL
            android.net.Uri r2 = r0.a
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            byte[] r2 = r0.b
            long r12 = r0.f2572d
            long r14 = r0.f2573e
            r3 = 1
            boolean r16 = r0.a(r3)
            r11 = r19
            boolean r0 = r11.a
            if (r0 != 0) goto L2a
            r8 = 1
            r0 = r19
            r3 = r12
            r5 = r14
            r7 = r16
            java.net.HttpURLConnection r0 = r0.a(r1, r2, r3, r5, r7, r8)
            return r0
        L2a:
            r0 = 0
        L2b:
            int r10 = r0 + 1
            r3 = 20
            if (r0 > r3) goto Lae
            r0 = 0
            r3 = r19
            r4 = r1
            r5 = r2
            r6 = r12
            r8 = r14
            r17 = r12
            r12 = r10
            r10 = r16
            r11 = r0
            java.net.HttpURLConnection r0 = r3.a(r4, r5, r6, r8, r10, r11)
            int r3 = r0.getResponseCode()
            r4 = 300(0x12c, float:4.2E-43)
            if (r3 == r4) goto L62
            r4 = 301(0x12d, float:4.22E-43)
            if (r3 == r4) goto L62
            r4 = 302(0x12e, float:4.23E-43)
            if (r3 == r4) goto L62
            r4 = 303(0x12f, float:4.25E-43)
            if (r3 == r4) goto L62
            if (r2 != 0) goto L61
            r2 = 307(0x133, float:4.3E-43)
            if (r3 == r2) goto L62
            r2 = 308(0x134, float:4.32E-43)
            if (r3 != r2) goto L61
            goto L62
        L61:
            return r0
        L62:
            r2 = 0
            java.lang.String r3 = "Location"
            java.lang.String r3 = r0.getHeaderField(r3)
            r0.disconnect()
            if (r3 == 0) goto La6
            java.net.URL r0 = new java.net.URL
            r0.<init>(r1, r3)
            java.lang.String r1 = r0.getProtocol()
            java.lang.String r3 = "https"
            boolean r3 = r3.equals(r1)
            if (r3 != 0) goto L9f
            java.lang.String r3 = "http"
            boolean r3 = r3.equals(r1)
            if (r3 == 0) goto L88
            goto L9f
        L88:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Unsupported protocol redirect: "
            r2.append(r3)
            r2.append(r1)
            java.lang.String r1 = r2.toString()
            r0.<init>(r1)
            throw r0
        L9f:
            r11 = r19
            r1 = r0
            r0 = r12
            r12 = r17
            goto L2b
        La6:
            java.net.ProtocolException r0 = new java.net.ProtocolException
            java.lang.String r1 = "Null location redirect"
            r0.<init>(r1)
            throw r0
        Lae:
            r12 = r10
            java.net.NoRouteToHostException r0 = new java.net.NoRouteToHostException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Too many redirects: "
            r1.append(r2)
            r1.append(r12)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.upstream.o.b(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j):java.net.HttpURLConnection");
    }

    public final void b() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e2);
            }
            this.j = null;
        }
    }

    public final void c() throws IOException {
        if (this.o == this.m) {
            return;
        }
        byte[] andSet = r.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[4096];
        }
        while (true) {
            long j = this.o;
            long j2 = this.m;
            if (j == j2) {
                r.set(andSet);
                return;
            }
            int i = this.k.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
            if (Thread.interrupted()) {
                throw new InterruptedIOException();
            }
            if (i == -1) {
                throw new EOFException();
            }
            long j3 = i;
            this.o += j3;
            a0<? super o> a0Var = this.h;
            if (a0Var != null) {
                l lVar = (l) a0Var;
                synchronized (lVar) {
                    lVar.f2580d += j3;
                }
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public void close() throws t {
        try {
            if (this.k != null) {
                HttpURLConnection httpURLConnection = this.j;
                long j = this.n;
                if (j != -1) {
                    j -= this.p;
                }
                a(httpURLConnection, j);
                try {
                    this.k.close();
                } catch (IOException e2) {
                    throw new t(e2, this.i, 3);
                }
            }
        } finally {
            this.k = null;
            b();
            if (this.l) {
                this.l = false;
                a0<? super o> a0Var = this.h;
                if (a0Var != null) {
                    ((l) a0Var).a(this);
                }
            }
        }
    }
}
