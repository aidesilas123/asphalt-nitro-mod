package com.json.mediationsdk.integration;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.AccessToken;
import com.json.environment.StringUtils;
import com.json.mediationsdk.IntegrationData;
import com.json.mediationsdk.p;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;

/* JADX INFO: loaded from: classes4.dex */
public class IntegrationHelper {

    class a extends Thread {
        final /* synthetic */ Context a;

        a(Context context) {
            this.a = context;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Log.w("IntegrationHelper", "--------------- Google Play Services --------------");
                if (this.a.getPackageManager().getApplicationInfo(this.a.getPackageName(), 128).metaData.containsKey("com.google.android.gms.version")) {
                    Log.i("IntegrationHelper", "Google Play Services - VERIFIED");
                    String strB = p.o().b(this.a);
                    if (!TextUtils.isEmpty(strB)) {
                        Log.i("IntegrationHelper", "GAID is: " + strB + " (use this for test devices)");
                    }
                } else {
                    Log.e("IntegrationHelper", "Google Play Services - MISSING");
                }
            } catch (Exception unused) {
                Log.e("IntegrationHelper", "Google Play Services - MISSING");
            }
        }
    }

    private static IntegrationData a(Context context, String str) {
        String str2;
        try {
            IntegrationData integrationData = (IntegrationData) Class.forName(str).getMethod("getIntegrationData", Context.class).invoke(null, context);
            Log.i("IntegrationHelper", "Adapter " + integrationData.version + " - VERIFIED");
            return integrationData;
        } catch (ClassNotFoundException unused) {
            str2 = "Adapter - MISSING";
            Log.e("IntegrationHelper", str2);
            return null;
        } catch (Exception unused2) {
            str2 = "Adapter version - NOT VERIFIED";
            Log.e("IntegrationHelper", str2);
            return null;
        }
    }

    private static void b(Context context) {
        new a(context).start();
    }

    private static void c(String str) {
        try {
            Log.i("IntegrationHelper", "SDK Version - " + ((String) Class.forName(str).getMethod("getAdapterSDKVersion", new Class[0]).invoke(null, new Object[0])));
        } catch (Exception unused) {
            Log.w("validateSDKVersion", "Unable to get SDK version");
        }
    }

    private static boolean d(IntegrationData integrationData) {
        if (integrationData.version.startsWith("4.1") || integrationData.version.startsWith("4.3")) {
            Log.i("IntegrationHelper", "Adapter - VERIFIED");
            return true;
        }
        Log.e("IntegrationHelper", integrationData.name + " adapter " + integrationData.version + " is incompatible with SDK version " + IronSourceUtils.getSDKVersion() + ", please update your adapter to version 4.1.*");
        return false;
    }

    private static void e(Context context) {
        Log.i("IntegrationHelper", "*** Permissions ***");
        PackageManager packageManager = context.getPackageManager();
        if (packageManager.checkPermission("android.permission.INTERNET", context.getPackageName()) == 0) {
            Log.i("IntegrationHelper", "android.permission.INTERNET - VERIFIED");
        } else {
            Log.e("IntegrationHelper", "android.permission.INTERNET - MISSING");
        }
        if (packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
            Log.i("IntegrationHelper", "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
        } else {
            Log.e("IntegrationHelper", "android.permission.ACCESS_NETWORK_STATE - MISSING");
        }
    }

    private static boolean f(Context context, String str) {
        String str2;
        try {
            String lowerCase = StringUtils.toLowerCase(str);
            byte b = -1;
            int iHashCode = lowerCase.hashCode();
            if (iHashCode != -1875652737) {
                if (iHashCode != 92668925) {
                    if (iHashCode == 497130182 && lowerCase.equals(AccessToken.DEFAULT_GRAPH_DOMAIN)) {
                        b = 1;
                    }
                } else if (lowerCase.equals("admob")) {
                    b = 2;
                }
            } else if (lowerCase.equals("supersonicads")) {
                b = 0;
            }
            if (b == 0) {
                str2 = "--------------- IronSource --------------";
            } else if (b == 1) {
                str2 = "--------------- Meta --------------";
            } else if (b != 2) {
                str2 = "--------------- " + str + " --------------";
            } else {
                str2 = "--------------- Google (AdMob and Ad Manager) --------------";
            }
            Log.i("IntegrationHelper", str2);
            String str3 = "com.ironsource.adapters." + StringUtils.toLowerCase(str) + "." + str + "Adapter";
            IntegrationData integrationDataA = a(context, str3);
            if (integrationDataA == null) {
                return false;
            }
            if (!str.equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) && !d(integrationDataA)) {
                return false;
            }
            c(str3);
            return true;
        } catch (Exception e2) {
            Log.e("IntegrationHelper", "isAdapterValid " + str, e2);
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x00c2. Please report as an issue. */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void validateIntegration(android.content.Context r22) {
        /*
            Method dump skipped, instruction units count: 290
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.mediationsdk.integration.IntegrationHelper.validateIntegration(android.content.Context):void");
    }
}
