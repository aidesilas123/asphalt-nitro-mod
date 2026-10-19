package com.json.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import android.os.Process;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.applovin.exoplayer2.common.base.Ascii;

/* JADX INFO: loaded from: classes4.dex */
public final class gx extends gv<MediaPlayer.OnPreparedListener> implements MediaPlayer.OnPreparedListener {
    private static int b = -115976194;
    private static int c = 65;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5695d = 301228652;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static byte[] f5696e = {3, -5, 19, -17, 3, Ascii.FF, -2, 33, -46, Ascii.CR, -9, 9, -15, 1, 10, Ascii.GS, -24, -1, -13, 17, -15, Ascii.VT, -13, 34, -30, Ascii.US, -1, -13, 17, -15, Ascii.VT, -13, 34, -30, -1, 79, -82, Ascii.CR, -9, 9, -15, 1, 10, Ascii.GS, -22, Ascii.SO, -25, 77, -78, 5, 73, -82, 3, -3, 0, 45, 0, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static short[] f5697f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5698g = 0;
    private static int h = 1;
    private d i;

    public interface d {
        /* JADX INFO: renamed from: ﾇ */
        void mo566(gx gxVar, MediaPlayer mediaPlayer);
    }

    public gx(MediaPlayer.OnPreparedListener onPreparedListener, d dVar) {
        super(onPreparedListener);
        this.i = dVar;
    }

    private static String a(int i, int i2, byte b2, short s, int i3) {
        String string;
        synchronized (n.f132) {
            StringBuilder sb = new StringBuilder();
            int i4 = c;
            int i5 = i + i4;
            boolean z = i5 == -1;
            if (z) {
                byte[] bArr = f5696e;
                i5 = bArr != null ? (byte) (bArr[b + i3] + i4) : (short) (f5697f[b + i3] + i4);
            }
            if (i5 > 0) {
                n.f136 = ((i3 + i5) - 2) + b + (z ? 1 : 0);
                n.f135 = b2;
                char c2 = (char) (i2 + f5695d);
                n.f133 = c2;
                sb.append(c2);
                n.f134 = n.f133;
                n.f137 = 1;
                while (n.f137 < i5) {
                    byte[] bArr2 = f5696e;
                    if (bArr2 != null) {
                        int i6 = n.f136;
                        n.f136 = i6 - 1;
                        n.f133 = (char) (n.f134 + (((byte) (bArr2[i6] + s)) ^ n.f135));
                    } else {
                        short[] sArr = f5697f;
                        int i7 = n.f136;
                        n.f136 = i7 - 1;
                        n.f133 = (char) (n.f134 + (((short) (sArr[i7] + s)) ^ n.f135));
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

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        int i = h + 103;
        f5698g = i % 128;
        int i2 = i % 2;
        try {
            this.i.mo566(this, mediaPlayer);
        } catch (Throwable th) {
            jy.m987(a((ViewConfiguration.getMaximumFlingVelocity() >> 16) - 38, (-301228574) - MotionEvent.axisFromString(""), (byte) ((-1) - TextUtils.indexOf((CharSequence) "", '0')), (short) Gravity.getAbsoluteGravity(0, 0), 115976194 - Gravity.getAbsoluteGravity(0, 0)).intern(), a((-34) - ((Process.getThreadPriority(0) + 20) >> 6), TextUtils.getCapsMode("", 0, 0) - 301228583, (byte) (TextUtils.lastIndexOf("", '0', 0) + 1), (short) View.MeasureSpec.getSize(0), (Process.getElapsedCpuTime() > 0L ? 1 : (Process.getElapsedCpuTime() == 0L ? 0 : -1)) + 115976219).intern(), th, false);
        }
        if (!(mo406() == null)) {
            int i3 = h + 59;
            f5698g = i3 % 128;
            if (i3 % 2 == 0) {
                mo406().onPrepared(mediaPlayer);
            } else {
                mo406().onPrepared(mediaPlayer);
                throw null;
            }
        }
    }
}
