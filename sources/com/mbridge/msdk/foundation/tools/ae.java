package com.mbridge.msdk.foundation.tools;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.kidoz.sdk.api.general.utils.ConstantDef;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.webview.BrowserView;
import com.mbridge.msdk.out.BaseTrackingListener;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: SameSDKTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class ae extends i {
    public static boolean a;
    public static char[] b = {'a', 'n', 'd', 'r', 'o', 'i', 'd', 'c', 'o', 'n', 't', 'e', 'n', 't', 'p', 'm', 'g', 'e', 't', 'C', 'o', 'n', 't', 'e', 'x', 't'};
    public static LinearLayout c;

    /* JADX INFO: compiled from: SameSDKTool.java */
    public static class a {
        private static Intent a(Context context) {
            return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.package.name"));
        }

        public static boolean a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
            try {
                List<ResolveInfo> listB = b(context);
                if (listB != null && listB.size() > 0) {
                    if (!b(str)) {
                        if (c(str)) {
                            str = "market://" + str.substring(str.indexOf("details?id="));
                        } else {
                            str = null;
                        }
                    }
                    if (TextUtils.isEmpty(str)) {
                        return false;
                    }
                    Intent intentA = a(context);
                    intentA.setData(Uri.parse(str));
                    intentA.addFlags(DriveFile.MODE_READ_ONLY);
                    Iterator<ResolveInfo> it = listB.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                            intentA.setPackage("com.android.vending");
                            break;
                        }
                    }
                    context.startActivity(intentA);
                    ae.a(nativeTrackingListener);
                    return true;
                }
                return false;
            } catch (Throwable th) {
                aa.d("SDKUtil", Log.getStackTraceString(th));
                return false;
            }
        }

        public static boolean a(String str) {
            return b(str) || c(str);
        }

        private static List<ResolveInfo> b(Context context) {
            try {
                return context.getPackageManager().queryIntentActivities(a(context), 0);
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }

        public static boolean b(String str) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return false;
                }
                return Uri.parse(str).getScheme().equals("market");
            } catch (Throwable th) {
                aa.d("SDKUtil", Log.getStackTraceString(th));
                return false;
            }
        }

        private static boolean c(String str) {
            Uri uri;
            try {
                if (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || TextUtils.isEmpty(uri.getHost())) {
                    return false;
                }
                if (!uri.getHost().equals("play.google.com")) {
                    if (!uri.getHost().equals("market.android.com")) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                aa.d("SDKUtil", Log.getStackTraceString(th));
            }
            return false;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File fileA = com.mbridge.msdk.foundation.same.b.e.a(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_IMG);
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            if (str.lastIndexOf("/") == -1) {
                str2 = str.hashCode() + "";
            } else {
                str2 = (str.hashCode() + str.substring(str.lastIndexOf("/") + 1).hashCode()) + "";
            }
        }
        return new File(fileA, str2).getAbsolutePath();
    }

    public static void a(Context context, String str, CampaignEx campaignEx, com.mbridge.msdk.click.a aVar, BaseTrackingListener baseTrackingListener) {
        HashMap map = new HashMap();
        map.put("type", ConstantDef.SDK_CONTENT_VERSION);
        try {
            BrowserView browserView = new BrowserView(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx);
            browserView.setLayoutParams(new LinearLayout.LayoutParams(w.l(context), w.m(context)));
            browserView.setListener(new com.mbridge.msdk.foundation.webview.a(context, campaignEx, aVar, browserView, baseTrackingListener));
            browserView.loadUrl(str);
            map.put("result", "1");
        } catch (Exception e2) {
            aa.d("SDKUtil", e2.getMessage());
            map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
        }
        try {
            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", campaignEx, map);
        } catch (Exception unused) {
        }
    }

    public static void a(Context context, String str, CampaignEx campaignEx, NativeListener.NativeTrackingListener nativeTrackingListener) {
        if (context == null) {
            return;
        }
        HashMap map = new HashMap();
        String currentLRid = campaignEx != null ? campaignEx.getCurrentLRid() : "";
        if (a) {
            a(context, str, nativeTrackingListener, currentLRid);
            return;
        }
        try {
            Class.forName("com.mbridge.msdk.activity.MBCommonActivity");
            Intent intent = new Intent(context, Class.forName("com.mbridge.msdk.activity.MBCommonActivity"));
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (a.b(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            intent.putExtra("url", str);
            aa.b("url", "webview url = " + str);
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            intent.putExtra("mvcommon", campaignEx);
            context.startActivity(intent);
            map.put("result", "1");
        } catch (Exception unused) {
            map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            a(context, str, nativeTrackingListener, currentLRid);
        }
        try {
            map.put("type", CampaignEx.CLICKMODE_ON);
            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", currentLRid, map);
        } catch (Exception unused2) {
        }
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener) {
        a(context, str, baseTrackingListener, "");
    }

    public static void a(Context context, String str, BaseTrackingListener baseTrackingListener, String str2) {
        if (str == null || context == null) {
            return;
        }
        HashMap map = new HashMap();
        try {
            if (a.b(str)) {
                str = "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", "");
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(intent, 65536);
            if (resolveInfoResolveActivity != null) {
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                intent.setClassName(activityInfo.packageName, activityInfo.name);
            }
            context.startActivity(intent);
            a(baseTrackingListener);
            map.put("result", "1");
        } catch (Exception e2) {
            e2.printStackTrace();
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
                intent2.addFlags(268468224);
                context.startActivity(intent2);
                a(baseTrackingListener);
                map.put("result", "1");
            } catch (Exception e3) {
                e3.printStackTrace();
                map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            }
        }
        try {
            map.put("type", CampaignEx.CLICKMODE_ON);
            com.mbridge.msdk.foundation.same.report.m.a().a("2000150", str2, map);
        } catch (Exception unused) {
        }
    }

    public static void a(Context context, String str, NativeListener.NativeTrackingListener nativeTrackingListener) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
            boolean z = listQueryIntentActivities.size() > 0;
            if (!str.startsWith("market://")) {
                if (str.startsWith("https://play.google.com/")) {
                    a(context, "market://details?id=" + str.replace("https://play.google.com/store/apps/details?id=", ""), nativeTrackingListener);
                    return;
                }
                return;
            }
            if (!z) {
                a(context, "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", ""), (BaseTrackingListener) nativeTrackingListener);
                return;
            }
            Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (it.next().activityInfo.packageName.equals("com.android.vending")) {
                        intent.setClassName("com.android.vending", "com.android.vending.AssetBrowserActivity");
                        break;
                    }
                }
            }
            try {
                context.startActivity(intent);
                a(nativeTrackingListener);
            } catch (Exception unused) {
                a(context, "https://play.google.com/store/apps/details?id=" + str.replace("market://details?id=", ""), (BaseTrackingListener) nativeTrackingListener);
            }
        } catch (Exception e2) {
            aa.d("SDKUtil", e2.getMessage());
        }
    }

    public static void a(BaseTrackingListener baseTrackingListener) {
        if (baseTrackingListener instanceof NativeListener.TrackingExListener) {
            ((NativeListener.TrackingExListener) baseTrackingListener).onLeaveApp();
        }
    }

    public static void a(Campaign campaign, ViewGroup viewGroup) {
        a(campaign, viewGroup, 0, 0);
    }

    public static void a(Campaign campaign, ViewGroup viewGroup, int i, int i2) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    aa.c("SDKUtil", "show linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    if (c == null) {
                        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                        if (contextG instanceof Activity) {
                            c = (LinearLayout) LayoutInflater.from(contextG.getApplicationContext()).inflate(t.a(contextG.getApplicationContext(), "mbridge_cm_loading_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                        } else {
                            c = (LinearLayout) LayoutInflater.from(contextG).inflate(t.a(contextG, "mbridge_cm_loading_layout", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
                        }
                    }
                    int iMin = Math.min(viewGroup.getWidth(), viewGroup.getHeight());
                    int iMin2 = Math.min(Math.max(iMin / 4, 70), iMin);
                    if (viewGroup instanceof FrameLayout) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iMin2, iMin2);
                        layoutParams.gravity = 17;
                        ao.a(c);
                        viewGroup.addView(c, layoutParams);
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iMin2, iMin2);
                    if (i2 == 0 && i == 0) {
                        layoutParams2.addRule(13);
                    } else {
                        layoutParams2.leftMargin = i2;
                        layoutParams2.topMargin = i;
                    }
                    ao.a(c);
                    viewGroup.addView(c, layoutParams2);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static void b(Campaign campaign, ViewGroup viewGroup) {
        if (campaign != null) {
            CampaignEx campaignEx = (CampaignEx) campaign;
            if (campaignEx.getLinkType() == 8 && campaignEx.getAabEntity() != null && campaignEx.getAabEntity().getHlp() == 1) {
                if (viewGroup == null) {
                    aa.c("SDKUtil", "hide linkType==8 loading view failed. viewGroup is null");
                    return;
                }
                try {
                    LinearLayout linearLayout = c;
                    if (linearLayout == null) {
                        return;
                    }
                    viewGroup.removeView(linearLayout);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
    }
}
