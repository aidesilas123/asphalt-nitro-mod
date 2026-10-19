package com.json.adqualitysdk.sdk.i;

import android.media.MediaPlayer;
import android.util.TypedValue;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes4.dex */
public final class ha extends gv<MediaPlayer.OnCompletionListener> implements MediaPlayer.OnCompletionListener {
    private static long b = -4569997352941517852L;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5707d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f5708e;

    public interface c {
        /* JADX INFO: renamed from: ｋ */
        void mo565(ha haVar, MediaPlayer mediaPlayer);
    }

    public ha(MediaPlayer.OnCompletionListener onCompletionListener, c cVar) {
        super(onCompletionListener);
        this.f5708e = cVar;
    }

    private static String a(String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (h.f63) {
            h.f64 = i;
            char[] cArr2 = new char[cArr.length];
            h.f65 = 0;
            while (true) {
                int i2 = h.f65;
                if (i2 < cArr.length) {
                    cArr2[i2] = (char) (((long) (cArr[i2] ^ (h.f64 * i2))) ^ b);
                    h.f65++;
                } else {
                    str2 = new String(cArr2);
                }
            }
        }
        return str2;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        try {
            this.f5708e.mo565(this, mediaPlayer);
            int i = c + 15;
            f5707d = i % 128;
            int i2 = i % 2;
        } catch (Throwable th) {
            jy.m987(a("Ϋ\ue0f7앝ꧼ蹽狥坦㯪ᡸﳨ\ue169엕ꩴ軔獁埃㑑ᣇ﵋\ue1d1왤ꫀ輹现倮㒰ᤢﶤ\ue23a", (TypedValue.complexToFraction(0, 0.0f, 0.0f) > 0.0f ? 1 : (TypedValue.complexToFraction(0, 0.0f, 0.0f) == 0.0f ? 0 : -1)) + 58237).intern(), a("Ρ\uefdb\udb0c읬늢鹅詃疑憬䴼㢲Ⓣဴﱤ\uefa1\udb13응늗黫訡痀懚䴔㥌⒳ဌﱆ\uef97\udbed윩늋默訪", (KeyEvent.getMaxKeyCode() >> 16) + 60493).intern(), th, false);
        }
        if ((mo406() == null ? '*' : (char) 16) != '*') {
            mo406().onCompletion(mediaPlayer);
        }
        int i3 = c + 5;
        f5707d = i3 % 128;
        int i4 = i3 % 2;
    }
}
