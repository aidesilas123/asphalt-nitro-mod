package com.applovin.exoplayer2.ui;

import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.RelativeSizeSpan;
import com.applovin.exoplayer2.common.base.Predicate;
import com.applovin.exoplayer2.i.a;

/* JADX INFO: loaded from: classes.dex */
final class j {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean L(Object obj) {
        return (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean M(Object obj) {
        return !(obj instanceof com.applovin.exoplayer2.i.d.b);
    }

    public static float a(int i, float f2, int i2, int i3) {
        float f3;
        if (f2 == -3.4028235E38f) {
            return -3.4028235E38f;
        }
        if (i == 0) {
            f3 = i3;
        } else {
            if (i != 1) {
                if (i != 2) {
                    return -3.4028235E38f;
                }
                return f2;
            }
            f3 = i2;
        }
        return f2 * f3;
    }

    private static void a(Spannable spannable, Predicate<Object> predicate) {
        for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
            if (predicate.apply(obj)) {
                spannable.removeSpan(obj);
            }
        }
    }

    public static void a(a.C0041a c0041a) {
        c0041a.lT();
        if (c0041a.lQ() instanceof Spanned) {
            if (!(c0041a.lQ() instanceof Spannable)) {
                c0041a.m(SpannableString.valueOf(c0041a.lQ()));
            }
            a((Spannable) com.applovin.exoplayer2.l.a.checkNotNull(c0041a.lQ()), new Predicate() { // from class: com.applovin.exoplayer2.ui.t
                @Override // com.applovin.exoplayer2.common.base.Predicate
                public final boolean apply(Object obj) {
                    return j.M(obj);
                }
            });
        }
        b(c0041a);
    }

    public static void b(a.C0041a c0041a) {
        c0041a.c(-3.4028235E38f, Integer.MIN_VALUE);
        if (c0041a.lQ() instanceof Spanned) {
            if (!(c0041a.lQ() instanceof Spannable)) {
                c0041a.m(SpannableString.valueOf(c0041a.lQ()));
            }
            a((Spannable) com.applovin.exoplayer2.l.a.checkNotNull(c0041a.lQ()), new Predicate() { // from class: com.applovin.exoplayer2.ui.s
                @Override // com.applovin.exoplayer2.common.base.Predicate
                public final boolean apply(Object obj) {
                    return j.L(obj);
                }
            });
        }
    }
}
