package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.offline.DownloadAction;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.De, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0959De {
    public static byte[] A02;
    public final HK A00;
    public final File A01;

    static {
        A01();
    }

    public C0959De(File file) {
        this.A01 = file;
        this.A00 = new HK(file);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-101, -76, -71, -69, -74, -74, -75, -72, -70, -85, -86, 102, -89, -87, -70, -81, -75, -76, 102, -84, -81, -78, -85, 102, -68, -85, -72, -71, -81, -75, -76, -128, 102};
    }

    public final void A02(DownloadAction... downloadActionArr) throws IOException {
        DataOutputStream dataOutputStream = null;
        try {
            dataOutputStream = new DataOutputStream(this.A00.A03());
            dataOutputStream.writeInt(0);
            dataOutputStream.writeInt(downloadActionArr.length);
            for (DownloadAction downloadAction : downloadActionArr) {
                DownloadAction.A03(downloadAction, dataOutputStream);
            }
            this.A00.A06(dataOutputStream);
            C1078Hx.A0X(null);
        } catch (Throwable th) {
            C1078Hx.A0X(dataOutputStream);
            throw th;
        }
    }

    public final DownloadAction[] A03(DownloadAction.Deserializer... deserializerArr) throws IOException {
        if (!this.A01.exists()) {
            return new DownloadAction[0];
        }
        try {
            InputStream inputStreamA04 = this.A00.A04();
            DataInputStream dataInputStream = new DataInputStream(inputStreamA04);
            int i = dataInputStream.readInt();
            if (i > 0) {
                throw new IOException(A00(0, 33, 26) + i);
            }
            int i2 = dataInputStream.readInt();
            DownloadAction[] downloadActionArr = new DownloadAction[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                downloadActionArr[i3] = DownloadAction.A00(deserializerArr, dataInputStream);
            }
            C1078Hx.A0X(inputStreamA04);
            return downloadActionArr;
        } catch (Throwable th) {
            C1078Hx.A0X(null);
            throw th;
        }
    }
}
