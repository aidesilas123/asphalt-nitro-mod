package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1067Hm implements InterfaceC1306Qw {
    public static byte[] A01;
    public static String[] A02 = {"rzjVC70O4bd9DzHjbWZgWXgUSmVLYSU4", "d5zo8W4K", "Hv98ROwnq0amXTKQof8zpMynpU6nXYzw", "m02wtPmJvn7xvEVIhgILVdsvYaekd1y1", "NwXA6aDXoJPzKJxJycW", "lujFiBBwg3lGF", "5iNla1hEs57TMoL8Mlh58N0Q757SBHKY", "iek06qmxI9TIJY"};
    public final InterfaceC1307Qx A00;

    static {
        A01();
    }

    public AbstractC1067Hm(InterfaceC1307Qx interfaceC1307Qx) {
        this.A00 = interfaceC1307Qx;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{89, 123, 123, 125, -120, -116, 69, 91, -128, 121, -118, -117, 125, -116, -98, -67, -49, -59, -65, -82, -63, -51, -47, -63, -49, -48, -92, -67, -54, -64, -56, -63, -50, -118, -53, -54, -95, -50, -50, -53, -50, -102, -58, -59, -53, -68, -59, -53, -124, -85, -48, -57, -68, -71, -72, -86, -111, -100};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final boolean ABK(C1304Qu c1304Qu) {
        InterfaceC1290Qg interfaceC1290QgA00 = c1304Qu.A00();
        if (this.A00.A8x()) {
            Log.e(AbstractC1067Hm.class.getSimpleName(), A00(14, 27, 78), c1304Qu);
        }
        return interfaceC1290QgA00 != null && interfaceC1290QgA00.A7v() > 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final HttpURLConnection ADe(String str, Proxy proxy) throws IOException {
        URL url = new URL(str);
        return proxy == null ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(proxy);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final InputStream ADf(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getInputStream();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final OutputStream ADg(HttpURLConnection httpURLConnection) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final void ADw(HttpURLConnection httpURLConnection, EnumC1302Qs enumC1302Qs, String str) throws IOException {
        httpURLConnection.setRequestMethod(enumC1302Qs.A02());
        httpURLConnection.setDoOutput(enumC1302Qs.A04());
        httpURLConnection.setDoInput(enumC1302Qs.A03());
        if (str != null) {
            httpURLConnection.setRequestProperty(A00(41, 12, 73), str);
        }
        httpURLConnection.setRequestProperty(A00(0, 14, 10), A00(53, 5, 86));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final byte[] AEG(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[16384];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                byteArrayOutputStream.flush();
                return byteArrayOutputStream.toByteArray();
            }
            if (A02[4].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "eO7qbggyddGiOQuVn8N8jDULGwym82oB";
            strArr[6] = "iN6CFd4LV6hdOWp44ZZbGtT2nODAuDvC";
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1306Qw
    public final void AGV(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(bArr);
    }
}
