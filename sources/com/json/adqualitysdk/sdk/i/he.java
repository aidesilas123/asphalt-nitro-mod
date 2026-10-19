package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class he extends gv<MediaPlayer.OnSeekCompleteListener> implements MediaPlayer.OnSeekCompleteListener {
    private static int b = 197;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5721d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f5722e;

    public interface a {
        /* JADX INFO: renamed from: ﾒ */
        void mo570(he heVar, MediaPlayer mediaPlayer);
    }

    public he(MediaPlayer.OnSeekCompleteListener onSeekCompleteListener, a aVar) {
        super(onSeekCompleteListener);
        this.f5722e = aVar;
    }

    private static String a(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - b);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public final void onSeekComplete(MediaPlayer mediaPlayer) {
        try {
            this.f5722e.mo570(this, mediaPlayer);
            int i = c + 51;
            f5721d = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(a(299 - View.MeasureSpec.getMode(0), true, 11 - (SystemClock.elapsedRealtime() > 0L ? 1 : (SystemClock.elapsedRealtime() == 0L ? 0 : -1)), 31 - TextUtils.indexOf("", ""), "\n\u0007\t\uffdd\u0005\uffff\uffff￭\b￩\f\t\u000e\ufffb\f\t�\uffff\uffde\f\uffff\b\uffff\u000e\r\u0003￦\uffff\u000e\uffff\u0006").intern(), a((AudioTrack.getMaxVolume() > 0.0f ? 1 : (AudioTrack.getMaxVolume() == 0.0f ? 0 : -1)) + 293, false, 10 - (ViewConfiguration.getJumpTapTimeout() >> 16), Color.alpha(0) + 35, "\u0004\n￢\u000e\f\u000f\u000b\u0004\u0013\u0004￤\u0011\u0011\u000e\u0011\uffbf\b\r\uffbf\f\ufff3\u0001￫\b\u0012\u0013\u0004\r\u0004\u0011\uffbf\u000e\r\ufff2\u0004").intern(), th, false);
        }
        if (mo406() != null) {
            mo406().onSeekComplete(mediaPlayer);
            int i3 = f5721d + 21;
            c = i3 % 128;
            int i4 = i3 % 2;
        }
    }
}
