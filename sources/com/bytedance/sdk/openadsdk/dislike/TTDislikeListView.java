package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TTDislikeListView extends ListView {
    protected IListenerManager a;
    private AdapterView.OnItemClickListener b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1775d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AdapterView.OnItemClickListener f1776e;

    public TTDislikeListView(Context context) {
        super(context);
        this.f1776e = new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (TTDislikeListView.this.getAdapter() == null || TTDislikeListView.this.getAdapter().getItem(i) == null || !(TTDislikeListView.this.getAdapter().getItem(i) instanceof FilterWord)) {
                    throw new IllegalArgumentException("Adapter data is abnormal, it must be FilterWord");
                }
                FilterWord filterWord = (FilterWord) TTDislikeListView.this.getAdapter().getItem(i);
                if (!filterWord.hasSecondOptions()) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(filterWord);
                    if (!TextUtils.isEmpty(TTDislikeListView.this.c)) {
                        a.a().a(TTDislikeListView.this.c, arrayList);
                    }
                    if (!TextUtils.isEmpty(TTDislikeListView.this.f1775d)) {
                        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
                            TTDislikeListView.this.a("onItemClickClosed");
                        } else {
                            a.InterfaceC0132a interfaceC0132aC = h.b().c(TTDislikeListView.this.f1775d);
                            if (interfaceC0132aC != null) {
                                interfaceC0132aC.a();
                                h.b().d(TTDislikeListView.this.f1775d);
                            }
                        }
                    }
                }
                try {
                    if (TTDislikeListView.this.b != null) {
                        TTDislikeListView.this.b.onItemClick(adapterView, view, i, j);
                    }
                } catch (Throwable unused) {
                }
            }
        };
        a();
    }

    private void a() {
        super.setOnItemClickListener(this.f1776e);
    }

    public static void a(final int i, final String str) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            aa.c(new com.bytedance.sdk.component.g.h("DislikeClosed_unregisterMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.4
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a aVarA = com.bytedance.sdk.openadsdk.multipro.aidl.a.a();
                    if (i == 6) {
                        try {
                            l.b("TTDislikeListView", "start unregisterDislikeClickCloseListener ! ");
                            IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(aVarA.a(6));
                            if (iListenerManagerAsInterface != null) {
                                iListenerManagerAsInterface.unregisterDisLikeClosedListener(str);
                                l.b("TTDislikeListView", "end unregisterDislikeClickCloseListener ! ");
                            }
                        } catch (RemoteException unused) {
                            l.b("TTDislikeListView", "multiProcess unregisterMultiProcessListener error");
                        }
                    }
                }
            }, 5);
        }
    }

    public static void a(final int i, final String str, final a.InterfaceC0132a interfaceC0132a) {
        if (com.bytedance.sdk.openadsdk.multipro.b.c()) {
            aa.c(new com.bytedance.sdk.component.g.h("DislikeClosed_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.a aVarA = com.bytedance.sdk.openadsdk.multipro.aidl.a.a();
                    if (i != 6 || interfaceC0132a == null) {
                        return;
                    }
                    try {
                        l.b("TTDislikeListView", "start registerDislikeClickCloseListener ! ");
                        com.bytedance.sdk.openadsdk.multipro.aidl.b.b bVar = new com.bytedance.sdk.openadsdk.multipro.aidl.b.b(str, interfaceC0132a);
                        IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(aVarA.a(6));
                        if (iListenerManagerAsInterface != null) {
                            iListenerManagerAsInterface.registerDisLikeClosedListener(str, bVar);
                            l.b("TTDislikeListView", "end registerDislikeClickCloseListener ! ");
                        }
                    } catch (RemoteException e2) {
                        l.e("TTDislikeListView", e2.getMessage());
                        l.b("TTDislikeListView", "multiProcess registerDislikeClickCloseListener error");
                    }
                }
            }, 5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str) {
        aa.c(new com.bytedance.sdk.component.g.h("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.dislike.TTDislikeListView.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (TextUtils.isEmpty(TTDislikeListView.this.f1775d)) {
                        return;
                    }
                    TTDislikeListView.this.a(6).executeDisLikeClosedCallback(TTDislikeListView.this.f1775d, str);
                } catch (Throwable th) {
                    l.c("TTDislikeListView", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    protected IListenerManager a(int i) {
        if (this.a == null) {
            this.a = IListenerManager.Stub.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.a.a().a(i));
        }
        return this.a;
    }

    public void setClosedListenerKey(String str) {
        this.f1775d = str;
    }

    public void setMaterialMeta(String str) {
        this.c = str;
    }

    @Override // android.widget.AdapterView
    public void setOnItemClickListener(@Nullable AdapterView.OnItemClickListener onItemClickListener) {
        this.b = onItemClickListener;
    }
}
