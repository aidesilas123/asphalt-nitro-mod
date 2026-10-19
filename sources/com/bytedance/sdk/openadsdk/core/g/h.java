package com.bytedance.sdk.openadsdk.core.g;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.AdSessionConfiguration;
import com.iab.omid.library.bytedance2.adsession.AdSessionContext;
import com.iab.omid.library.bytedance2.adsession.CreativeType;
import com.iab.omid.library.bytedance2.adsession.ImpressionType;
import com.iab.omid.library.bytedance2.adsession.Owner;
import com.iab.omid.library.bytedance2.adsession.Partner;
import com.iab.omid.library.bytedance2.adsession.VerificationScriptResource;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: ViewabilityTrackerFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    @NonNull
    public static g a(@NonNull View view, @NonNull Set<j> set) {
        AdSession adSessionA = a(CreativeType.VIDEO, set, Owner.NATIVE);
        return new i(adSessionA, AdEvents.createAdEvents(adSessionA), view, MediaEvents.createMediaEvents(adSessionA));
    }

    public static g a(WebView webView) {
        Partner partnerA = e.a();
        if (partnerA == null) {
            throw new IllegalArgumentException("Parameter 'partner' may not be null.");
        }
        AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(CreativeType.HTML_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false), AdSessionContext.createHtmlAdSessionContext(partnerA, webView, "", ""));
        return new g(adSessionCreateAdSession, AdEvents.createAdEvents(adSessionCreateAdSession), webView);
    }

    private static AdSession a(CreativeType creativeType, Set<j> set, Owner owner) {
        List<VerificationScriptResource> listA = a(set);
        if (listA.isEmpty()) {
            l.d("verificationScriptResources is empty");
        }
        Partner partnerA = e.a();
        if (partnerA == null) {
            return null;
        }
        return AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, owner, false), AdSessionContext.createNativeAdSessionContext(partnerA, e.b(), listA, "", ""));
    }

    private static List<VerificationScriptResource> a(Set<j> set) {
        ArrayList arrayList = new ArrayList();
        for (j jVar : set) {
            try {
                if (TextUtils.isEmpty(jVar.a()) || TextUtils.isEmpty(jVar.b())) {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithoutParameters(jVar.c()));
                } else {
                    arrayList.add(VerificationScriptResource.createVerificationScriptResourceWithParameters(jVar.a(), jVar.c(), jVar.b()));
                }
            } catch (Throwable unused) {
            }
        }
        return arrayList;
    }
}
