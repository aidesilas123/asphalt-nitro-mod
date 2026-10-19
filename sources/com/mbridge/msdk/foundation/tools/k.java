package com.mbridge.msdk.foundation.tools;

import android.net.Uri;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.resource.MBResourceManager;
import java.io.File;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: DynamicViewResourceManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k {
    static final List<String> a;

    /* JADX INFO: compiled from: DynamicViewResourceManager.java */
    public interface a {
        void a(String str, DownloadError downloadError);

        void a(String str, String str2, String str3, String str4, boolean z);
    }

    static {
        ArrayList arrayList = new ArrayList(4);
        a = arrayList;
        if (arrayList != null) {
            arrayList.add("mbridge_splash_native_template_v_v1.xml");
            arrayList.add("mbridge_splash_native_template_h_v1.xml");
        }
    }

    public static String a(int i, String str, String str2) {
        String strB;
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            strB = b(i, str, str2);
        } catch (Exception unused) {
            strB = "";
        }
        File file = null;
        String str3 = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_XML) + File.separator;
        try {
            if (!TextUtils.isEmpty(strB)) {
                file = new File(str3, strB);
            }
        } catch (Exception unused2) {
        }
        if (file == null || !file.exists()) {
            file = new File(str3 + File.separator + strB.replace(".xml", ""), strB);
        }
        return file.getPath();
    }

    public static String a(String str) {
        String strB;
        final String str2;
        File file;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String queryParameter = Uri.parse(str).getQueryParameter(MBridgeConstans.DYNAMIC_VIEW_KEY_NATMP);
            if (!TextUtils.isEmpty(queryParameter)) {
                if (!queryParameter.equals("1")) {
                    return "";
                }
            }
        } catch (Throwable unused) {
        }
        try {
            strB = b(str);
        } catch (Exception unused2) {
            strB = "";
        }
        if (TextUtils.isEmpty(strB)) {
            return "";
        }
        try {
            str2 = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_700_XML) + File.separator;
            file = new File(str2, strB);
        } catch (Exception unused3) {
        }
        if (file.isFile() && file.exists()) {
            return file.getPath();
        }
        String path = new URL(str).getPath();
        final String strSubstring = path.substring(path.lastIndexOf(47) + 1);
        MBDownloadManager.getInstance().download(new DownloadMessage<>(new Object(), str, strSubstring, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_OTHER)).withReadTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS).withConnectTimeout(20000L).withDownloadPriority(DownloadPriority.MEDIUM).withHttpRetryCounter(1).withDirectoryPathInternal(str2).withDownloadStateListener(new OnDownloadStateListener() { // from class: com.mbridge.msdk.foundation.tools.k.2
            @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
            public final void onCancelDownload(DownloadMessage downloadMessage) {
            }

            @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
            public final void onDownloadComplete(DownloadMessage downloadMessage) {
                try {
                    MBResourceManager.getInstance().unZip(str2 + File.separator + strSubstring, str2);
                } catch (Exception unused4) {
                }
            }

            @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
            public final void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            }

            @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
            public final void onDownloadStart(DownloadMessage downloadMessage) {
            }
        }).build().start();
        return "";
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:(3:77|5|6)|8|(3:73|9|(2:11|12))|(1:17)|63|18|(1:20)(1:22)|23|25|(1:68)|(4:(1:(4:28|(1:31)|35|(5:65|51|75|55|(2:57|58)(1:81))(1:(8:40|61|41|71|45|(1:(1:48)(1:49))|70|50)(1:79)))(1:33))(1:34)|75|55|(0)(0))|67|35|(1:37)|65|51) */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0159, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x015a, code lost:
    
        com.mbridge.msdk.foundation.tools.aa.d("DynamicViewResourceManager", r0.getMessage());
     */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0166 A[Catch: Exception -> 0x0171, TRY_LEAVE, TryCatch #6 {Exception -> 0x0171, blocks: (B:55:0x0161, B:57:0x0166), top: B:75:0x0161 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(int r22, java.lang.String r23, final java.lang.String r24, final com.mbridge.msdk.foundation.tools.k.a r25, com.mbridge.msdk.foundation.entity.CampaignEx r26) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.k.a(int, java.lang.String, java.lang.String, com.mbridge.msdk.foundation.tools.k$a, com.mbridge.msdk.foundation.entity.CampaignEx):void");
    }

    private static String b(int i, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return "";
        }
        try {
            String path = new URL(str2).getPath();
            String strSubstring = path.substring(path.lastIndexOf(47) + 1);
            return !TextUtils.isEmpty(strSubstring) ? strSubstring.replace(".zip", "") : "";
        } catch (Exception unused) {
            return "";
        }
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String path = new URL(str).getPath();
            String strSubstring = path.substring(path.lastIndexOf(47) + 1);
            if (TextUtils.isEmpty(strSubstring)) {
                return "";
            }
            String strReplace = strSubstring.replace(".zip", "");
            List<String> list = a;
            return list != null ? !list.contains(strReplace) ? strReplace : "" : "";
        } catch (Exception unused) {
            return "";
        }
    }
}
