package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.os.Process;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class du extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f5575e = 1325939519;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5576f = 91;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5577g = 1605412054;
    private static byte[] h = {0, 0};
    private static short[] i = null;
    private static int j = 0;
    private static int k = 1;
    private dx[] l;

    public du(List<dx> list, Cdo cdo) {
        super(cdo);
        dx[] dxVarArr = new dx[list.size()];
        this.l = dxVarArr;
        list.toArray(dxVarArr);
    }

    private static String c(int i2, int i3, byte b, short s, int i4) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i5 = f5576f;
            int i6 = i2 + i5;
            boolean z = i6 == -1;
            if (z) {
                byte[] bArr = h;
                i6 = bArr != null ? (byte) (bArr[f5575e + i4] + i5) : (short) (i[f5575e + i4] + i5);
            }
            if (i6 > 0) {
                n.f136 = ((i4 + i6) - 2) + f5575e + (z ? 1 : 0);
                n.f135 = b;
                char c = (char) (i3 + f5577g);
                n.f133 = c;
                sb.append(c);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i6) {
                    byte[] bArr2 = h;
                    if (bArr2 != null) {
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i7] + s)) ^ n.f135));
                    } else {
                        short[] sArr = i;
                        int i8 = n.f136;
                        n.f136 = i8 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i8] + s)) ^ n.f135));
                    }
                    sb.append(n.f133);
                    n.f134 = n.f133;
                    n.f137++;
                }
            }
            string = sb.toString();
        }
        return string;
    }

    public final boolean equals(Object obj) {
        int i2 = j + 95;
        k = i2 % 128;
        int i3 = i2 % 2;
        if (!(this != obj)) {
            return true;
        }
        if (obj != null) {
            if ((du.class != obj.getClass() ? '\"' : 'L') != '\"') {
                boolean zEquals = Arrays.equals(this.l, ((du) obj).l);
                int i4 = j + 61;
                k = i4 % 128;
                int i5 = i4 % 2;
                return zEquals;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = k + 3;
        j = i2 % 128;
        int i3 = i2 % 2;
        int iHashCode = Arrays.hashCode(this.l);
        int i4 = k + 53;
        j = i4 % 128;
        int i5 = i4 % 2;
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c((-89) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), ((Process.getThreadPriority(0) + 20) >> 6) - 1605411963, (byte) TextUtils.getOffsetAfter("", 0), (short) ((-1) - ImageFormat.getBitsPerPixel(0)), (-1325939520) - TextUtils.lastIndexOf("", '0')).intern());
        sb.append(dx.a(this.l));
        sb.append(c((-90) - Gravity.getAbsoluteGravity(0, 0), (-1605411960) - (ViewConfiguration.getZoomControlsTimeout() > 0L ? 1 : (ViewConfiguration.getZoomControlsTimeout() == 0L ? 0 : -1)), (byte) View.getDefaultSize(0, 0), (short) ((-1) - Process.getGidForName("")), (KeyEvent.getMaxKeyCode() >> 16) - 1325939519).intern());
        String string = sb.toString();
        int i2 = j + 83;
        k = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        return string;
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        ArrayList arrayList = new ArrayList();
        dx[] dxVarArr = this.l;
        int length = dxVarArr.length;
        int i2 = 0;
        while (true) {
            if ((i2 < length ? '%' : (char) 27) != '%') {
                return new dp(arrayList);
            }
            int i3 = j + 43;
            k = i3 % 128;
            int i4 = i3 % 2;
            arrayList.add(dxVarArr[i2].m702(drVar, cjVar).m674());
            i2++;
            int i5 = k + 63;
            j = i5 % 128;
            int i6 = i5 % 2;
        }
    }
}
