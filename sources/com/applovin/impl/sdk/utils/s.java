package com.applovin.impl.sdk.utils;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.r;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.drive.DriveFile;
import com.json.b4;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class s {
    public static void a(Uri uri, final com.applovin.impl.adview.b bVar, final com.applovin.impl.sdk.n nVar) {
        com.applovin.impl.adview.d dVarQZ = bVar.qZ();
        final String queryParameter = uri.getQueryParameter(b4.p);
        if (TextUtils.isEmpty(queryParameter)) {
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().i("UriUtils", "Could not find url to load from query in original uri");
                return;
            }
            return;
        }
        String queryParameter2 = uri.getQueryParameter("load_type");
        if ("external".equalsIgnoreCase(queryParameter2)) {
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().f("UriUtils", "Loading new page externally: " + queryParameter);
            }
            a(Uri.parse(queryParameter), dVarQZ.getContext(), nVar);
            m.c(bVar.qQ(), bVar.getCurrentAd(), bVar.qY());
            return;
        }
        if ("internal".equalsIgnoreCase(queryParameter2)) {
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().f("UriUtils", "Loading new page in WebView: " + queryParameter);
            }
            dVarQZ.loadUrl(queryParameter);
            String queryParameter3 = uri.getQueryParameter("bg_color");
            if (StringUtils.isValidString(queryParameter3)) {
                dVarQZ.setBackgroundColor(Color.parseColor(queryParameter3));
                return;
            }
            return;
        }
        if (!"in_app".equalsIgnoreCase(queryParameter2)) {
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().i("UriUtils", "Could not find load type in original uri");
                return;
            }
            return;
        }
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().f("UriUtils", "Loading new page in slide-up webview: " + queryParameter);
        }
        nVar.BM().a(new a() { // from class: com.applovin.impl.sdk.utils.s.1
            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (activity instanceof AppLovinWebViewActivity) {
                    ((AppLovinWebViewActivity) activity).loadUrl(queryParameter, null);
                    m.a(bVar.qQ(), bVar.getCurrentAd(), bVar.qY());
                }
            }

            @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (activity instanceof AppLovinWebViewActivity) {
                    m.b(bVar.qQ(), bVar.getCurrentAd(), bVar.qY());
                    nVar.BM().b(this);
                }
            }
        });
        Intent intent = new Intent(com.applovin.impl.sdk.n.getApplicationContext(), (Class<?>) AppLovinWebViewActivity.class);
        intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, nVar.getSdkKey());
        intent.setFlags(DriveFile.MODE_READ_ONLY);
        com.applovin.impl.sdk.n.getApplicationContext().startActivity(intent);
    }

    public static void a(Uri uri, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar) {
        String queryParameter = uri.getQueryParameter(b4.p);
        if (URLUtil.isValidUrl(queryParameter)) {
            nVar.Cu().a(com.applovin.impl.sdk.network.h.ID().dd(StringUtils.appendQueryParameter(queryParameter, "clcode", eVar.getClCode())).aV(false).aY(Boolean.parseBoolean(uri.getQueryParameter("fire_from_webview"))).IF());
            return;
        }
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().i("UriUtils", "Could not find postback url to fire from query in original uri: " + uri);
        }
    }

    public static boolean a(Uri uri, Context context, com.applovin.impl.sdk.n nVar) {
        boolean z = false;
        if (uri == null) {
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent.setFlags(DriveFile.MODE_READ_ONLY);
            }
            if ("market".equals(intent.getScheme()) || (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aQQ)).booleanValue() && "play.google.com".equals(uri.getHost()))) {
                intent.setPackage("com.android.vending");
            }
            nVar.Ce().pauseForClick();
            context.startActivity(intent);
            z = true;
        } catch (Throwable th) {
            nVar.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                nVar.BN().c("UriUtils", "Unable to open \"" + uri + "\".", th);
            }
            nVar.Cs().d("UriUtils", "openUri:" + uri.getHost(), th);
        }
        if (!z) {
            nVar.Ce().resumeForClick();
        }
        return z;
    }

    public static void b(Uri uri, @Nullable com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar) {
        String strEmptyIfNull = StringUtils.emptyIfNull(uri.getQueryParameter("error"));
        String strEmptyIfNull2 = StringUtils.emptyIfNull(uri.getQueryParameter("exception"));
        String strEmptyIfNull3 = StringUtils.emptyIfNull(uri.getQueryParameter("details"));
        HashMap map = new HashMap();
        map.put(ShareConstants.FEED_SOURCE_PARAM, strEmptyIfNull);
        map.put("top_main_method", strEmptyIfNull2);
        if (eVar != null) {
            map.put("details", "size=" + eVar.getSize() + ",ad_id=" + eVar.getAdIdNumber() + ",dsp=" + eVar.getDspName() + ",extra=" + strEmptyIfNull3);
        } else {
            map.put("details", "extra=" + strEmptyIfNull3);
        }
        nVar.Cs().a(r.a.TEMPLATE_ERROR, map);
    }

    public static boolean s(Uri uri) {
        return uri != null && "applovin".equalsIgnoreCase(uri.getScheme()) && "com.applovin.sdk".equalsIgnoreCase(uri.getHost()) && "/adservice/deeplink".equals(uri.getPath());
    }

    public static Bundle t(Uri uri) {
        Bundle bundle = new Bundle();
        for (String str : uri.getQueryParameterNames()) {
            bundle.putString(str, uri.getQueryParameter(str));
        }
        return bundle;
    }
}
