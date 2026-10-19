package com.bytedance.sdk.component.adexpress.dynamic.b;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.adexpress.dynamic.c.j;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: compiled from: DynamicLayoutNativeValue.java */
/* JADX INFO: loaded from: classes.dex */
public class g {
    public int a;
    public String b;
    private f c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f734e;

    public g(e eVar) {
        this.f733d = eVar;
        this.a = eVar.a();
        this.b = eVar.c();
        this.f734e = eVar.d();
        if (com.bytedance.sdk.component.adexpress.d.c() == 1) {
            this.c = eVar.g();
        } else {
            this.c = eVar.e();
        }
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            this.c = eVar.e();
        }
    }

    public static int a(String str) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (str.equals(o2.h.T)) {
            return 0;
        }
        return (str.charAt(0) == '#' && str.length() == 7) ? Color.parseColor(str) : (str.charAt(0) == '#' && str.length() == 9) ? Color.parseColor(str) : (str.startsWith("rgba") && (strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null && strArrSplit.length == 4) ? (((int) ((Float.parseFloat(strArrSplit[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(strArrSplit[0])) << 16) | (((int) Float.parseFloat(strArrSplit[1])) << 8) | ((int) Float.parseFloat(strArrSplit[2])) | 0 : ViewCompat.MEASURED_STATE_MASK;
    }

    private boolean ab() {
        return (com.bytedance.sdk.component.adexpress.d.b() && (this.f733d.b().contains("logo-union") || this.f733d.b().contains("logounion") || this.f733d.b().contains("logoad"))) || "logo-union".equals(this.f733d.b()) || "logounion".equals(this.f733d.b()) || "logoad".equals(this.f733d.b());
    }

    private boolean ac() {
        if (com.bytedance.sdk.component.adexpress.d.b()) {
            return false;
        }
        return (!TextUtils.isEmpty(this.b) && this.b.contains("adx:")) || j.b();
    }

    public static float[] b(String str) {
        String[] strArrSplit = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        return (strArrSplit == null || strArrSplit.length != 4) ? new float[]{0.0f, 0.0f, 0.0f, 0.0f} : new float[]{Float.parseFloat(strArrSplit[0]), Float.parseFloat(strArrSplit[1]), Float.parseFloat(strArrSplit[2]), Float.parseFloat(strArrSplit[3])};
    }

    public int A() {
        return this.c.c();
    }

    public int B() {
        return this.c.b();
    }

    public int C() {
        return this.c.e();
    }

    public int D() {
        return this.c.d();
    }

    public int E() {
        return this.c.i();
    }

    public String F() {
        return this.c.j();
    }

    public String G() {
        return this.c.K();
    }

    public boolean H() {
        return this.c.ag();
    }

    public int I() {
        return this.c.ai();
    }

    public int J() {
        return this.c.ah();
    }

    public String K() {
        return this.c.I();
    }

    public int L() {
        return this.c.g();
    }

    public int M() {
        return this.c.ax();
    }

    public int N() {
        return this.c.aD();
    }

    public int O() {
        return this.c.ar();
    }

    public int P() {
        return this.c.aq();
    }

    public boolean Q() {
        return this.c.as();
    }

    public String R() {
        return this.c.B();
    }

    public String S() {
        return this.c.at();
    }

    public String T() {
        return this.c.aE();
    }

    public boolean U() {
        return this.c.m();
    }

    public boolean V() {
        return this.c.D();
    }

    public String W() {
        return this.c.C();
    }

    public int X() {
        return this.c.E();
    }

    public int Y() {
        return this.c.F();
    }

    public double Z() {
        return this.c.G();
    }

    public int a() {
        return (int) this.c.n();
    }

    public void a(float f2) {
        this.c.a(f2);
    }

    public boolean a(int i) {
        e eVar = this.f733d;
        if (eVar == null) {
            return false;
        }
        if (i == 1) {
            this.c = eVar.g();
        } else {
            this.c = eVar.e();
        }
        return this.c != null;
    }

    public double aa() {
        return this.c.H();
    }

    public int b() {
        return (int) this.c.q();
    }

    public int c() {
        return (int) this.c.o();
    }

    public int d() {
        return (int) this.c.p();
    }

    public float e() {
        return this.c.r();
    }

    public String f() {
        return this.a == 0 ? this.b : "";
    }

    public int g() {
        return a(this.c.v());
    }

    public int h() {
        String strU = this.c.u();
        if ("left".equals(strU)) {
            return 17;
        }
        if (TtmlNode.CENTER.equals(strU)) {
            return 4;
        }
        return TtmlNode.RIGHT.equals(strU) ? 3 : 2;
    }

    public int i() {
        int iH = h();
        if (iH == 4) {
            return 17;
        }
        return iH == 3 ? GravityCompat.END : GravityCompat.START;
    }

    public String j() {
        int i = this.a;
        return (i == 2 || i == 13) ? this.b : "";
    }

    public String k() {
        return this.a == 1 ? this.b : "";
    }

    public String l() {
        return this.f734e;
    }

    public double m() {
        if (this.a == 11) {
            try {
                return !com.bytedance.sdk.component.adexpress.d.b() ? (int) r3 : Double.parseDouble(this.b);
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public double n() {
        return this.c.s();
    }

    public float o() {
        return this.c.k();
    }

    public int p() {
        return a(this.c.y());
    }

    public float q() {
        return this.c.l();
    }

    public int r() {
        return this.c.ay();
    }

    public int s() {
        return this.c.aA();
    }

    public boolean t() {
        return this.c.az();
    }

    public String u() {
        return this.c.x();
    }

    public boolean v() {
        return this.c.N();
    }

    public int w() {
        return this.c.O();
    }

    public int x() {
        String strJ = this.c.J();
        if ("skip-with-time-skip-btn".equals(this.f733d.b()) || "skip".equals(this.f733d.b()) || TextUtils.equals("skip-with-countdowns-skip-btn", this.f733d.b())) {
            return 6;
        }
        if (!"skip-with-time-countdown".equals(this.f733d.b()) && !"skip-with-time".equals(this.f733d.b())) {
            if (this.a == 10 && TextUtils.equals(this.c.K(), CampaignEx.JSON_NATIVE_VIDEO_CLICK)) {
                return 5;
            }
            if (ab() && ac()) {
                return 0;
            }
            if (ab()) {
                return 7;
            }
            if ("feedback-dislike".equals(this.f733d.b())) {
                return 3;
            }
            if (!TextUtils.isEmpty(strJ) && !strJ.equals("none")) {
                if (strJ.equals("video") || (this.f733d.a() == 7 && TextUtils.equals(strJ, "normal"))) {
                    return (com.bytedance.sdk.component.adexpress.d.b() && this.f733d.e() != null && this.f733d.e().aC()) ? 11 : 4;
                }
                if (strJ.equals("normal")) {
                    return 1;
                }
                return (strJ.equals("creative") || "slide".equals(this.c.K())) ? 2 : 0;
            }
        }
        return 0;
    }

    public int y() {
        return a(this.c.w());
    }

    public double z() {
        return this.c.h();
    }
}
