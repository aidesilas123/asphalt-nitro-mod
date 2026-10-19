package com.applovin.impl.sdk.network;

import android.os.Process;
import android.os.SystemClock;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.network.e;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private final PriorityBlockingQueue<b> aHR = new PriorityBlockingQueue<>();
    private final n sdk;

    /* JADX INFO: Access modifiers changed from: private */
    static class a extends Thread {
        private final BlockingQueue<b> aHS;
        private final n sdk;

        private a(BlockingQueue<b> blockingQueue, int i, n nVar) {
            super("AppLovinSdk:network");
            if (blockingQueue == null) {
                throw new IllegalArgumentException("No request queue specified");
            }
            if (nVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.aHS = blockingQueue;
            this.sdk = nVar;
            setPriority(((Integer) nVar.a(com.applovin.impl.sdk.c.b.aQK)).intValue());
        }

        private void Ih() throws InterruptedException {
            b(this.aHS.take());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(b bVar, c cVar) {
            bVar.aHW.accept(cVar);
        }

        private void b(final b bVar) {
            HttpURLConnection httpURLConnectionC;
            InputStream inputStream;
            long jElapsedRealtime;
            InputStream errorStream;
            byte[] bArrA;
            byte[] bArrA2;
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            byte[] bArr = null;
            int responseCode = 0;
            try {
                httpURLConnectionC = c(bVar);
                try {
                    if (bVar.aHV != null && bVar.aHV.length > 0) {
                        httpURLConnectionC.setDoOutput(true);
                        httpURLConnectionC.setFixedLengthStreamingMode(bVar.aHV.length);
                        OutputStream outputStream = httpURLConnectionC.getOutputStream();
                        outputStream.write(bVar.aHV);
                        outputStream.close();
                    }
                    jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    responseCode = httpURLConnectionC.getResponseCode();
                    long jElapsedRealtime3 = SystemClock.elapsedRealtime();
                    if (responseCode > 0) {
                        inputStream = httpURLConnectionC.getInputStream();
                        try {
                            bArrA2 = com.applovin.impl.sdk.utils.i.a(inputStream, this.sdk);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                jElapsedRealtime = SystemClock.elapsedRealtime();
                                this.sdk.BN();
                                if (x.Fn()) {
                                    this.sdk.BN().b("NetworkCommunicationThread", "Failed to make HTTP request", th);
                                }
                                if (httpURLConnectionC != null) {
                                    try {
                                        errorStream = httpURLConnectionC.getErrorStream();
                                    } catch (Throwable unused) {
                                        errorStream = null;
                                    }
                                    try {
                                        bArrA = com.applovin.impl.sdk.utils.i.a(errorStream, this.sdk);
                                    } catch (Throwable unused2) {
                                        bArrA = null;
                                        u.a((Closeable) inputStream, this.sdk);
                                        u.a((Closeable) errorStream, this.sdk);
                                        u.a(httpURLConnectionC, this.sdk);
                                        final c cVarIp = c.Io().gI(responseCode).L(bArr).M(bArrA).bR(jElapsedRealtime - jElapsedRealtime2).o(th).Ip();
                                        bVar.aHX.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.j
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                e.a.a(bVar, cVarIp);
                                            }
                                        });
                                    }
                                } else {
                                    errorStream = null;
                                    bArrA = null;
                                }
                                u.a((Closeable) inputStream, this.sdk);
                                u.a((Closeable) errorStream, this.sdk);
                                u.a(httpURLConnectionC, this.sdk);
                            } catch (Throwable th2) {
                                u.a((Closeable) inputStream, this.sdk);
                                u.a((Closeable) null, this.sdk);
                                u.a(httpURLConnectionC, this.sdk);
                                throw th2;
                            }
                        }
                    } else {
                        inputStream = null;
                        bArrA2 = null;
                    }
                    u.a((Closeable) inputStream, this.sdk);
                    u.a((Closeable) null, this.sdk);
                    u.a(httpURLConnectionC, this.sdk);
                    bArrA = null;
                    bArr = bArrA2;
                    jElapsedRealtime = jElapsedRealtime3;
                    th = null;
                } catch (Throwable th3) {
                    th = th3;
                    inputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                httpURLConnectionC = null;
                inputStream = null;
            }
            final c cVarIp2 = c.Io().gI(responseCode).L(bArr).M(bArrA).bR(jElapsedRealtime - jElapsedRealtime2).o(th).Ip();
            bVar.aHX.execute(new Runnable() { // from class: com.applovin.impl.sdk.network.j
                @Override // java.lang.Runnable
                public final void run() {
                    e.a.a(bVar, cVarIp2);
                }
            });
        }

        private HttpURLConnection c(b bVar) throws IOException {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(bVar.aHr).openConnection();
            httpURLConnection.setRequestMethod(bVar.aHs);
            httpURLConnection.setConnectTimeout(bVar.aHI);
            httpURLConnection.setReadTimeout(bVar.aHI);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setDoInput(true);
            if (!bVar.aHU.isEmpty()) {
                for (Map.Entry entry : bVar.aHU.entrySet()) {
                    httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
            }
            return httpURLConnection;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    Ih();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public static class b implements Comparable<b> {
        private static final AtomicInteger aHT = new AtomicInteger();
        private final int aHI;
        private final Map<String, String> aHU;
        private final byte[] aHV;
        private final Consumer<c> aHW;
        private final Executor aHX;
        private final int aHY;
        private final String aHr;
        private final String aHs;

        public static class a {
            private int aHI;
            private Map<String, String> aHU = new HashMap();
            private byte[] aHV;
            private Consumer<c> aHW;
            private Executor aHX;
            private String aHr;
            private String aHs;

            public a I(String str, String str2) {
                this.aHU.put(str, str2);
                return this;
            }

            public b Ii() {
                return new b(this);
            }

            public a K(byte[] bArr) {
                this.aHV = bArr;
                return this;
            }

            public a a(Consumer<c> consumer) {
                this.aHW = consumer;
                return this;
            }

            public a a(Executor executor) {
                this.aHX = executor;
                return this;
            }

            public a cZ(String str) {
                this.aHr = str;
                return this;
            }

            public a da(String str) {
                this.aHs = str;
                return this;
            }

            public a gH(int i) {
                this.aHI = i;
                return this;
            }

            public a m(Map<String, String> map) {
                if (map == null) {
                    map = new HashMap<>();
                }
                this.aHU = map;
                return this;
            }
        }

        private b(a aVar) {
            this.aHr = aVar.aHr;
            this.aHs = aVar.aHs;
            this.aHU = aVar.aHU != null ? aVar.aHU : Collections.emptyMap();
            this.aHV = aVar.aHV;
            this.aHI = aVar.aHI;
            this.aHW = aVar.aHW;
            this.aHX = aVar.aHX;
            this.aHY = aHT.incrementAndGet();
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int compareTo(b bVar) {
            return this.aHY - bVar.aHY;
        }
    }

    public static class c {
        private final byte[] aHZ;
        private final byte[] aIa;
        private final long aIb;
        private final Throwable aIc;
        private final int aaC;

        public static class a {
            private byte[] aHZ;
            private byte[] aIa;
            private long aIb;
            private Throwable aIc;
            private int aaC;

            public c Ip() {
                return new c(this);
            }

            public a L(byte[] bArr) {
                this.aHZ = bArr;
                return this;
            }

            public a M(byte[] bArr) {
                this.aIa = bArr;
                return this;
            }

            public a bR(long j) {
                this.aIb = j;
                return this;
            }

            public a gI(int i) {
                this.aaC = i;
                return this;
            }

            public a o(Throwable th) {
                this.aIc = th;
                return this;
            }
        }

        private c(a aVar) {
            this.aaC = aVar.aaC;
            this.aHZ = aVar.aHZ;
            this.aIa = aVar.aIa;
            this.aIb = aVar.aIb;
            this.aIc = aVar.aIc;
        }

        public static a Io() {
            return new a();
        }

        public int Ij() throws Throwable {
            Throwable th = this.aIc;
            if (th == null) {
                return this.aaC;
            }
            throw th;
        }

        public int Ik() {
            return this.aaC;
        }

        public byte[] Il() throws Throwable {
            Throwable th = this.aIc;
            if (th == null) {
                return this.aHZ;
            }
            throw th;
        }

        public byte[] Im() {
            return this.aIa;
        }

        public long In() {
            return this.aIb;
        }
    }

    public e(n nVar) {
        this.sdk = nVar;
    }

    public void a(b bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("No request specified");
        }
        this.aHR.add(bVar);
    }

    public void start() {
        for (int i = 0; i < ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aKB)).intValue(); i++) {
            new a(this.aHR, i, this.sdk).start();
        }
    }
}
