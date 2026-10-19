package com.bytedance.sdk.openadsdk.component.reward.a;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardFullDownloadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    com.com.bytedance.overseas.sdk.a.c a;
    private final q b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.component.reward.a.a f1319e;

    /* JADX INFO: compiled from: RewardFullDownloadManager.java */
    public interface a {
        void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, int i, int i2, int i3);

        void a(String str, JSONObject jSONObject);
    }

    public d(com.bytedance.sdk.openadsdk.component.reward.a.a aVar) {
        this.f1319e = aVar;
        this.b = aVar.a;
        this.c = aVar.f1317g;
    }

    private void d() {
        if (!com.bytedance.sdk.openadsdk.multipro.b.c() && this.b.M() == 4) {
            this.a = com.com.bytedance.overseas.sdk.a.d.a(this.f1319e.W, this.b, this.c);
        }
        if (this.a == null) {
            this.a = com.com.bytedance.overseas.sdk.a.d.a(this.f1319e.V, this.b, this.c);
        }
    }

    public void a() {
        if (this.f1318d) {
            return;
        }
        this.f1318d = true;
        d();
    }

    public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, int i, int i2, int i3, a aVar) {
        if (this.a == null) {
            aVar.a(view, f2, f3, f4, f5, sparseArray, i, i2, i3);
            return;
        }
        int id = view.getId();
        if (id == com.bytedance.sdk.openadsdk.utils.i.f1872e) {
            aVar.a("click_play_star_level", null);
            return;
        }
        if (id == com.bytedance.sdk.openadsdk.utils.i.f1871d) {
            aVar.a("click_play_star_nums", null);
        } else if (id == com.bytedance.sdk.openadsdk.utils.i.c) {
            aVar.a("click_play_source", null);
        } else if (id == com.bytedance.sdk.openadsdk.utils.i.b) {
            aVar.a("click_play_logo", null);
        }
    }

    public void b() {
        com.com.bytedance.overseas.sdk.a.c cVar = this.a;
        if (cVar != null) {
            cVar.d();
        }
    }

    public com.com.bytedance.overseas.sdk.a.c c() {
        return this.a;
    }
}
