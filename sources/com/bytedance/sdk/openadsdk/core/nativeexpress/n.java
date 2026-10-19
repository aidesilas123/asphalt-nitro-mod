package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: NativeRender.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends com.bytedance.sdk.component.adexpress.b.a<BackupView> {
    AtomicBoolean a = new AtomicBoolean(false);
    private BackupView b;
    private final View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.b.c f1645d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.bytedance.sdk.component.adexpress.b.g f1646e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.bytedance.sdk.component.adexpress.b.m f1647f;

    public n(View view, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.component.adexpress.b.m mVar) {
        this.c = view;
        this.f1647f = mVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.a.get()) {
            return;
        }
        com.bytedance.sdk.component.adexpress.b.c cVar = this.f1645d;
        boolean z = false;
        if (cVar != null && cVar.a((NativeExpressView) this.c, 0)) {
            z = true;
        }
        if (!z) {
            this.f1646e.a(107);
            return;
        }
        this.f1647f.e().e();
        BackupView backupView = (BackupView) this.c.findViewWithTag("tt_express_backup_fl_tag_26");
        this.b = backupView;
        if (backupView == null) {
            this.f1646e.a(107);
            return;
        }
        com.bytedance.sdk.component.adexpress.b.n nVar = new com.bytedance.sdk.component.adexpress.b.n();
        BackupView backupView2 = this.b;
        float realWidth = backupView2 == null ? 0.0f : backupView2.getRealWidth();
        BackupView backupView3 = this.b;
        float realHeight = backupView3 != null ? backupView3.getRealHeight() : 0.0f;
        nVar.a(true);
        nVar.a(realWidth);
        nVar.b(realHeight);
        this.f1646e.a(this.b, nVar);
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public BackupView e() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.a
    public void a(com.bytedance.sdk.component.adexpress.b.c cVar) {
        this.f1645d = cVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.b.d
    public void a(com.bytedance.sdk.component.adexpress.b.g gVar) {
        this.f1646e = gVar;
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.n.1
            @Override // java.lang.Runnable
            public void run() {
                n.this.b();
            }
        });
    }
}
