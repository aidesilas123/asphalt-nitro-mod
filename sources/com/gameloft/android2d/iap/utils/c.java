package com.gameloft.android2d.iap.utils;

import android.os.Build;
import android.text.TextUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.gameloft.android2d.iap.IAPLib;
import com.gameloft.android2d.iap.Links;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketException;
import java.net.URL;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: compiled from: HTTP.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements Runnable {
    public static final String[] a = {"GET", "POST", "PUT"};
    private XPlayer b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2900e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f2901f;
    private String i;
    private String j;
    public String p;
    private b c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2899d = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f2902g = 16;
    private Thread h = null;
    private HttpURLConnection k = null;
    private HttpURLConnection l = null;
    private HttpsURLConnection m = null;
    private InputStream n = null;
    private OutputStream o = null;
    boolean q = false;
    public boolean r = false;

    public c(XPlayer xPlayer, boolean z, String str) {
        this.b = null;
        this.f2901f = "";
        this.b = xPlayer;
        this.f2900e = z;
        this.f2901f = str;
    }

    private boolean a() {
        return this.i.indexOf("https") != -1;
    }

    private void d() {
        this.c.b();
    }

    public void b() {
        HttpURLConnection httpURLConnection = this.k;
        if (httpURLConnection != null) {
            try {
                synchronized (httpURLConnection) {
                    this.n.close();
                }
            } catch (Exception unused) {
            }
            try {
                synchronized (this.k) {
                    this.k.disconnect();
                }
            } catch (Exception unused2) {
            }
            int i = this.f2899d;
            if (i == 1 || i == 2) {
                try {
                    synchronized (this.o) {
                        this.o.close();
                    }
                } catch (Exception unused3) {
                }
                this.o = null;
            }
        }
        this.n = null;
        this.k = null;
        this.h = null;
        System.gc();
        this.q = false;
    }

    public boolean c() {
        return this.q;
    }

    public void e(String str, String str2) {
        while (this.q) {
            try {
                if (System.currentTimeMillis() - this.b.k > ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                    b();
                }
                synchronized (this) {
                    wait(50L);
                }
            } catch (Exception unused) {
            }
        }
        this.q = true;
        int i = this.f2899d;
        if (i == 1 || i == 2) {
            this.i = str;
            this.j = str2;
        } else if (str.indexOf("?") != -1) {
            this.i = str + o2.i.c + str2;
        } else {
            this.i = str + "?" + str2;
        }
        if (XPlayer.f2892d.equals("TextHtml") || XPlayer.f2892d.equals("texthtml") || XPlayer.f2892d.equals("TEXTHTML")) {
            this.i += "&texthtml=1";
        } else if (XPlayer.f2892d.equals("TextPlain") || XPlayer.f2892d.equals("textplain") || XPlayer.f2892d.equals("TEXTPLAIN")) {
            this.i += "&textplain=1";
        }
        Thread thread = this.h;
        if (thread != null) {
            try {
                thread.join();
            } catch (Exception unused2) {
            }
        }
        b bVar = new b();
        this.c = bVar;
        bVar.a(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, this);
        this.r = false;
        Thread thread2 = new Thread(this);
        this.h = thread2;
        thread2.start();
    }

    public void f(int i) {
        this.f2899d = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        boolean z2;
        if (!a()) {
            int i = this.f2899d;
            if ((i == 1 || i == 2) && this.j == null) {
                b();
                this.r = true;
                this.q = false;
                d();
                return;
            }
            try {
                try {
                    this.r = false;
                    a carrier = XPlayer.getCarrier();
                    System.setProperty("http.keepAlive", "false");
                    URL url = new URL(this.i);
                    if (carrier.f() && SUtils.isUsing3G()) {
                        this.l = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(InetAddress.getByName(carrier.b()), carrier.a())));
                    } else {
                        this.l = (HttpURLConnection) url.openConnection();
                    }
                    this.l.setRequestMethod(a[this.f2899d]);
                    this.l.setDoInput(true);
                    int i2 = this.f2899d;
                    if (i2 == 1 || i2 == 2) {
                        this.l.setDoOutput(true);
                    }
                    this.l.setRequestProperty("Connection", "close");
                    String str = IAPLib.m;
                    if (str == null || str.equals("")) {
                        HttpURLConnection httpURLConnection = this.l;
                        String stringRS = SUtils.getStringRS(R.string.k_headerUserAgent);
                        XPlayer.getDevice();
                        httpURLConnection.setRequestProperty(stringRS, Device.getUserAgent());
                    } else {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerUserAgent), IAPLib.m);
                    }
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerBuildModel), Build.MODEL);
                    HttpURLConnection httpURLConnection2 = this.l;
                    String stringRS2 = SUtils.getStringRS(R.string.k_headerSubno);
                    XPlayer.getDevice();
                    httpURLConnection2.setRequestProperty(stringRS2, Device.getLineNumber());
                    if (IAPLib.Get_HDIDFV_Update() != 2) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerIMEI), XPlayer.getDevice().d());
                    }
                    if (IAPLib.Get_HDIDFV_Update() != 0) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerHDIDFV), XPlayer.getDevice().c());
                    }
                    if (SUtils.isUsingWIFI()) {
                        if (SUtils.GetSerialKey() != null) {
                            this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerD), SUtils.GetSerialKey());
                        }
                        HttpURLConnection httpURLConnection3 = this.l;
                        String stringRS3 = SUtils.getStringRS(R.string.k_headerLineID);
                        XPlayer.getDevice();
                        httpURLConnection3.setRequestProperty(stringRS3, Device.getLineNumber());
                        HttpURLConnection httpURLConnection4 = this.l;
                        String stringRS4 = SUtils.getStringRS(R.string.k_headerMSISDN);
                        XPlayer.getDevice();
                        httpURLConnection4.setRequestProperty(stringRS4, Device.getLineNumber());
                    }
                    String strIAP_GetUserCredential = Links.IAP_GetUserCredential();
                    if (TextUtils.isEmpty(strIAP_GetUserCredential) || strIAP_GetUserCredential.equalsIgnoreCase("null:null")) {
                        strIAP_GetUserCredential = "";
                    }
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerCredential), strIAP_GetUserCredential);
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerFedClientID), Links.IAP_GetClientId());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerFederationDC), Links.IAP_GetDatacenter());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimOperator), XPlayer.getDevice().k());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimOperatorName), XPlayer.getDevice().l());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimCountryIso), XPlayer.getDevice().j());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkOperator), XPlayer.getDevice().g());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkOperatorName), XPlayer.getDevice().h());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkCountryIso), XPlayer.getDevice().f());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkRoaming), XPlayer.getDevice().e() + "");
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerTime), "1");
                    String jADProperty = SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameGGI));
                    if (jADProperty == null) {
                        jADProperty = "0";
                    }
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerGGI), jADProperty);
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerPurchaseID), RMS.getWAPPurchaseID());
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerAccept), IAPLib.Z);
                    this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerIfNoneMatch), IAPLib.T);
                    if (IAPLib.d0) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppVersion), IAPLib.getVersionNumber());
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppProductId), SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameProductId)));
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppNounce), this.b.b());
                    }
                    if (!this.f2901f.equalsIgnoreCase("")) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerAcceptEncoding), this.f2901f);
                    }
                    String strIAP_GetAnonymousCredential = Links.IAP_GetAnonymousCredential();
                    if (!TextUtils.isEmpty(strIAP_GetAnonymousCredential) && !strIAP_GetAnonymousCredential.equalsIgnoreCase("null:null")) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerGLAnonCredentials), strIAP_GetAnonymousCredential);
                    }
                    int i3 = this.f2899d;
                    if (i3 == 1 || i3 == 2) {
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerContentType), IAPLib.a0);
                        String str2 = this.f2900e ? "b=" + this.j : this.j;
                        this.l.setRequestProperty(SUtils.getStringRS(R.string.k_headerContentLength), String.valueOf(str2.length()));
                        OutputStream outputStream = this.l.getOutputStream();
                        this.o = outputStream;
                        outputStream.write(str2.getBytes(), 0, str2.length());
                        this.o.flush();
                    }
                    String headerField = this.l.getHeaderField(SUtils.getStringRS(R.string.k_headerEtag));
                    if (headerField != null) {
                        IAPLib.T = headerField;
                    }
                    if (IAPLib.d0) {
                        this.b.q(this.l.getHeaderField(SUtils.getStringRS(R.string.k_headerXInAppHash)));
                    }
                    this.b.r(SUtils.convertInputStreamToString(this.l.getErrorStream()));
                    if (TextUtils.isEmpty(this.b.f("message")) || this.l.getResponseCode() != 409) {
                        this.b.s(this.l.getResponseCode());
                    } else {
                        this.b.s(429);
                    }
                } catch (Exception unused) {
                    this.r = true;
                    z2 = false;
                    this.q = false;
                }
            } catch (SocketException unused2) {
                z2 = false;
            } catch (UnknownHostException unused3) {
                z2 = false;
            }
            if (this.l.getResponseCode() != 200 && this.l.getResponseCode() != 201) {
                b();
                this.r = true;
                z2 = false;
                try {
                    this.q = false;
                    d();
                    return;
                } catch (SocketException unused4) {
                    this.r = true;
                    this.q = z2;
                    this.b.s(-2);
                    b();
                    this.q = z2;
                    d();
                    return;
                } catch (UnknownHostException unused5) {
                    this.r = true;
                    this.q = z2;
                    this.b.s(-2);
                    b();
                    this.q = z2;
                    d();
                    return;
                }
            }
            synchronized (this.l) {
                this.n = this.l.getInputStream();
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            int i4 = 16;
            byte[] bArr = new byte[16];
            int i5 = 0;
            while (i5 != -1) {
                i5 = this.n.read(bArr, 0, i4);
                if (i5 != -1) {
                    byteArrayOutputStream.write(bArr, 0, i5);
                }
                i4 = 16;
            }
            if (this.f2901f.equalsIgnoreCase("")) {
                this.p = byteArrayOutputStream.toString();
            } else {
                this.p = GZip.Decompress(byteArrayOutputStream.toByteArray());
            }
            this.b.r(this.p);
            z2 = false;
            b();
            this.q = z2;
            d();
            return;
        }
        int i6 = this.f2899d;
        if ((i6 == 1 || i6 == 2) && this.j == null) {
            b();
            this.r = true;
            this.q = false;
            d();
            return;
        }
        try {
            try {
                this.r = false;
                a carrier2 = XPlayer.getCarrier();
                System.setProperty("http.keepAlive", "false");
                URL url2 = new URL(this.i);
                if (carrier2.f() && SUtils.isUsing3G()) {
                    this.m = (HttpsURLConnection) url2.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(InetAddress.getByName(carrier2.b()), carrier2.a())));
                } else {
                    this.m = (HttpsURLConnection) url2.openConnection();
                }
                this.m.setRequestMethod(a[this.f2899d]);
                this.m.setDoInput(true);
                int i7 = this.f2899d;
                if (i7 == 1 || i7 == 2) {
                    this.m.setDoOutput(true);
                }
                this.m.setRequestProperty("Connection", "close");
                String str3 = IAPLib.m;
                if (str3 == null || str3.equals("")) {
                    HttpsURLConnection httpsURLConnection = this.m;
                    String stringRS5 = SUtils.getStringRS(R.string.k_headerUserAgent);
                    XPlayer.getDevice();
                    httpsURLConnection.setRequestProperty(stringRS5, Device.getUserAgent());
                } else {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerUserAgent), IAPLib.m);
                }
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerBuildModel), Build.MODEL);
                HttpsURLConnection httpsURLConnection2 = this.m;
                String stringRS6 = SUtils.getStringRS(R.string.k_headerSubno);
                XPlayer.getDevice();
                httpsURLConnection2.setRequestProperty(stringRS6, Device.getLineNumber());
                if (IAPLib.Get_HDIDFV_Update() != 2) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerIMEI), XPlayer.getDevice().d());
                }
                if (IAPLib.Get_HDIDFV_Update() != 0) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerHDIDFV), XPlayer.getDevice().c());
                }
                if (SUtils.isUsingWIFI()) {
                    if (SUtils.GetSerialKey() != null) {
                        this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerD), SUtils.GetSerialKey());
                    }
                    HttpsURLConnection httpsURLConnection3 = this.m;
                    String stringRS7 = SUtils.getStringRS(R.string.k_headerLineID);
                    XPlayer.getDevice();
                    httpsURLConnection3.setRequestProperty(stringRS7, Device.getLineNumber());
                    HttpsURLConnection httpsURLConnection4 = this.m;
                    String stringRS8 = SUtils.getStringRS(R.string.k_headerMSISDN);
                    XPlayer.getDevice();
                    httpsURLConnection4.setRequestProperty(stringRS8, Device.getLineNumber());
                }
                String strIAP_GetUserCredential2 = Links.IAP_GetUserCredential();
                if (TextUtils.isEmpty(strIAP_GetUserCredential2) || strIAP_GetUserCredential2.equalsIgnoreCase("null:null")) {
                    strIAP_GetUserCredential2 = "";
                }
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerCredential), strIAP_GetUserCredential2);
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerFedClientID), Links.IAP_GetClientId());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerFederationDC), Links.IAP_GetDatacenter());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimOperator), XPlayer.getDevice().k());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimOperatorName), XPlayer.getDevice().l());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerSimCountryIso), XPlayer.getDevice().j());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkOperator), XPlayer.getDevice().g());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkOperatorName), XPlayer.getDevice().h());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkCountryIso), XPlayer.getDevice().f());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerNetworkRoaming), XPlayer.getDevice().e() + "");
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerTime), "1");
                String jADProperty2 = SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameGGI));
                if (jADProperty2 == null) {
                    jADProperty2 = "0";
                }
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerGGI), jADProperty2);
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerPurchaseID), RMS.getWAPPurchaseID());
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerAccept), IAPLib.Z);
                this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerIfNoneMatch), IAPLib.T);
                if (IAPLib.d0) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerXApp), IAPLib.getDemoCode());
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppVersion), IAPLib.getVersionNumber());
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppProductId), SUtils.getJADProperty(SUtils.getStringRS(R.string.k_getJADGameProductId)));
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAppNounce), this.b.b());
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerXAmazonUserId), RMS.getUserID());
                }
                if (!this.f2901f.equalsIgnoreCase("")) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerAcceptEncoding), this.f2901f);
                }
                String strIAP_GetAnonymousCredential2 = Links.IAP_GetAnonymousCredential();
                if (!TextUtils.isEmpty(strIAP_GetAnonymousCredential2) && !strIAP_GetAnonymousCredential2.equalsIgnoreCase("null:null")) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerGLAnonCredentials), strIAP_GetAnonymousCredential2);
                }
                int i8 = this.f2899d;
                if (i8 == 1 || i8 == 2) {
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerContentType), IAPLib.a0);
                    String str4 = this.f2900e ? "b=" + this.j : this.j;
                    this.m.setRequestProperty(SUtils.getStringRS(R.string.k_headerContentLength), String.valueOf(str4.length()));
                    OutputStream outputStream2 = this.m.getOutputStream();
                    this.o = outputStream2;
                    outputStream2.write(str4.getBytes(), 0, str4.length());
                    this.o.flush();
                }
                String headerField2 = this.m.getHeaderField(SUtils.getStringRS(R.string.k_headerEtag));
                if (headerField2 != null) {
                    IAPLib.T = headerField2;
                }
                if (IAPLib.d0) {
                    this.b.q(this.m.getHeaderField(SUtils.getStringRS(R.string.k_headerXInAppHash)));
                }
                this.b.r(SUtils.convertInputStreamToString(this.m.getErrorStream()));
                if (TextUtils.isEmpty(this.b.f("message")) || this.m.getResponseCode() != 409) {
                    this.b.s(this.m.getResponseCode());
                } else {
                    this.b.s(429);
                }
            } catch (Exception unused6) {
                this.r = true;
                z = false;
                this.q = false;
            }
        } catch (SocketException unused7) {
            z = false;
        } catch (UnknownHostException unused8) {
            z = false;
        }
        if (this.m.getResponseCode() != 200 && this.m.getResponseCode() != 201) {
            b();
            this.r = true;
            z = false;
            try {
                this.q = false;
                d();
                return;
            } catch (SocketException unused9) {
                this.r = true;
                this.q = z;
                this.b.s(-2);
                b();
                this.q = z;
                d();
            } catch (UnknownHostException unused10) {
                this.r = true;
                this.q = z;
                this.b.s(-2);
                b();
                this.q = z;
                d();
            }
        }
        synchronized (this.m) {
            this.n = this.m.getInputStream();
        }
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[16];
        int i9 = 0;
        while (i9 != -1) {
            i9 = this.n.read(bArr2, 0, 16);
            if (i9 != -1) {
                byteArrayOutputStream2.write(bArr2, 0, i9);
            }
        }
        if (this.f2901f.equalsIgnoreCase("")) {
            this.p = byteArrayOutputStream2.toString();
        } else {
            this.p = GZip.Decompress(byteArrayOutputStream2.toByteArray());
        }
        this.b.r(this.p);
        for (int i10 = 0; i10 < this.p.split("\n").length; i10++) {
        }
        z = false;
        b();
        this.q = z;
        d();
    }
}
