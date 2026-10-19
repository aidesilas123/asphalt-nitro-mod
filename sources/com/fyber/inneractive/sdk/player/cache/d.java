package com.fyber.inneractive.sdk.player.cache;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.player.cache.h;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.i0;
import com.fyber.inneractive.sdk.util.q;
import com.mbridge.msdk.foundation.download.Command;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class d implements com.fyber.inneractive.sdk.player.exoplayer2.upstream.g {
    public com.fyber.inneractive.sdk.player.cache.a b;
    public h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Uri f2151d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public FileInputStream f2153f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public FileInputStream f2154g;
    public b h;
    public c i;
    public int j;
    public s k;
    public boolean a = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f2152e = 0;

    public class a implements h.i {
        public final /* synthetic */ com.fyber.inneractive.sdk.util.f a;
        public final /* synthetic */ AtomicReference b;
        public final /* synthetic */ CountDownLatch c;

        public a(com.fyber.inneractive.sdk.util.f fVar, AtomicReference atomicReference, CountDownLatch countDownLatch) {
            this.a = fVar;
            this.b = atomicReference;
            this.c = countDownLatch;
        }

        public void a(h hVar, com.fyber.inneractive.sdk.player.cache.a aVar, Exception exc) {
            b bVar;
            d dVar = d.this;
            if (!dVar.a) {
                if (exc == null) {
                    Bitmap bitmap = this.a.b;
                    if (bitmap != null && (bVar = dVar.h) != null) {
                        ((com.fyber.inneractive.sdk.player.controller.d) bVar).C = bitmap;
                    }
                    dVar.b = aVar;
                } else {
                    this.b.set(exc);
                }
            }
            this.c.countDown();
        }
    }

    public interface b {
    }

    public interface c {
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public int a(byte[] bArr, int i, int i2) throws IOException {
        com.fyber.inneractive.sdk.player.cache.a aVar = this.b;
        if (aVar == null) {
            return -1;
        }
        if (i2 == 0) {
            return i2;
        }
        synchronized (aVar.f2140d) {
            int length = (int) this.b.a().length();
            if (i > length) {
                return b(bArr, i, i2);
            }
            boolean z = false;
            if (this.b.c) {
                while (length - i <= 0) {
                    try {
                        wait(0L, 50);
                        length = (int) this.b.a().length();
                    } catch (InterruptedException e2) {
                        throw new IOException(e2);
                    }
                }
                if (this.f2154g == null) {
                    this.f2154g = new FileInputStream(this.b.a());
                    z = true;
                }
            } else if (this.f2153f == null) {
                IAlog.a("%s creating a single instance of fis", toString());
                this.f2153f = new FileInputStream(this.b.a());
                q.b(this.f2154g);
                this.f2154g = null;
                z = true;
            }
            FileInputStream fileInputStream = this.f2153f;
            if (fileInputStream == null) {
                fileInputStream = this.f2154g;
            }
            long j = this.f2152e;
            if (j > 0 && z && fileInputStream.skip(j) != this.f2152e) {
                throw new IOException("Failed to skip the stream");
            }
            int i3 = fileInputStream.read(bArr, i, Math.min(Math.min(bArr.length, length - i), i2));
            this.f2152e += (long) i3;
            return i3;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public long a(com.fyber.inneractive.sdk.player.exoplayer2.upstream.j jVar) throws IOException {
        com.fyber.inneractive.sdk.player.cache.b jVar2;
        r.d dVar;
        if (this.b == null) {
            CountDownLatch countDownLatch = new CountDownLatch(1);
            AtomicReference atomicReference = new AtomicReference();
            com.fyber.inneractive.sdk.util.f fVar = new com.fyber.inneractive.sdk.util.f();
            Uri uri = jVar.a;
            this.f2151d = uri;
            n nVar = n.f2167f;
            int i = this.j;
            String string = uri.toString();
            s sVar = this.k;
            a aVar = new a(fVar, atomicReference, countDownLatch);
            com.fyber.inneractive.sdk.player.cache.c cVar = nVar.b;
            boolean zA = IAConfigManager.M.u.b.a("validateHasVideoTracks", false);
            r rVar = sVar == null ? null : (r) sVar.a(r.class);
            if (rVar != null) {
                int[] iArr = h.d.a;
                r.d dVar2 = r.d.LEGACY;
                String strA = rVar.a("v_type", dVar2.key);
                r.d[] dVarArrValues = r.d.values();
                int length = dVarArrValues.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        dVar = dVar2;
                        break;
                    }
                    int i3 = length;
                    r.d dVar3 = dVarArrValues[i2];
                    r.d[] dVarArr = dVarArrValues;
                    if (TextUtils.equals(dVar3.key, strA.toLowerCase(Locale.US))) {
                        dVar = dVar3;
                        break;
                    }
                    i2++;
                    length = i3;
                    dVarArrValues = dVarArr;
                }
                int i4 = iArr[dVar.ordinal()];
                jVar2 = i4 != 1 ? i4 != 2 ? new j(zA) : new i() : new k();
            } else {
                jVar2 = new j(zA);
            }
            h hVar = new h(cVar, string, jVar2, i, sVar);
            hVar.f2160g = aVar;
            nVar.f2168d.add(hVar.a());
            this.c = hVar;
            hVar.q = fVar;
            hVar.o = true;
            HandlerThread handlerThread = hVar.i;
            if (handlerThread != null) {
                handlerThread.start();
                i0 i0Var = new i0(hVar.i.getLooper(), hVar);
                hVar.j = i0Var;
                i0Var.post(new f(hVar));
            }
            c cVar2 = this.i;
            if (cVar2 != null) {
                ((com.fyber.inneractive.sdk.player.controller.d) cVar2).F.add(this.c);
            }
            try {
                countDownLatch.await(7L, TimeUnit.SECONDS);
                if (this.b == null) {
                    if (atomicReference.get() == null) {
                        throw new IOException("Cache has failed to download");
                    }
                    throw new IOException((Throwable) atomicReference.get());
                }
            } catch (InterruptedException e2) {
                h hVar2 = this.c;
                hVar2.a(hVar2.o);
                throw new IOException(e2);
            }
        }
        this.f2152e = jVar.f2572d;
        com.fyber.inneractive.sdk.player.cache.a aVar2 = this.b;
        String strValueOf = aVar2.c ? aVar2.f2141e.get("http.file.length") : String.valueOf(aVar2.a().length());
        if (strValueOf == null || !TextUtils.isDigitsOnly(strValueOf)) {
            return -1L;
        }
        return Long.parseLong(strValueOf);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public Uri a() {
        return this.f2151d;
    }

    public final int b(byte[] bArr, int i, int i2) throws IOException {
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3;
        HttpURLConnection httpURLConnection;
        String str = this.b.b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
        int i3 = (int) this.f2152e;
        ByteBuffer byteBufferB = com.fyber.inneractive.sdk.util.d.b.b();
        HttpURLConnection httpURLConnection2 = null;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setRequestProperty(Command.HTTP_HEADER_RANGE, String.format(Locale.ENGLISH, "bytes=%d-", Integer.valueOf(i3)));
                httpURLConnection.connect();
            } catch (IOException e2) {
                e = e2;
                inputStream2 = null;
                httpURLConnection2 = httpURLConnection;
                try {
                    throw e;
                } finally {
                }
            } catch (Throwable unused) {
                httpURLConnection2 = httpURLConnection;
                inputStream = null;
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Exception unused2) {
                    }
                }
                if (inputStream != null) {
                    inputStream3 = inputStream;
                }
                System.arraycopy(byteArrayOutputStream.toByteArray(), 0, bArr, i, i2);
                return i2;
            }
        } catch (IOException e3) {
            e = e3;
            inputStream2 = null;
        } catch (Throwable unused3) {
            inputStream = null;
        }
        if (httpURLConnection.getResponseCode() != 206) {
            throw new IOException("Server did not reply with proper range.");
        }
        inputStream3 = httpURLConnection.getInputStream();
        byte[] bArrArray = byteBufferB.array();
        while (inputStream3.read(bArrArray) != -1) {
            byteArrayOutputStream.write(bArrArray);
        }
        inputStream3.close();
        httpURLConnection.disconnect();
        try {
            httpURLConnection.disconnect();
        } catch (Exception unused4) {
        }
        try {
            inputStream3.close();
        } catch (Exception unused5) {
        }
        System.arraycopy(byteArrayOutputStream.toByteArray(), 0, bArr, i, i2);
        return i2;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.upstream.g
    public void close() throws IOException {
        this.a = true;
        this.f2152e = 0L;
        q.b(this.f2153f);
        q.b(this.f2154g);
        this.f2153f = null;
        this.f2154g = null;
    }
}
