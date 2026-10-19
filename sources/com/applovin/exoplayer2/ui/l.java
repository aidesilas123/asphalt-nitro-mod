package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.SubtitleView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class l extends FrameLayout implements SubtitleView.a {
    private c VU;
    private float VV;
    private int YW;
    private float YX;
    private final b Zd;
    private List<com.applovin.exoplayer2.i.a> Ze;
    private final WebView webView;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.ui.l$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] Zg;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            Zg = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Zg[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                Zg[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(Context context) {
        this(context, null);
    }

    public l(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Ze = Collections.emptyList();
        this.VU = c.VW;
        this.YX = 0.0533f;
        this.YW = 0;
        this.VV = 0.08f;
        b bVar = new b(context, attributeSet);
        this.Zd = bVar;
        WebView webView = new WebView(context, attributeSet) { // from class: com.applovin.exoplayer2.ui.l.1
            @Override // android.webkit.WebView, android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                super.onTouchEvent(motionEvent);
                return false;
            }

            @Override // android.view.View
            public boolean performClick() {
                super.performClick();
                return false;
            }
        };
        this.webView = webView;
        webView.setBackgroundColor(0);
        addView(bVar);
        addView(webView);
    }

    private static String a(c cVar) {
        int i = cVar.VX;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? "unset" : ai.a("-0.05em -0.05em 0.15em %s", e.eX(cVar.VY)) : ai.a("0.06em 0.08em 0.15em %s", e.eX(cVar.VY)) : ai.a("0.1em 0.12em 0.15em %s", e.eX(cVar.VY)) : ai.a("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", e.eX(cVar.VY));
    }

    private static String c(com.applovin.exoplayer2.i.a aVar) {
        float f2 = aVar.Om;
        if (f2 == 0.0f) {
            return "";
        }
        int i = aVar.Ol;
        return ai.a("%s(%.2fdeg)", (i == 2 || i == 1) ? "skewY" : "skewX", Float.valueOf(f2));
    }

    private String d(int i, float f2) {
        float fA = j.a(i, f2, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fA == -3.4028235E38f ? "unset" : ai.a("%.2fpx", Float.valueOf(fA / getContext().getResources().getDisplayMetrics().density));
    }

    private static String e(@Nullable Layout.Alignment alignment) {
        if (alignment == null) {
            return TtmlNode.CENTER;
        }
        int i = AnonymousClass2.Zg[alignment.ordinal()];
        return i != 1 ? i != 2 ? TtmlNode.CENTER : TtmlNode.END : "start";
    }

    private static String fc(int i) {
        return i != 1 ? i != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
    }

    private static int fd(int i) {
        if (i != 1) {
            return i != 2 ? 0 : -100;
        }
        return -50;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x023f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void nZ() {
        /*
            Method dump skipped, instruction units count: 704
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.l.nZ():void");
    }

    @Override // com.applovin.exoplayer2.ui.SubtitleView.a
    public void a(List<com.applovin.exoplayer2.i.a> list, c cVar, float f2, int i, float f3) {
        this.VU = cVar;
        this.YX = f2;
        this.YW = i;
        this.VV = f3;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.applovin.exoplayer2.i.a aVar = list.get(i2);
            if (aVar.NZ != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.Ze.isEmpty() || !arrayList2.isEmpty()) {
            this.Ze = arrayList2;
            nZ();
        }
        this.Zd.a(arrayList, cVar, f2, i, f3);
        invalidate();
    }

    public void destroy() {
        this.webView.destroy();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.Ze.isEmpty()) {
            return;
        }
        nZ();
    }
}
