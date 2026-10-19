package com.bytedance.sdk.openadsdk.component.a;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.component.view.PAGAppOpenAdExpressView;
import com.bytedance.sdk.openadsdk.core.b.c;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.model.t;
import com.bytedance.sdk.openadsdk.core.nativeexpress.f;
import com.bytedance.sdk.openadsdk.core.nativeexpress.g;
import com.com.bytedance.overseas.sdk.a.d;
import java.util.HashMap;

/* JADX INFO: compiled from: TTAppOpenAdClickManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static a a(q qVar, Activity activity, com.bytedance.sdk.openadsdk.component.h.a aVar) {
        a aVar2 = new a(activity.getApplicationContext(), qVar, "open_ad", 4, aVar);
        aVar2.a(activity.findViewById(R.id.content));
        aVar2.b(activity.findViewById(520093713));
        a(activity.getApplicationContext(), qVar, aVar2);
        a(aVar2, qVar);
        return aVar2;
    }

    public static g a(q qVar, Activity activity, final com.bytedance.sdk.openadsdk.component.h.a aVar, PAGAppOpenAdExpressView pAGAppOpenAdExpressView) {
        g gVar = new g(activity.getApplicationContext(), qVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.a.b.1
            @Override // com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(aVar.b()));
                a(map);
                super.a(view, f2, f3, f4, f5, sparseArray, z);
            }
        };
        gVar.a(pAGAppOpenAdExpressView);
        a(activity.getApplicationContext(), qVar, gVar);
        a(gVar, qVar);
        return gVar;
    }

    private static void a(Context context, q qVar, com.bytedance.sdk.openadsdk.core.b.b bVar) {
        if (qVar == null || qVar.M() != 4) {
            return;
        }
        bVar.a(d.a(context, qVar, "open_ad"));
    }

    public static void a(com.bytedance.sdk.openadsdk.core.b.b bVar, q qVar) {
        HashMap map = new HashMap();
        map.put("click_area", Integer.valueOf(qVar.k()));
        map.put("openad_creative_type", q.c(qVar) ? "video_normal_ad" : "image_normal_ad");
        map.put("click_scence", Integer.valueOf(t.k(qVar) ? 3 : 1));
        bVar.a(map);
    }

    public static f b(q qVar, Activity activity, final com.bytedance.sdk.openadsdk.component.h.a aVar, PAGAppOpenAdExpressView pAGAppOpenAdExpressView) {
        f fVar = new f(activity.getApplicationContext(), qVar, "open_ad", 4) { // from class: com.bytedance.sdk.openadsdk.component.a.b.2
            @Override // com.bytedance.sdk.openadsdk.core.b.a, com.bytedance.sdk.openadsdk.core.b.b, com.bytedance.sdk.openadsdk.core.b.c
            public void a(View view, float f2, float f3, float f4, float f5, SparseArray<c.a> sparseArray, boolean z) {
                HashMap map = new HashMap();
                map.put("duration", Long.valueOf(aVar.b()));
                a(map);
                super.a(view, f2, f3, f4, f5, sparseArray, z);
            }
        };
        fVar.a((View) pAGAppOpenAdExpressView);
        a(activity.getApplicationContext(), qVar, fVar);
        a(fVar, qVar);
        return fVar;
    }
}
