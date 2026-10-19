package com.bytedance.sdk.openadsdk.multipro.aidl.b;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IDislikeClosedListener;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: DislikeClosedListenerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends IDislikeClosedListener.Stub {
    private final a.InterfaceC0132a a;
    private final String b;

    public b(String str, a.InterfaceC0132a interfaceC0132a) {
        this.b = str;
        this.a = interfaceC0132a;
    }

    @Override // com.bytedance.sdk.openadsdk.IDislikeClosedListener
    public void onItemClickClosed() throws RemoteException {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.a != null) {
                    b.this.a.a();
                    TTDislikeListView.a(6, b.this.b);
                }
            }
        });
    }
}
