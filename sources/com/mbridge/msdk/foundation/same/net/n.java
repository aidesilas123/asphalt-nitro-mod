package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: compiled from: SocketManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class n {
    private static volatile AtomicInteger a = new AtomicInteger(1);
    private ExecutorService b;

    /* JADX INFO: compiled from: SocketManager.java */
    public class a {
        private String b;
        private ByteBuffer c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private OutputStream f7164d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7165e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e f7166f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Socket f7167g;
        private String h;
        private int i;

        a(String str, int i, String str2, boolean z, e eVar) {
            this.f7165e = false;
            this.h = str;
            this.i = i;
            this.b = str2;
            this.f7165e = z;
            this.f7166f = eVar;
        }

        private void a(String str) {
            if (this.f7166f != null) {
                if (TextUtils.isEmpty(str)) {
                    str = "Unknown exception";
                }
                this.f7166f.onError(new com.mbridge.msdk.foundation.same.net.b.a(13, new com.mbridge.msdk.foundation.same.net.f.c(TTAdConstant.DEEPLINK_FALLBACK_CODE, str.getBytes(), null)));
            }
        }

        /* JADX WARN: Finally extract failed */
        public final void a() {
            byte[] bytes;
            int length;
            try {
                try {
                    Socket socket = new Socket(this.h, this.i);
                    this.f7167g = socket;
                    socket.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                    boolean z = this.h.contains(com.mbridge.msdk.foundation.same.net.g.d.a().h) || this.h.contains(com.mbridge.msdk.foundation.same.net.g.d.a().i);
                    aa.d("SocketManager", "Socket connect : " + this.h + " : " + this.i + " isAnalytics : " + z);
                    this.f7164d = this.f7167g.getOutputStream();
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8]);
                    this.c = byteBufferWrap;
                    ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                    byteBufferWrap.order(byteOrder);
                    this.c.put((byte) 2);
                    if (TextUtils.isEmpty(this.b)) {
                        this.c.put((byte) 1);
                    } else {
                        this.c.put(this.f7165e ? (byte) 3 : (byte) 2);
                    }
                    this.c.putShort((short) n.a.getAndIncrement());
                    if (TextUtils.isEmpty(this.b)) {
                        this.c.putInt(0);
                        this.f7164d.write(this.c.array());
                        length = 0;
                    } else {
                        if (this.f7165e) {
                            String str = this.b;
                            if (TextUtils.isEmpty(str)) {
                                bytes = null;
                            } else {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                                gZIPOutputStream.write(str.getBytes());
                                gZIPOutputStream.close();
                                bytes = byteArrayOutputStream.toByteArray();
                            }
                        } else {
                            bytes = this.b.getBytes();
                        }
                        length = bytes.length;
                        this.c.putInt(length);
                        this.f7164d.write(this.c.array());
                        this.f7164d.write(bytes);
                    }
                    this.f7164d.flush();
                    aa.a("SocketManager", "Socket Request : header : " + Arrays.toString(this.c.array()) + " length : " + length);
                    InputStream inputStream = this.f7167g.getInputStream();
                    byte[] bArr = new byte[8];
                    inputStream.read(bArr, 0, 8);
                    ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr);
                    this.c = byteBufferWrap2;
                    byteBufferWrap2.order(byteOrder);
                    int i = this.c.getInt(4);
                    boolean z2 = bArr[1] == 3;
                    boolean z3 = bArr[1] == 2;
                    aa.d("SocketManager", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i + " isGzip : " + z2);
                    byte[] bArr2 = new byte[i];
                    new DataInputStream(this.f7167g.getInputStream()).readFully(bArr2);
                    if (!z2 && i > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                        z2 = true;
                    }
                    e eVar = this.f7166f;
                    if (eVar == null) {
                        Socket socket2 = this.f7167g;
                        if (socket2 != null) {
                            try {
                                socket2.close();
                                this.c = null;
                                this.f7164d.close();
                                return;
                            } catch (IOException e2) {
                                aa.d("SocketManager", e2.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    if (z3 && i == 0) {
                        eVar.onSuccess(l.a(null, new com.mbridge.msdk.foundation.same.net.f.c(204, null, null)));
                        Socket socket3 = this.f7167g;
                        if (socket3 != null) {
                            try {
                                socket3.close();
                                this.c = null;
                                this.f7164d.close();
                                return;
                            } catch (IOException e3) {
                                aa.d("SocketManager", e3.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    if (i < 1) {
                        a("The response data less than 1");
                        Socket socket4 = this.f7167g;
                        if (socket4 != null) {
                            try {
                                socket4.close();
                                this.c = null;
                                this.f7164d.close();
                                return;
                            } catch (IOException e4) {
                                aa.d("SocketManager", e4.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    if (z) {
                        if (bArr2[0] == 1) {
                            eVar.onSuccess(l.a(null, new com.mbridge.msdk.foundation.same.net.f.c(200, null, null)));
                        } else {
                            a("The server returns fail");
                        }
                        Socket socket5 = this.f7167g;
                        if (socket5 != null) {
                            try {
                                socket5.close();
                                this.c = null;
                                this.f7164d.close();
                                return;
                            } catch (IOException e5) {
                                aa.d("SocketManager", e5.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        String strA = z2 ? n.this.a(bArr2) : new String(bArr2);
                        JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : null;
                        aa.d("SocketManager", "Socket Response length : " + i + " " + strA.length());
                        this.f7166f.onSuccess(l.a(jSONObject, new com.mbridge.msdk.foundation.same.net.f.c(200, null, null)));
                    } catch (Throwable th) {
                        String message = th.getMessage();
                        aa.d("SocketManager", th.getMessage());
                        if (TextUtils.isEmpty(message)) {
                            message = "The JSON data is illegal";
                        }
                        a(message);
                    }
                    inputStream.close();
                    Socket socket6 = this.f7167g;
                    if (socket6 != null) {
                        socket6.close();
                        this.c = null;
                        this.f7164d.close();
                    }
                } catch (Throwable th2) {
                    try {
                        String message2 = th2.getMessage();
                        aa.a("SocketManager", "Socket exception: " + message2);
                        a(message2);
                        Socket socket7 = this.f7167g;
                        if (socket7 != null) {
                            socket7.close();
                            this.c = null;
                            this.f7164d.close();
                        }
                    } catch (Throwable th3) {
                        Socket socket8 = this.f7167g;
                        if (socket8 != null) {
                            try {
                                socket8.close();
                                this.c = null;
                                this.f7164d.close();
                            } catch (IOException e6) {
                                aa.d("SocketManager", e6.getMessage());
                            }
                        }
                        throw th3;
                    }
                }
            } catch (IOException e7) {
                aa.d("SocketManager", e7.getMessage());
            }
        }
    }

    /* JADX INFO: compiled from: SocketManager.java */
    private static final class b {
        private static n a = new n();
    }

    private n() {
        this.b = new ThreadPoolExecutor(5, 10, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.mbridge.msdk.foundation.same.net.n.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
                threadNewThread.setName("SocketThreadPool");
                return threadNewThread;
            }
        }, new ThreadPoolExecutor.DiscardPolicy());
    }

    public static n a() {
        return b.a;
    }

    public final String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = gZIPInputStream.read(bArr2, 0, 1024);
            if (i <= 0) {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
    }

    public final void a(String str, int i, String str2, boolean z, e eVar) {
        final a aVar = new a(str, i, str2, z, eVar);
        this.b.execute(new Runnable() { // from class: com.mbridge.msdk.foundation.same.net.n.2
            @Override // java.lang.Runnable
            public final void run() {
                aVar.a();
            }
        });
    }
}
