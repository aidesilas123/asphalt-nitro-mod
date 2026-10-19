package com.tapjoy.internal;

import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes4.dex */
public final class u0 {
    public static final p0 a = new p0();
    public final d5 b;
    public final d5 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d5 f8010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final d5 f8011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f8012f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f8013g;
    public final String h;
    public String i;
    public String j;
    public final boolean k;
    public final n3 l;
    public final n3 m;

    public u0(b4 b4Var) {
        this.f8012f = 9;
        this.f8013g = 10;
        this.k = false;
        b4Var.a();
        while (b4Var.e()) {
            String strO = b4Var.o();
            if ("x".equals(strO)) {
                this.b = d5.a(b4Var.p());
            } else if ("y".equals(strO)) {
                this.c = d5.a(b4Var.p());
            } else if ("width".equals(strO)) {
                this.f8010d = d5.a(b4Var.p());
            } else if ("height".equals(strO)) {
                this.f8011e = d5.a(b4Var.p());
            } else if ("url".equals(strO)) {
                this.h = b4Var.p();
            } else if ("redirect_url".equals(strO)) {
                this.i = b4Var.p();
            } else if ("ad_content".equals(strO)) {
                this.j = b4Var.p();
            } else if ("dismiss".equals(strO)) {
                this.k = b4Var.i();
            } else if ("value".equals(strO)) {
                b4Var.p();
            } else if ("image".equals(strO)) {
                this.l = (n3) b4Var.b(n3.b);
            } else if ("image_clicked".equals(strO)) {
                this.m = (n3) b4Var.b(n3.b);
            } else if ("align".equals(strO)) {
                String strP = b4Var.p();
                if ("left".equals(strP)) {
                    this.f8012f = 9;
                } else if (TtmlNode.RIGHT.equals(strP)) {
                    this.f8012f = 11;
                } else if (TtmlNode.CENTER.equals(strP)) {
                    this.f8012f = 14;
                } else {
                    b4Var.u();
                }
            } else if ("valign".equals(strO)) {
                String strP2 = b4Var.p();
                if (ViewHierarchyConstants.DIMENSION_TOP_KEY.equals(strP2)) {
                    this.f8013g = 10;
                } else if ("middle".equals(strP2)) {
                    this.f8013g = 15;
                } else if ("bottom".equals(strP2)) {
                    this.f8013g = 12;
                } else {
                    b4Var.u();
                }
            } else {
                b4Var.u();
            }
        }
        b4Var.d();
    }
}
