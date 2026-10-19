package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.activity.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdData;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.bannerexpress.a;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.ac;
import com.bytedance.sdk.openadsdk.utils.r;
import com.bytedance.sdk.openadsdk.utils.w;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: TTNativeAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class h extends PAGNativeAd {
    protected n a;
    protected final q b;
    protected final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected a f1155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f1156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f1157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected String f1158g;
    private boolean h;
    private boolean i;

    public h(@NonNull Context context, @NonNull q qVar, int i, boolean z) {
        if (qVar == null) {
            l.d("materialMeta can't been null");
        }
        this.b = qVar;
        this.c = context;
        this.f1156e = i;
        this.f1157f = qVar.aZ();
        String strC = ac.c(i);
        this.f1158g = strC;
        if (z) {
            this.f1155d = new a(context, qVar, strC);
            this.a = new n(context, this, qVar, a(i), this.f1155d);
        }
    }

    private String a(int i) {
        return i != 1 ? i != 2 ? "embeded_ad" : "interaction" : "banner_ad";
    }

    private List<View> a(List<View> list, List<View> list2) {
        LinkedList linkedList = new LinkedList();
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                linkedList.add(list.get(i));
            }
        }
        if (list2 != null && !list2.isEmpty()) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                linkedList.add(list2.get(i2));
            }
        }
        return linkedList;
    }

    public void a(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @NonNull List<View> list2, @Nullable List<View> list3, @Nullable View view, final f fVar) {
        if (viewGroup == null) {
            l.d("container can't been null");
            return;
        }
        if (list2 == null) {
            l.d("clickView can't been null");
            return;
        }
        if (list2.size() <= 0) {
            l.d("clickViews size must been more than 1");
            return;
        }
        if (h()) {
            list3 = a(list2, list3);
        }
        List<View> list4 = list3;
        if (view != null && fVar != null && fVar.b()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.h.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    final String strA = r.a();
                    TTDelegateActivity.a(h.this.b, strA, new a.InterfaceC0132a() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.h.1.1
                        @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a.InterfaceC0132a
                        public void a() {
                            fVar.a();
                            com.bytedance.sdk.openadsdk.core.h.b().d(strA);
                            PAGMediaView pAGMediaViewA = h.this.i().a();
                            if (pAGMediaViewA != null) {
                                pAGMediaViewA.close();
                            }
                        }
                    });
                }
            });
        }
        this.a.a(viewGroup, list, list2, list4, view, fVar);
        com.bytedance.sdk.openadsdk.n.a.e.a(viewGroup, this.b, -1);
    }

    protected void a(String str) {
        this.f1158g = str;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        q qVar = this.b;
        if (qVar != null) {
            return qVar.ai();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public PAGNativeAdData getNativeAdData() {
        return new d(i());
    }

    protected boolean h() {
        q qVar = this.b;
        return (qVar == null || qVar.M() == 5 || o.d().c(this.f1157f) != 1) ? false : true;
    }

    public a i() {
        return this.f1155d;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d2, String str, String str2) {
        if (this.i) {
            return;
        }
        w.a(this.b, d2, str, str2);
        this.i = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionCallback pAGNativeAdInteractionCallback) {
        registerViewForInteraction(viewGroup, list, list2, view, (PAGNativeAdInteractionListener) pAGNativeAdInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void registerViewForInteraction(@NonNull ViewGroup viewGroup, @NonNull List<View> list, @Nullable List<View> list2, @Nullable View view, PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        if (viewGroup == null) {
            l.d("container can't been null");
            return;
        }
        if (list == null) {
            l.d("clickView can't been null");
        } else if (list.size() <= 0) {
            l.d("clickViews size must been more than 1");
        } else {
            a(viewGroup, null, list, list2, view, new g(pAGNativeAdInteractionListener));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd
    public void showPrivacyActivity() {
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d2) {
        if (this.h) {
            return;
        }
        w.a(this.b, d2);
        this.h = true;
    }
}
