package com.kidoz.sdk.omid;

import android.webkit.WebView;
import com.iab.omid.library.kidoznet.Omid;
import com.iab.omid.library.kidoznet.adsession.AdSession;
import com.iab.omid.library.kidoznet.adsession.AdSessionConfiguration;
import com.iab.omid.library.kidoznet.adsession.AdSessionContext;
import com.iab.omid.library.kidoznet.adsession.CreativeType;
import com.iab.omid.library.kidoznet.adsession.ImpressionType;
import com.iab.omid.library.kidoznet.adsession.Owner;
import com.iab.omid.library.kidoznet.adsession.Partner;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.kidoz.sdk.api.general.utils.SDKLogger;

/* JADX INFO: compiled from: OMServiceImpl.java */
/* JADX INFO: loaded from: classes4.dex */
public class b implements a {
    public static final String a = "b";
    public static final a b = new b();

    @Override // com.kidoz.sdk.omid.a
    public c a(WebView webView) {
        try {
            Omid.activate(webView.getContext().getApplicationContext());
            if (!Omid.isActive()) {
                SDKLogger.printErrorLog(a, "Could not activate Omid SDK, silently ignoring further calls for this omid session");
                return new e();
            }
            CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
            ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
            Owner owner = Owner.JAVASCRIPT;
            AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false), AdSessionContext.createHtmlAdSessionContext(Partner.createPartner(ConstantDef.OM_PARTNER_NAME, "9.0.1"), webView, null, ""));
            adSessionCreateAdSession.registerAdView(webView);
            return new OMSessionAdapterSafeStateDecorator(new d(adSessionCreateAdSession));
        } catch (Throwable th) {
            SDKLogger.printErrorLog(a, "OMService.createSession failed");
            th.printStackTrace();
            return new e();
        }
    }
}
