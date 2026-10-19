package com.bytedance.sdk.openadsdk.dislike;

import android.app.Activity;
import android.content.Context;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.dislike.c;
import com.bytedance.sdk.openadsdk.dislike.e;
import java.util.List;

/* JADX INFO: compiled from: TTAdDislikeImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements t {
    public e a;
    private final Context b;
    private c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t.a f1778e;

    public b(Context context, String str, List<FilterWord> list, String str2) {
        if (!(context instanceof Activity)) {
            l.d("Dislike Initialization must use activity, please pass in TTAdManager.createAdNative(activity)");
        }
        this.b = context;
        a(str, list, str2);
    }

    private void a(String str, List<FilterWord> list, String str2) {
        this.c = new c(this.b, str, list);
        e eVar = new e(this.b);
        this.a = eVar;
        eVar.a(str, str2);
        this.a.a(new e.a() { // from class: com.bytedance.sdk.openadsdk.dislike.b.1
            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void a(int i, FilterWord filterWord) {
                if (b.this.f1778e != null) {
                    b.this.f1778e.a(i, filterWord.getName());
                }
                if (b.this.f1778e != null) {
                    b.this.f1778e.a();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void c() {
                b.this.a();
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void d() {
                b.this.a();
            }
        });
        this.c.a(new c.a() { // from class: com.bytedance.sdk.openadsdk.dislike.b.2
            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void a() {
                b.this.a(true);
                if (b.this.c != null && b.this.c.isShowing()) {
                    b.this.c.dismiss();
                }
                b.this.c();
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void a(int i, FilterWord filterWord) {
                try {
                    if (!filterWord.hasSecondOptions() && b.this.f1778e != null) {
                        b.this.f1778e.a(i, filterWord.getName());
                    }
                    l.e("TTAdDislikeImpl", "onDislikeSelected: " + i + ", " + filterWord.getName());
                } catch (Throwable th) {
                    l.c("TTAdDislikeImpl", "dislike callback selected error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void b() {
                l.b("TTAdDislikeImpl", "onDislikeShow: ");
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void c() {
                l.e("TTAdDislikeImpl", "onDislikeDismiss: ");
                try {
                    if (b.this.f1778e != null) {
                        b.this.f1778e.a();
                    }
                } catch (Throwable th) {
                    l.c("TTAdDislikeImpl", "dislike callback cancel error: ", th);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.c.a
            public void d() {
                l.e("TTAdDislikeImpl", "onDislikeOptionBack: ");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if ((this.b instanceof Activity) && (!((Activity) r0).isFinishing()) && !this.a.isShowing()) {
            this.a.show();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.t
    public void a() {
        Context context = this.b;
        if (!((context instanceof Activity) && !((Activity) context).isFinishing()) || this.c.isShowing()) {
            return;
        }
        this.c.show();
    }

    @Override // com.bytedance.sdk.openadsdk.core.t
    public void a(t.a aVar) {
        this.f1778e = aVar;
    }

    public void a(String str) {
        c cVar = this.c;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    public void a(String str, List<FilterWord> list) {
        this.c.a(str, list);
    }

    public void a(boolean z) {
        this.f1777d = z;
    }

    public boolean b() {
        return this.f1777d;
    }
}
