package com.applovin.exoplayer2.i.g;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.a.w;
import com.applovin.exoplayer2.common.base.Ascii;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private static final Pattern Sd = Pattern.compile("\\s+");
    private static final w<String> Se = w.m("auto", "none");
    private static final w<String> Sf = w.a("dot", "sesame", "circle");
    private static final w<String> Sg = w.m("filled", MRAIDPresenter.OPEN);
    private static final w<String> Sh = w.a("after", "before", "outside");
    public final int Rq;
    public final int Rr;
    public final int oX;

    private b(int i, int i2, int i3) {
        this.Rq = i;
        this.Rr = i2;
        this.oX = i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.i.g.b a(com.applovin.exoplayer2.common.a.w<java.lang.String> r9) {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.g.b.a(com.applovin.exoplayer2.common.a.w):com.applovin.exoplayer2.i.g.b");
    }

    @Nullable
    public static b an(@Nullable String str) {
        if (str == null) {
            return null;
        }
        String lowerCase = Ascii.toLowerCase(str.trim());
        if (lowerCase.isEmpty()) {
            return null;
        }
        return a(w.e(TextUtils.split(lowerCase, Sd)));
    }
}
