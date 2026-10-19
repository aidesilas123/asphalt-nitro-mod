package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public interface InterfaceC1306Qw {
    boolean ABK(C1304Qu c1304Qu);

    HttpURLConnection ADe(String str, Proxy proxy) throws IOException;

    InputStream ADf(HttpURLConnection httpURLConnection) throws IOException;

    OutputStream ADg(HttpURLConnection httpURLConnection) throws IOException;

    void ADw(HttpURLConnection httpURLConnection, EnumC1302Qs enumC1302Qs, String str) throws IOException;

    byte[] AEG(InputStream inputStream) throws IOException;

    void AGV(OutputStream outputStream, byte[] bArr) throws IOException;
}
