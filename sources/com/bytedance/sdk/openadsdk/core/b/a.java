package com.bytedance.sdk.openadsdk.core.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.i;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: ClickCreativeListener.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends b {
    private boolean G;
    private WeakReference<InterfaceC0131a> H;
    private int I;
    private boolean a;
    private boolean b;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClickCreativeListener.java */
    public interface InterfaceC0131a {
        long getVideoProgress();
    }

    public a(@NonNull Context context, @NonNull q qVar, @NonNull String str, int i) {
        super(context, qVar, str, i);
        this.a = true;
        this.b = false;
        this.G = false;
    }

    private String b(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return "banner_call";
            case "open_ad":
                return "open_ad";
            case "embeded_ad":
                return "feed_call";
            case "interaction":
                return "interaction_call";
            case "slide_banner_ad":
                return "banner_call";
            default:
                return "";
        }
    }

    private boolean d(View view) {
        if (view == null) {
            return false;
        }
        if (view instanceof NativeVideoTsView) {
            l.c("ClickCreativeListener", "NativeVideoTsView....");
            return true;
        }
        if (view.getId() == i.aE || view.getId() == i.K || view.getId() == i.L || view.getId() == i.M || view.getId() == i.N) {
            l.c("ClickCreativeListener", "tt_video_ad_cover_center_layout....");
            return true;
        }
        if (view.getId() == 520093726 || view.getId() == i.aJ) {
            l.c("ClickCreativeListener", "tt_root_view....");
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        int i = 0;
        while (true) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (i >= viewGroup.getChildCount()) {
                return false;
            }
            if (d(viewGroup.getChildAt(i))) {
                return true;
            }
            i++;
        }
    }

    private boolean h() {
        return q.c(this.f1457e) && this.f1457e.w() == 1;
    }

    private boolean i() {
        return this instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.f;
    }

    private boolean j() {
        if (this.f1457e == null || i()) {
            return false;
        }
        if (this.f1457e.ad() != 5 && this.f1457e.ad() != 15) {
            return false;
        }
        if (this.I == 0) {
            this.I = this.f1457e.aS();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("!isViewVisibility()=");
        sb.append(!b());
        sb.append(",isAutoPlay()=");
        sb.append(a());
        sb.append(",!isCoverPageVisibility()=");
        sb.append(!c());
        l.b("ClickCreativeListener", sb.toString());
        if (this.I == 5 && h() && a() && !b() && !c()) {
            return false;
        }
        int i = this.I;
        return i == 1 || i == 2 || i == 5;
    }

    /* JADX WARN: Removed duplicated region for block: B:175:0x0373 A[Catch: Exception -> 0x0386, TryCatch #0 {Exception -> 0x0386, blocks: (B:171:0x0366, B:173:0x036f, B:177:0x0382, B:175:0x0373), top: B:191:0x0366 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0382 A[Catch: Exception -> 0x0386, TRY_LEAVE, TryCatch #0 {Exception -> 0x0386, blocks: (B:171:0x0366, B:173:0x036f, B:177:0x0382, B:175:0x0373), top: B:191:0x0366 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x03a4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e4  */
    @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.view.View r35, float r36, float r37, float r38, float r39, android.util.SparseArray<com.bytedance.sdk.openadsdk.core.b.c.a> r40, boolean r41) {
        /*
            Method dump skipped, instruction units count: 968
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.b.a.a(android.view.View, float, float, float, float, android.util.SparseArray, boolean):void");
    }

    public void a(InterfaceC0131a interfaceC0131a) {
        this.H = new WeakReference<>(interfaceC0131a);
    }

    public void a(boolean z) {
        this.a = z;
    }

    protected boolean a() {
        q qVar = this.f1457e;
        if (qVar == null) {
            return true;
        }
        int iB = o.d().b(qVar.aZ());
        int iC = com.bytedance.sdk.component.utils.o.c(o.a());
        if (iB == 1) {
            return ac.d(iC);
        }
        if (iB == 2) {
            return ac.e(iC) || ac.d(iC) || ac.f(iC);
        }
        if (iB != 3) {
            return iB != 5 || ac.d(iC) || ac.f(iC);
        }
        return false;
    }

    public void b(boolean z) {
        this.b = z;
    }

    public boolean b() {
        return false;
    }

    public void c(boolean z) {
        this.G = z;
    }

    public boolean c() {
        return false;
    }
}
