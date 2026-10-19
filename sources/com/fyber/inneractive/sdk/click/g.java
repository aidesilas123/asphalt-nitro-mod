package com.fyber.inneractive.sdk.click;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.fyber.inneractive.sdk.click.l;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.x;
import java.net.URISyntaxException;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g implements a {
    @Override // com.fyber.inneractive.sdk.click.a
    public b a(Context context, Uri uri, List<i> list) {
        if (a(uri)) {
            try {
                Intent uri2 = Intent.parseUri(uri.toString(), 1);
                if (x.a(context, uri2)) {
                    int i = IAlog.a;
                    IAlog.a(1, null, "%s %s", "DEEPLINK", uri.toString());
                    if (list != null) {
                        list.add(new i(uri.toString(), true, l.d.OPEN_IN_EXTERNAL_APPLICATION, null));
                    }
                    return l.a(uri.toString(), l.d.OPEN_IN_EXTERNAL_APPLICATION, "IntentScheme");
                }
                String stringExtra = uri2.getStringExtra("browser_fallback_url");
                if (TextUtils.isEmpty(stringExtra)) {
                    if (list != null) {
                        list.add(new i(uri.toString(), false, l.d.OPEN_IN_EXTERNAL_APPLICATION, "tryToOpenExternalApp has failed (intent scheme)"));
                    }
                    return l.a(uri.toString(), "IntentScheme", "tryToOpenExternalApp has failed (intent scheme)");
                }
                try {
                    context.startActivity(x.a(context, stringExtra));
                    int i2 = IAlog.a;
                    IAlog.a(1, null, "%s %s", "Intent opened successfully, url:", stringExtra);
                    if (list != null) {
                        list.add(new i(uri.toString(), false, l.d.DEEP_LINK, null));
                        list.add(new i(stringExtra, true, l.d.OPEN_IN_EXTERNAL_APPLICATION, null));
                    }
                    return l.a(uri.toString(), l.d.OPEN_IN_EXTERNAL_APPLICATION, "IntentScheme");
                } catch (ActivityNotFoundException unused) {
                    int i3 = IAlog.a;
                    IAlog.a(1, null, "%s %s", "Intent failed, url:", stringExtra);
                }
            } catch (URISyntaxException e2) {
                IAlog.a("failed parsing uri with error: %s", e2.getLocalizedMessage());
                if (list != null) {
                    list.add(new i(uri.toString(), false, l.d.OPEN_IN_EXTERNAL_APPLICATION, null));
                }
                return new b(uri.toString(), l.d.FAILED, "IntentScheme", e2);
            }
        }
        return null;
    }

    public final boolean a(Uri uri) {
        return uri != null && SDKConstants.PARAM_INTENT.equalsIgnoreCase(uri.getScheme());
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public boolean a(Uri uri, l lVar) {
        return SDKConstants.PARAM_INTENT.equalsIgnoreCase(uri.getScheme());
    }
}
