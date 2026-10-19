package com.json.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import android.os.Process;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes4.dex */
public final class gz extends gv<MediaPlayer.OnInfoListener> implements MediaPlayer.OnInfoListener {
    private static char b = 50616;
    private static char c = 18559;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static char f5699d = 32377;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char f5700e = 3763;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f5701f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5702g = 1;
    private e h;

    public interface e {
        /* JADX INFO: renamed from: ﾇ */
        boolean mo567(gz gzVar, MediaPlayer mediaPlayer, int i, int i2);
    }

    public gz(MediaPlayer.OnInfoListener onInfoListener, e eVar) {
        super(onInfoListener);
        this.h = eVar;
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (o.f139) {
            char[] cArr2 = new char[cArr.length];
            o.f138 = 0;
            char[] cArr3 = new char[2];
            while (true) {
                int i2 = o.f138;
                if (i2 < cArr.length) {
                    cArr3[0] = cArr[i2];
                    cArr3[1] = cArr[i2 + 1];
                    int i3 = 58224;
                    for (int i4 = 0; i4 < 16; i4++) {
                        cArr3[1] = (char) (cArr3[1] - (((cArr3[0] + i3) ^ ((cArr3[0] << 4) + f5699d)) ^ ((cArr3[0] >>> 5) + f5700e)));
                        cArr3[0] = (char) (cArr3[0] - (((cArr3[1] + i3) ^ ((cArr3[1] << 4) + b)) ^ ((cArr3[1] >>> 5) + c)));
                        i3 -= 40503;
                    }
                    int i5 = o.f138;
                    cArr2[i5] = cArr3[0];
                    cArr2[i5 + 1] = cArr3[1];
                    o.f138 = i5 + 2;
                } else {
                    str2 = new String(cArr2, 0, i);
                }
            }
        }
        return str2;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        int i3 = f5701f + 55;
        f5702g = i3 % 128;
        try {
        } catch (Throwable th) {
            jy.m987(a("㴘蜳栾쫬\udf14⌛塦ꀋ鄺퐰ၴ葵ꉳ\udcd0ᗼ\udde7\uea85궳똟ﻏ羂ꆢꌋ僖", (Process.myTid() >> 22) + 23).intern(), a("腻\ufde8\ued46灓紺湕ǔꆭ衭㝤㱊\ue46f塦ꀋ鄺퐰ၴ葵ꉳ\udcd0ํጩ㭹㞵䙜uᑛȽ", 27 - KeyEvent.keyCodeFromString("")).intern(), th, false);
        }
        if ((i3 % 2 == 0 ? '\\' : 'C') != 'C') {
            this.h.mo567(this, mediaPlayer, i, i2);
            throw null;
        }
        this.h.mo567(this, mediaPlayer, i, i2);
        if (mo406() == null) {
            return false;
        }
        int i4 = f5702g + 81;
        f5701f = i4 % 128;
        if ((i4 % 2 != 0 ? '8' : '^') != '8') {
            return mo406().onInfo(mediaPlayer, i, i2);
        }
        mo406().onInfo(mediaPlayer, i, i2);
        throw null;
    }
}
