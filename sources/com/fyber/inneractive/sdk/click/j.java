package com.fyber.inneractive.sdk.click;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.fyber.inneractive.sdk.click.l;
import com.fyber.inneractive.sdk.util.IAlog;
import com.google.android.gms.drive.DriveFile;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes2.dex */
public class j implements com.fyber.inneractive.sdk.click.a {
    public static final Comparator<ResolveInfo> a = new a();

    public class a implements Comparator<ResolveInfo> {
        @Override // java.util.Comparator
        public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
            ActivityInfo activityInfo;
            String str;
            ResolveInfo resolveInfo3 = resolveInfo2;
            ActivityInfo activityInfo2 = resolveInfo.activityInfo;
            if (activityInfo2 == null || (activityInfo = resolveInfo3.activityInfo) == null || (str = activityInfo2.packageName) == null) {
                return 1;
            }
            return str.compareTo(activityInfo.packageName);
        }
    }

    public final b a(Context context, Intent intent, Uri uri, List<i> list) {
        try {
            context.startActivity(intent);
            if (list != null) {
                list.add(new i(uri.toString(), true, a(intent), null));
            }
            return l.a(uri.toString(), a(intent), "Resolver");
        } catch (Exception e2) {
            IAlog.a("failed starting activity with error: %s", e2.getLocalizedMessage());
            if (list != null) {
                list.add(new i(uri.toString(), false, l.d.OPEN_IN_EXTERNAL_APPLICATION, null));
            }
            return l.a(uri.toString(), "Resolver", "failed starting resolved activity - " + e2.getMessage());
        }
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public b a(Context context, Uri uri, List<i> list) {
        Intent intent;
        ResolveInfo resolveInfo;
        boolean z = true;
        if (Build.VERSION.SDK_INT > 29) {
            String scheme = uri.getScheme();
            if (!(ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme))) {
                z = false;
            }
        }
        if (!z) {
            Intent intent2 = new Intent("android.intent.action.VIEW", uri);
            if (!(context instanceof Activity)) {
                intent2.setFlags(DriveFile.MODE_READ_ONLY);
            }
            return a(context, intent2, uri, list);
        }
        List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", uri), 32);
        if (listQueryIntentActivities == null || listQueryIntentActivities.size() <= 0) {
            return null;
        }
        List<ResolveInfo> listQueryIntentActivities2 = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse("http://www.fyber.com")), 32);
        TreeSet treeSet = new TreeSet(a);
        treeSet.addAll(listQueryIntentActivities2);
        listQueryIntentActivities.removeAll(treeSet);
        if (listQueryIntentActivities.size() <= 0 || (resolveInfo = listQueryIntentActivities.get(0)) == null) {
            intent = null;
        } else {
            intent = new Intent("android.intent.action.VIEW", uri);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent.setClassName(activityInfo.packageName, activityInfo.name);
            if (!(context instanceof Activity)) {
                intent.setFlags(DriveFile.MODE_READ_ONLY);
            }
        }
        if (intent != null) {
            return a(context, intent, uri, list);
        }
        return null;
    }

    public final l.d a(Intent intent) {
        boolean z = false;
        if (intent.getData() != null) {
            String string = intent.getData().toString();
            if (!TextUtils.isEmpty(string)) {
                Uri uri = Uri.parse(string);
                String host = uri.getHost();
                String scheme = uri.getScheme();
                if (((string.startsWith("http:") || string.startsWith("https:")) && ("play.google.com".equalsIgnoreCase(host) || "market.android.com".equalsIgnoreCase(host))) || "market".equalsIgnoreCase(scheme)) {
                    z = true;
                }
            }
        }
        return z ? l.d.OPEN_GOOGLE_STORE : l.d.OPEN_IN_EXTERNAL_APPLICATION;
    }

    @Override // com.fyber.inneractive.sdk.click.a
    public boolean a(Uri uri, l lVar) {
        return true;
    }
}
