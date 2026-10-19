package com.mbridge.msdk.click;

import android.net.Uri;
import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
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
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

/* JADX INFO: compiled from: SocketSpider.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k {
    private static volatile AtomicInteger a = new AtomicInteger(1);
    private com.mbridge.msdk.c.e b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6818d = 9377;

    public k() {
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        this.b = eVarB;
        if (eVarB == null) {
            this.b = com.mbridge.msdk.c.f.a().b();
        }
    }

    private com.mbridge.msdk.click.entity.a a(String str, String str2) {
        OutputStream outputStream;
        Socket socket;
        int length;
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        Socket socket2 = null;
        byte[] byteArray = null;
        try {
            try {
                socket = new Socket(this.c, this.f6818d);
                try {
                    socket.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                    outputStream = socket.getOutputStream();
                } catch (Throwable th) {
                    th = th;
                    outputStream = null;
                }
            } catch (Exception e2) {
                aa.d("SocketSpider", e2.getMessage());
            }
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
        }
        try {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8]);
            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
            byteBufferWrap.order(byteOrder);
            byteBufferWrap.put((byte) 2);
            byteBufferWrap.put((byte) 3);
            byteBufferWrap.putShort((short) a.getAndIncrement());
            if (TextUtils.isEmpty(str2)) {
                byteBufferWrap.putInt(0);
                outputStream.write(byteBufferWrap.array());
                length = 0;
            } else {
                if (!TextUtils.isEmpty(str2)) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    gZIPOutputStream.write(str2.getBytes());
                    gZIPOutputStream.close();
                    byteArray = byteArrayOutputStream.toByteArray();
                }
                length = byteArray.length;
                byteBufferWrap.putInt(length);
                outputStream.write(byteBufferWrap.array());
                outputStream.write(byteArray);
            }
            outputStream.flush();
            aa.a("SocketSpider", "Socket Request : header : " + Arrays.toString(byteBufferWrap.array()) + " length : " + length);
            InputStream inputStream = socket.getInputStream();
            byte[] bArr = new byte[8];
            inputStream.read(bArr, 0, 8);
            ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr);
            byteBufferWrap2.order(byteOrder);
            int i = byteBufferWrap2.getInt(4);
            boolean z = bArr[1] == 3;
            boolean z2 = bArr[1] == 2;
            aa.d("SocketSpider", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i + " isGzip : " + z);
            byte[] bArr2 = new byte[i];
            new DataInputStream(socket.getInputStream()).readFully(bArr2);
            if (!z && i > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                z = true;
            }
            if (z2 && i == 0) {
                aVar.f6805f = 200;
                aVar.f6806g = str;
                aVar.f6804e = 0;
                try {
                    socket.close();
                    outputStream.close();
                } catch (Exception e3) {
                    aa.d("SocketSpider", e3.getMessage());
                }
                return aVar;
            }
            if (i < 1) {
                aVar.f6805f = 200;
                aVar.f6806g = str;
                aVar.f6804e = 0;
                try {
                    socket.close();
                    outputStream.close();
                } catch (Exception e4) {
                    aa.d("SocketSpider", e4.getMessage());
                }
                return aVar;
            }
            try {
                String strA = z ? a(bArr2) : new String(bArr2);
                if (!TextUtils.isEmpty(strA)) {
                    aVar.f6805f = 200;
                    aVar.f6806g = str;
                    aVar.f6804e = 0;
                    try {
                        JSONObject jSONObjectOptJSONObject = new JSONObject(strA).optJSONObject("data");
                        if (jSONObjectOptJSONObject != null) {
                            String strOptString = jSONObjectOptJSONObject.optString(WebPreferenceConstants.LOCATION);
                            if (!TextUtils.isEmpty(strOptString)) {
                                aVar.f6805f = 302;
                                aVar.a = strOptString;
                            }
                        }
                    } catch (Throwable th3) {
                        aa.d("SocketSpider", th3.getMessage());
                    }
                    try {
                        socket.close();
                        outputStream.close();
                    } catch (Exception e5) {
                        aa.d("SocketSpider", e5.getMessage());
                    }
                    return aVar;
                }
            } catch (Throwable th4) {
                aa.d("SocketSpider", th4.getMessage());
                aVar.h = th4.getMessage();
            }
            inputStream.close();
            socket.close();
            outputStream.close();
        } catch (Throwable th5) {
            th = th5;
            socket2 = socket;
            try {
                aa.a("SocketSpider", "Socket exception: " + th.getMessage());
                aVar.h = th.getMessage();
                if (socket2 != null) {
                    socket2.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                }
                return aVar;
            } finally {
            }
        }
        return aVar;
    }

    private String a(byte[] bArr) throws IOException {
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

    private JSONObject b(String str, CampaignEx campaignEx, boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            Uri uri = Uri.parse(str);
            if (uri != null) {
                String host = uri.getHost();
                String path = uri.getPath();
                String encodedQuery = uri.getEncodedQuery();
                this.c = host;
                jSONObject.put(ShareConstants.MEDIA_URI, "https://" + host + path);
                jSONObject.put("data", encodedQuery);
            }
        } catch (Throwable th) {
            aa.d("SocketSpider", th.getMessage());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (!z && !z2) {
                jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, w.l());
            }
            if (campaignEx != null) {
                if (z && campaignEx.getcUA() == 1) {
                    jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, w.l());
                }
                if (z2 && campaignEx.getImpUA() == 1) {
                    jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, w.l());
                }
            } else {
                jSONObject2.put(Command.HTTP_HEADER_USER_AGENT, w.l());
            }
            jSONObject2.put("Accept-Encoding", "gzip");
            if (this.b.V() && !TextUtils.isEmpty(str)) {
                jSONObject2.put("referer", str);
            }
            jSONObject.put("header", jSONObject2);
        } catch (Throwable th2) {
            aa.d("SocketSpider", th2.getMessage());
        }
        return jSONObject;
    }

    public final com.mbridge.msdk.click.entity.a a(String str, CampaignEx campaignEx, boolean z, boolean z2) {
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        aVar.f6806g = str;
        if (TextUtils.isEmpty(str)) {
            aVar.h = "request url can not null.";
            return aVar;
        }
        String strReplace = str.replace(" ", "%20");
        JSONObject jSONObjectB = b(strReplace, campaignEx, z, z2);
        if (jSONObjectB.length() == 0) {
            aVar.h = "request content generation failed.";
            return aVar;
        }
        if (TextUtils.isEmpty(jSONObjectB.optString(ShareConstants.MEDIA_URI))) {
            aVar.h = "request url parse error.";
            return aVar;
        }
        if (campaignEx != null) {
            int trackingTcpPort = campaignEx.getTrackingTcpPort();
            if (trackingTcpPort == 0) {
                trackingTcpPort = 9377;
            }
            this.f6818d = trackingTcpPort;
        }
        if (!TextUtils.isEmpty(this.c)) {
            return a(strReplace, jSONObjectB.toString());
        }
        aVar.h = "request url parse error.";
        return aVar;
    }
}
