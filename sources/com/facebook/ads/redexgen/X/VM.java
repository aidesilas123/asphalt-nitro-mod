package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VM implements InterfaceC1033Gc {
    public static byte[] A06;
    public static String[] A07 = {"LZDHzUEPY8huLib8qPH1v7czaaxlCYVW", "Hfajs1uaSYD8XiY9EEWii1aSJKbCXH1k", "56ilEDtV1sbTjQDLh", "Yd2dmsZ5", "tr3yrs0rtPd5aa0L", "Zl3VJckSqinxve9JbD33GDfHo4YeuNba", "", ""};
    public long A00;
    public Uri A01;
    public InputStream A02;
    public boolean A03;
    public final AssetManager A04;
    public final InterfaceC1053Gy<? super VM> A05;

    static {
        A01();
    }

    public VM(Context context, InterfaceC1053Gy<? super VM> interfaceC1053Gy) {
        this.A04 = context.getAssets();
        this.A05 = interfaceC1053Gy;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A07;
            if (strArr[6].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A07[3] = "kcdTjQCUlglhSnU2yukjc";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 41);
            i4++;
        }
    }

    public static void A01() {
        A06 = new byte[]{100, 107, -99, -86, -96, -82, -85, -91, -96, -101, -99, -81, -81, -95, -80, 107};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws GV {
        try {
            Uri uri = c1037Gg.A04;
            this.A01 = uri;
            String path = uri.getPath();
            if (path.startsWith(A00(1, 15, 19))) {
                path = path.substring(15);
            } else if (path.startsWith(A00(0, 1, 12))) {
                path = path.substring(1);
            }
            InputStream inputStreamOpen = this.A04.open(path, 1);
            this.A02 = inputStreamOpen;
            if (inputStreamOpen.skip(c1037Gg.A03) < c1037Gg.A03) {
                throw new EOFException();
            }
            if (c1037Gg.A02 != -1) {
                this.A00 = c1037Gg.A02;
            } else {
                long jAvailable = this.A02.available();
                this.A00 = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.A00 = -1L;
                }
            }
            this.A03 = true;
            InterfaceC1053Gy<? super VM> interfaceC1053Gy = this.A05;
            if (interfaceC1053Gy != null) {
                interfaceC1053Gy.ADF(this, c1037Gg);
            }
            return this.A00;
        } catch (IOException e2) {
            throw new GV(e2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws GV {
        this.A01 = null;
        try {
            try {
                InputStream inputStream = this.A02;
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e2) {
                throw new GV(e2);
            }
        } finally {
            this.A02 = null;
            if (this.A03) {
                this.A03 = false;
                InterfaceC1053Gy<? super VM> interfaceC1053Gy = this.A05;
                if (interfaceC1053Gy != null) {
                    interfaceC1053Gy.ADE(this);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws GV {
        if (i2 == 0) {
            return 0;
        }
        long j = this.A00;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e2) {
                throw new GV(e2);
            }
        }
        int i3 = this.A02.read(bArr, i, i2);
        if (i3 == -1) {
            if (this.A00 == -1) {
                return -1;
            }
            throw new GV(new EOFException());
        }
        long j2 = this.A00;
        if (j2 != -1) {
            long j3 = i3;
            if (A07[3].length() == 13) {
                throw new RuntimeException();
            }
            A07[4] = "Doxe12teItAf98KBLMhQOs4gzgBHzz";
            this.A00 = j2 - j3;
        }
        InterfaceC1053Gy<? super VM> interfaceC1053Gy = this.A05;
        if (interfaceC1053Gy != null) {
            interfaceC1053Gy.AAm(this, i3);
        }
        return i3;
    }
}
