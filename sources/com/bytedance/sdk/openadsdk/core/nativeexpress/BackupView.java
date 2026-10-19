package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.t;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BackupView extends PAGFrameLayout {
    private com.bytedance.sdk.openadsdk.b.g a;
    protected Context b;
    protected q c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.openadsdk.dislike.b f1614d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected TTDislikeDialogAbstract f1615e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f1616f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f1617g;
    protected int h;
    protected int i;
    protected boolean j;
    protected boolean k;
    protected String l;

    public BackupView(@NonNull Context context) {
        super(context);
        this.f1616f = "embeded_ad";
        this.j = true;
        this.k = true;
        setTag("tt_express_backup_fl_tag_26");
    }

    public BackupView(@NonNull Context context, String str) {
        super(context);
        this.f1616f = "embeded_ad";
        this.j = true;
        this.k = true;
        this.l = str;
        setTag("tt_express_backup_fl_tag_26");
    }

    public void a() {
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f1615e;
        if (tTDislikeDialogAbstract != null) {
            tTDislikeDialogAbstract.show();
            return;
        }
        com.bytedance.sdk.openadsdk.dislike.b bVar = this.f1614d;
        if (bVar != null) {
            bVar.a();
        } else {
            TTDelegateActivity.a(this.c, (String) null);
        }
    }

    protected void a(int i) {
        this.k = com.bytedance.sdk.openadsdk.core.o.d().c(String.valueOf(this.i));
        int iB = com.bytedance.sdk.openadsdk.core.o.d().b(i);
        if (3 == iB) {
            this.j = false;
            return;
        }
        int iC = com.bytedance.sdk.component.utils.o.c(com.bytedance.sdk.openadsdk.core.o.a());
        if (1 == iB && ac.d(iC)) {
            this.j = true;
            return;
        }
        if (2 == iB) {
            if (ac.e(iC) || ac.d(iC) || ac.f(iC)) {
                this.j = true;
                return;
            }
            return;
        }
        if (5 == iB) {
            if (ac.d(iC) || ac.f(iC)) {
                this.j = true;
            }
        }
    }

    protected void a(View view) {
        q qVar = this.c;
        if (qVar == null || qVar.K() == null || view == null) {
            return;
        }
        a(view, this.c.w() == 1 && this.j);
    }

    protected abstract void a(View view, int i, com.bytedance.sdk.openadsdk.core.model.m mVar);

    protected void a(View view, boolean z) {
        com.bytedance.sdk.openadsdk.core.b.b bVar;
        if (view == null) {
            return;
        }
        if (z) {
            Context context = this.b;
            q qVar = this.c;
            String str = this.f1616f;
            bVar = new com.bytedance.sdk.openadsdk.core.b.a(context, qVar, str, ac.a(str));
        } else {
            Context context2 = this.b;
            q qVar2 = this.c;
            String str2 = this.f1616f;
            bVar = new com.bytedance.sdk.openadsdk.core.b.b(context2, qVar2, str2, ac.a(str2));
        }
        view.setOnTouchListener(bVar);
        view.setOnClickListener(bVar);
        bVar.a(new a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.a
            public void a(View view2, int i, com.bytedance.sdk.openadsdk.core.model.m mVar) {
                BackupView.this.a(view2, i, mVar);
            }
        });
    }

    protected String getDescription() {
        return !TextUtils.isEmpty(this.c.V()) ? this.c.V() : !TextUtils.isEmpty(this.c.W()) ? this.c.W() : "";
    }

    protected String getNameOrSource() {
        q qVar = this.c;
        return qVar == null ? "" : (qVar.aa() == null || TextUtils.isEmpty(this.c.aa().b())) ? !TextUtils.isEmpty(this.c.L()) ? this.c.L() : "" : this.c.aa().b();
    }

    public float getRealHeight() {
        return ad.c(this.b, this.h);
    }

    public float getRealWidth() {
        return ad.c(this.b, this.f1617g);
    }

    @Override // android.view.View
    public Object getTag() {
        return "tt_express_backup_fl_tag_26";
    }

    protected String getTitle() {
        return (this.c.aa() == null || TextUtils.isEmpty(this.c.aa().b())) ? !TextUtils.isEmpty(this.c.L()) ? this.c.L() : !TextUtils.isEmpty(this.c.V()) ? this.c.V() : "" : this.c.aa().b();
    }

    protected NativeVideoTsView getVideoView() {
        NativeVideoTsView nativeVideoTsView;
        q qVar = this.c;
        if (qVar != null && this.b != null) {
            if (q.c(qVar)) {
                try {
                    nativeVideoTsView = new NativeVideoTsView(this.b, this.c, this.f1616f, true, false, this.a);
                    nativeVideoTsView.setVideoCacheUrl(this.l);
                    nativeVideoTsView.setControllerStatusCallBack(new NativeVideoTsView.b() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.b
                        public void a(boolean z, long j, long j2, long j3, boolean z2) {
                        }
                    });
                    nativeVideoTsView.setIsAutoPlay(this.j);
                    nativeVideoTsView.setIsQuiet(this.k);
                } catch (Throwable unused) {
                    nativeVideoTsView = null;
                }
                if (!q.c(this.c) && nativeVideoTsView != null && nativeVideoTsView.a(0L, true, false)) {
                    return nativeVideoTsView;
                }
            } else {
                nativeVideoTsView = null;
                if (!q.c(this.c)) {
                }
            }
        }
        return null;
    }

    public void setDislikeInner(t tVar) {
        if (tVar instanceof com.bytedance.sdk.openadsdk.dislike.b) {
            this.f1614d = (com.bytedance.sdk.openadsdk.dislike.b) tVar;
        }
    }

    public void setDislikeOuter(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        q qVar;
        if (tTDislikeDialogAbstract != null && (qVar = this.c) != null) {
            tTDislikeDialogAbstract.setMaterialMeta(qVar.ac(), this.c.ae());
        }
        this.f1615e = tTDislikeDialogAbstract;
    }

    @Override // android.view.View
    public void setTag(Object obj) {
        super.setTag("tt_express_backup_fl_tag_26");
    }
}
