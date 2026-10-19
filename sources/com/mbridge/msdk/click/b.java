package com.mbridge.msdk.click;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import com.google.android.gms.drive.DriveFile;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: CommonClickUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    static Handler a = new Handler(Looper.getMainLooper()) { // from class: com.mbridge.msdk.click.b.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            String str;
            String str2;
            String string;
            super.handleMessage(message);
            try {
                if (message.what == 1000) {
                    int i = message.arg1;
                    int i2 = message.arg2;
                    Bundle data = message.getData();
                    if (data != null) {
                        String string2 = data.getString("rid");
                        String string3 = data.getString("cid_n");
                        string = data.getString(BidResponsedEx.KEY_CID);
                        str = string2;
                        str2 = string3;
                    } else {
                        str = "";
                        str2 = str;
                        string = str2;
                    }
                    new p(com.mbridge.msdk.foundation.controller.b.d().g()).a(i, i2, str, str2, string);
                }
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
        }
    };

    public static String a(String str, String str2, String str3) {
        Map<String, e.a> mapAm;
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            String host = Uri.parse(str).getHost();
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null || (mapAm = eVarB.am()) == null || TextUtils.isEmpty(host)) {
                return str;
            }
            Iterator<Map.Entry<String, e.a>> it = mapAm.entrySet().iterator();
            while (it.hasNext()) {
                String key = it.next().getKey();
                if (!TextUtils.isEmpty(key) && host.contains(key)) {
                    e.a aVar = mapAm.get(key);
                    return aVar != null ? a(a(a(a(str, aVar.d(), String.valueOf(w.m(com.mbridge.msdk.foundation.controller.b.d().g()))), aVar.c(), String.valueOf(w.l(com.mbridge.msdk.foundation.controller.b.d().g()))), aVar.a(), str2), aVar.b(), str3) : str;
                }
            }
            return str;
        } catch (Exception e2) {
            e2.printStackTrace();
            return str;
        }
    }

    private static String a(String str, List<String> list, String str2) {
        if (list != null) {
            for (String str3 : list) {
                if (!TextUtils.isEmpty(str3)) {
                    str = str.replaceAll(str3, str2);
                }
            }
        }
        return str;
    }

    public static void a(final Context context, int i, final String str) {
        if (i == 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.click.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        Method method = Class.forName("com.mbridge.msdk.foundation.tools.r").getMethod("mia", Context.class, String.class);
                        Context context2 = context;
                        if (context2 != null) {
                            method.invoke(null, context2, str);
                        } else {
                            aa.d("CommonClickUtil", "Context is null");
                        }
                    } catch (Throwable th) {
                        aa.d("CommonClickUtil", th.getMessage());
                    }
                }
            });
        } catch (Throwable th) {
            aa.d("CommonClickUtil", th.getMessage());
        }
    }

    public static void a(Context context, String str) {
        if (str == null || context == null) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null) {
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
            }
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.addFlags(DriveFile.MODE_READ_ONLY);
                context.startActivity(intent2);
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    private static boolean a(Context context, Intent intent) {
        try {
        } catch (Throwable th) {
            aa.b("CommonClickUtil", th.getMessage(), th);
        }
        if (context instanceof Activity) {
            context.startActivity(intent);
            return true;
        }
        if (com.mbridge.msdk.foundation.controller.b.d().c() != null) {
            Context contextC = com.mbridge.msdk.foundation.controller.b.d().c();
            if (!(contextC instanceof Activity)) {
                return false;
            }
            contextC.startActivity(intent);
            return true;
        }
        return false;
    }

    public static void b(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        try {
            Class.forName("com.mbridge.msdk.activity.MBCommonActivity");
            Intent intent = new Intent(context, Class.forName("com.mbridge.msdk.activity.MBCommonActivity"));
            intent.putExtra("url", str);
            if (!(context instanceof ContextThemeWrapper)) {
                intent.setFlags(DriveFile.MODE_READ_ONLY);
            }
            context.startActivity(intent);
        } catch (ClassNotFoundException e2) {
            aa.d("CommonClickUtil", e2.getMessage());
        } catch (Throwable th) {
            aa.d("CommonClickUtil", th.getMessage());
        }
    }

    public static boolean c(Context context, String str) {
        if (str != null && !"".equals(str)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 8192);
                if (packageInfo != null) {
                    return str.equals(packageInfo.packageName);
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean d(Context context, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            intent.setData(uri);
            if (uri.getScheme().startsWith(u.b("L7QthdSsLkP8")) && a(context, intent)) {
                return true;
            }
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            aa.b("CommonClickUtil", th.getMessage(), th);
            return false;
        }
    }

    public static void e(Context context, String str) {
        Intent launchIntentForPackage;
        ResolveInfo next;
        try {
            if (TextUtils.isEmpty(str) || !c(context, str) || (launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str)) == null) {
                return;
            }
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(launchIntentForPackage, 0);
            if (listQueryIntentActivities.size() <= 0 || (next = listQueryIntentActivities.iterator().next()) == null) {
                return;
            }
            ActivityInfo activityInfo = next.activityInfo;
            ComponentName componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            Intent intent = new Intent();
            intent.setComponent(componentName);
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            context.startActivity(intent);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
