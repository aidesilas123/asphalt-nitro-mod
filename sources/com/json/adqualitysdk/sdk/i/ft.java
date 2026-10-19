package com.json.adqualitysdk.sdk.i;

import android.graphics.ImageFormat;
import android.media.AudioTrack;
import android.os.Process;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.amazon.device.ads.DTBAdRequest;
import com.json.adqualitysdk.sdk.i.iw;

/* JADX INFO: loaded from: classes4.dex */
public final class ft implements gd {
    private static char[] a = {37693, 31243, 16711, 10462, 14295, 7441, 58467, 62386, 56033, 41018, 36660, 38468, 32131, 17626, 21019, 14683, 155, 61354, 62763, 56436, 43941, 45746, 39398, 26428, 20076, 21941, 15582, 2578, 4451, 63677, 51175, 44349, 46189, 33616, 'c', 59733, 53786, 48064, 42125, 36417, 30504, 24825, 18850, 13177, 7275, 1311, 61141, 55187, 49494, 43529, 37838, 31931, 26212, 20285, 24834, 34849, 45937, 17031, 43953, 37107, 63794, 58977, 52394, 13787, 8704, 2885};
    private static long b = -5319974775359674054L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5642d = 1;

    private static String a(int i, int i2, char c2) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) a[i2 + i3]) ^ (((long) i3) * b)) ^ ((long) c2));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻐ */
    public final Class mo716() {
        int i = f5642d;
        int i2 = i + 119;
        c = i2 % 128;
        int i3 = i2 % 2;
        int i4 = i + 13;
        c = i4 % 128;
        int i5 = i4 % 2;
        return DTBAdRequest.class;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﻛ */
    public final String mo717() {
        int i = c + 31;
        f5642d = i % 128;
        int i2 = i % 2;
        String strIntern = a(34 - (ViewConfiguration.getTapTimeout() >> 16), (-1) - TextUtils.lastIndexOf("", '0', 0), (char) (37726 - TextUtils.indexOf("", ""))).intern();
        int i3 = c + 57;
        f5642d = i3 % 128;
        if ((i3 % 2 == 0 ? (char) 11 : (char) 30) == 30) {
            return strIntern;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ｋ */
    public final iw.e mo718() {
        iw.e eVar = new iw.e(a(19 - TextUtils.lastIndexOf("", '0', 0), (ViewConfiguration.getKeyRepeatTimeout() >> 16) + 34, (char) (Process.myPid() >> 22)).intern(), a(2 - ImageFormat.getBitsPerPixel(0), (ViewConfiguration.getMaximumFlingVelocity() >> 16) + 54, (char) (24885 - (AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)))).intern());
        int i = c + 49;
        f5642d = i % 128;
        if ((i % 2 == 0 ? 'T' : '\'') != 'T') {
            return eVar;
        }
        int i2 = 24 / 0;
        return eVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾇ */
    public final az mo719() {
        bg bgVar = new bg(a(9 - (ViewConfiguration.getFadingEdgeLength() >> 16), 57 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (char) (17126 - View.MeasureSpec.makeMeasureSpec(0, 0))).intern());
        int i = f5642d + 45;
        c = i % 128;
        int i2 = i % 2;
        return bgVar;
    }

    @Override // com.json.adqualitysdk.sdk.i.gd
    /* JADX INFO: renamed from: ﾒ */
    public final String mo720() {
        int i = f5642d + 33;
        c = i % 128;
        int i2 = i % 2;
        String strIntern = a(10 - (AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)), 57 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24), (char) (17126 - KeyEvent.getDeadChar(0, 0))).intern();
        int i3 = f5642d + 61;
        c = i3 % 128;
        if (i3 % 2 == 0) {
            return strIntern;
        }
        throw null;
    }
}
