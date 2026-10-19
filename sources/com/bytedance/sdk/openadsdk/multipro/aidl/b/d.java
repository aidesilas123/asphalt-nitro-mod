package com.bytedance.sdk.openadsdk.multipro.aidl.b;

import android.os.RemoteException;
import com.bytedance.sdk.openadsdk.IRewardAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: RewardVideoListenerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends IRewardAdInteractionListener.Stub {
    private com.bytedance.sdk.openadsdk.apiImpl.d.a a;

    public d(com.bytedance.sdk.openadsdk.apiImpl.d.a aVar) {
        this.a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.a = null;
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdClose() throws RemoteException {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.d.3
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.a != null) {
                    d.this.a.c();
                }
                d.this.a();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdShow() throws RemoteException {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.d.1
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.a != null) {
                    d.this.a.a();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onAdVideoBarClick() throws RemoteException {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.a != null) {
                    d.this.a.b();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onDestroy() throws RemoteException {
    }

    @Override // com.bytedance.sdk.openadsdk.IRewardAdInteractionListener
    public void onRewardVerify(final boolean z, final int i, final String str, final int i2, final String str2) throws RemoteException {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.multipro.aidl.b.d.4
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.a != null) {
                    d.this.a.a(z, i, str, i2, str2);
                }
            }
        });
    }
}
