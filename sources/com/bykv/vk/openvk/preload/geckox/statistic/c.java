package com.bykv.vk.openvk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.h;
import com.json.v4;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: compiled from: UploadStatistic.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static Integer a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static JSONObject a(StatisticModel.PackageStatisticModel packageStatisticModel, Common common) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put(TtmlNode.TAG_REGION, common.region);
        jSONObject.put("err_code", packageStatisticModel.errCode);
        jSONObject.put("err_msg", packageStatisticModel.errMsg);
        jSONObject.put("sdk_version", common.sdkVersion);
        jSONObject.put("access_key", packageStatisticModel.accessKey);
        jSONObject.put("stats_type", packageStatisticModel.statsType);
        jSONObject.put("device_id", common.deviceId);
        Long l = packageStatisticModel.patchId;
        jSONObject.put("patch_id", l == null ? 0L : l.longValue());
        jSONObject.put("group_name", packageStatisticModel.groupName);
        jSONObject.put(v4.x, common.os);
        jSONObject.put("app_version", common.appVersion);
        jSONObject.put("device_model", common.deviceModel);
        jSONObject.put("channel", packageStatisticModel.channel);
        Long l2 = packageStatisticModel.id;
        jSONObject.put("id", l2 == null ? 0L : l2.longValue());
        jSONObject.put("ac", common.ac);
        Integer num = packageStatisticModel.downloadRetryTimes;
        jSONObject.put("download_retry_times", num == null ? 0 : num.intValue());
        String str = packageStatisticModel.downloadUrl;
        if (str == null) {
            str = "";
        }
        jSONObject.put(DownloadModel.DOWNLOAD_URL, str);
        jSONObject.put("download_duration", packageStatisticModel.downloadDuration);
        List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list = packageStatisticModel.downloadFailRecords;
        jSONObject.put("download_fail_records", list != null ? list : "");
        jSONObject.put("log_id", packageStatisticModel.logId);
        Long l3 = packageStatisticModel.activeCheckDuration;
        jSONObject.put("active_check_duration", l3 == null ? 0L : l3.longValue());
        Long l4 = packageStatisticModel.applyDuration;
        jSONObject.put("apply_duration", l4 != null ? l4.longValue() : 0L);
        return jSONObject;
    }

    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        List<StatisticModel.PackageStatisticModel> list;
        StatisticModel statisticModelB = b(bVar, aVar);
        if (statisticModelB == null || (list = statisticModelB.packages) == null) {
            return;
        }
        IStatisticMonitor iStatisticMonitor = bVar.f566e;
        if (iStatisticMonitor != null) {
            try {
                Iterator<StatisticModel.PackageStatisticModel> it = list.iterator();
                while (it.hasNext()) {
                    iStatisticMonitor.upload("geckosdk_update_stats", a(it.next(), statisticModelB.common));
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
        if (bVar.q) {
            try {
                String strA = com.bykv.vk.openvk.preload.geckox.c.b.a().a.a(statisticModelB);
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                a(bVar, strA);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar2) {
        IStatisticMonitor iStatisticMonitor = bVar.f566e;
        if (iStatisticMonitor != null) {
            try {
                iStatisticMonitor.upload("geckosdk_query_pkgs", b(bVar, bVar2));
            } catch (Throwable th) {
                com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
    }

    private static void a(final com.bykv.vk.openvk.preload.geckox.b bVar, final String str) {
        final String str2 = "https://" + bVar.m + "/gecko/server/packages/stats";
        bVar.b.execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.c.1
            @Override // java.lang.Runnable
            public final void run() {
                for (int i = 0; i < 3; i++) {
                    try {
                        Response responseDoPost = bVar.f567f.doPost(str2, str);
                        if (responseDoPost.code != 200) {
                            throw new NetworkErrorException("net work get failed, code: " + responseDoPost.code + ", url:" + str2);
                        }
                        if (new JSONObject(responseDoPost.body).getInt("status") == 0) {
                            return;
                        }
                    } catch (Exception e2) {
                        com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "upload statistic:", e2);
                    }
                }
            }
        });
    }

    private static void a(com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar, List<StatisticModel.PackageStatisticModel> list) {
        if (!aVar.B || !aVar.C) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 1;
            packageStatisticModel.accessKey = aVar.a;
            packageStatisticModel.groupName = aVar.b;
            packageStatisticModel.channel = aVar.c;
            packageStatisticModel.ac = aVar.p;
            packageStatisticModel.id = aVar.r;
            packageStatisticModel.downloadRetryTimes = a(aVar.w);
            packageStatisticModel.downloadUrl = aVar.v;
            packageStatisticModel.downloadFailRecords = b(aVar.w);
            if (aVar.B) {
                if (aVar.C) {
                    return;
                }
                packageStatisticModel.errCode = "450";
                packageStatisticModel.errMsg = aVar.E;
                return;
            }
            packageStatisticModel.errCode = "300";
            List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list2 = aVar.w;
            if (list2 == null || list2.isEmpty()) {
                return;
            }
            packageStatisticModel.errMsg = aVar.w.get(0).reason;
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel2);
        packageStatisticModel2.statsType = 0;
        packageStatisticModel2.accessKey = aVar.a;
        packageStatisticModel2.groupName = aVar.b;
        packageStatisticModel2.channel = aVar.c;
        packageStatisticModel2.ac = aVar.p;
        packageStatisticModel2.id = aVar.r;
        packageStatisticModel2.downloadRetryTimes = a(aVar.w);
        packageStatisticModel2.downloadUrl = aVar.v;
        packageStatisticModel2.downloadFailRecords = b(aVar.w);
        packageStatisticModel2.downloadDuration = Long.valueOf(aVar.y - aVar.x);
        if (aVar.D) {
            StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel3);
            packageStatisticModel3.accessKey = aVar.a;
            packageStatisticModel3.groupName = aVar.b;
            packageStatisticModel3.statsType = 2;
            packageStatisticModel3.id = aVar.r;
            packageStatisticModel3.channel = aVar.c;
            packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar.z - aVar.y);
            packageStatisticModel3.applyDuration = Long.valueOf(aVar.A - aVar.z);
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel4);
        packageStatisticModel4.statsType = 3;
        packageStatisticModel4.accessKey = aVar.a;
        packageStatisticModel4.groupName = aVar.b;
        packageStatisticModel4.errCode = "500";
        packageStatisticModel4.id = aVar.r;
        packageStatisticModel4.channel = aVar.c;
        packageStatisticModel4.errMsg = aVar.F;
    }

    private static StatisticModel b(com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        ArrayList arrayList = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar2 : aVar.a()) {
            if (aVar2.f592d != null || aVar2.f594f != 0) {
                if (aVar2.h && aVar2.i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 100;
                    packageStatisticModel.groupName = aVar2.b;
                    packageStatisticModel.accessKey = aVar2.a;
                    packageStatisticModel.channel = aVar2.c;
                    packageStatisticModel.ac = aVar2.p;
                    packageStatisticModel.id = aVar2.r;
                    packageStatisticModel.patchId = aVar2.q;
                    packageStatisticModel.downloadRetryTimes = a(aVar2.f593e);
                    packageStatisticModel.downloadUrl = aVar2.f592d;
                    packageStatisticModel.downloadFailRecords = b(aVar2.f593e);
                    packageStatisticModel.downloadDuration = Long.valueOf(aVar2.f595g - aVar2.f594f);
                    if (!aVar2.j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel2);
                        packageStatisticModel2.statsType = 100;
                        packageStatisticModel2.channel = aVar2.c;
                        packageStatisticModel2.errCode = "403";
                        packageStatisticModel2.errMsg = aVar2.t;
                        packageStatisticModel2.ac = aVar2.p;
                        packageStatisticModel2.patchId = aVar2.q;
                        packageStatisticModel2.id = aVar2.r;
                        packageStatisticModel2.downloadRetryTimes = a(aVar2.f593e);
                        packageStatisticModel2.downloadUrl = aVar2.f592d;
                        packageStatisticModel2.downloadFailRecords = b(aVar2.f593e);
                    } else if (aVar2.k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.accessKey = aVar2.a;
                        packageStatisticModel3.groupName = aVar2.b;
                        packageStatisticModel3.statsType = 102;
                        packageStatisticModel3.patchId = aVar2.q;
                        packageStatisticModel3.id = aVar2.r;
                        packageStatisticModel3.channel = aVar2.c;
                        packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar2.n - aVar2.f595g);
                        packageStatisticModel3.applyDuration = Long.valueOf(aVar2.o - aVar2.n);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = aVar2.a;
                        packageStatisticModel4.groupName = aVar2.b;
                        packageStatisticModel4.statsType = 103;
                        packageStatisticModel4.errCode = "501";
                        packageStatisticModel4.channel = aVar2.c;
                        packageStatisticModel4.patchId = aVar2.q;
                        packageStatisticModel4.id = aVar2.r;
                        packageStatisticModel4.errMsg = aVar2.u;
                        a(aVar2, arrayList);
                    }
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel5);
                    packageStatisticModel5.statsType = 101;
                    packageStatisticModel5.accessKey = aVar2.a;
                    packageStatisticModel5.groupName = aVar2.b;
                    packageStatisticModel5.channel = aVar2.c;
                    packageStatisticModel5.ac = aVar2.p;
                    packageStatisticModel5.patchId = aVar2.q;
                    packageStatisticModel5.id = aVar2.r;
                    packageStatisticModel5.downloadRetryTimes = a(aVar2.f593e);
                    packageStatisticModel5.downloadUrl = aVar2.f592d;
                    packageStatisticModel5.downloadFailRecords = b(aVar2.f593e);
                    if (!aVar2.h) {
                        packageStatisticModel5.errCode = "301";
                        List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list = aVar2.f593e;
                        if (list != null && !list.isEmpty()) {
                            packageStatisticModel5.errMsg = aVar2.f593e.get(0).reason;
                        }
                    } else if (!aVar2.i) {
                        packageStatisticModel5.errCode = "402";
                        packageStatisticModel5.errMsg = aVar2.s;
                    }
                    a(aVar2, arrayList);
                }
            }
            a(aVar2, arrayList);
        }
        Context context = bVar.a;
        arrayList.addAll(com.bykv.vk.openvk.preload.geckox.a.b.a(context).a());
        if (arrayList.isEmpty()) {
            return null;
        }
        Common common = new Common(bVar.j.longValue(), bVar.k, bVar.l, com.bykv.vk.openvk.preload.geckox.utils.a.b(context), h.a(context), bVar.o, bVar.n);
        StatisticModel statisticModel = new StatisticModel();
        statisticModel.common = common;
        statisticModel.packages = arrayList;
        String string = UUID.randomUUID().toString();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((StatisticModel.PackageStatisticModel) it.next()).logId = string;
        }
        return statisticModel;
    }

    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    private static JSONObject b(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar2) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("device_id", bVar.l);
        jSONObject.put(v4.x, 0);
        jSONObject.put("app_version", bVar.k);
        jSONObject.put("api_version", "v3");
        jSONObject.put("aid", bVar.j.longValue());
        jSONObject.put("x_tt_logid", bVar2.f597e);
        jSONObject.put("http_status", bVar2.f599g);
        jSONObject.put("err_msg", bVar2.f596d);
        if (TextUtils.isEmpty(bVar2.f597e)) {
            jSONObject.put("deployments_info", bVar2.b);
            jSONObject.put("local_info", bVar2.a);
            jSONObject.put("custom_info", bVar2.c);
        } else {
            jSONObject.put("deployments_info", "");
            jSONObject.put("local_info", "");
            jSONObject.put("custom_info", "");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(Build.VERSION.SDK_INT);
        jSONObject.put("os_version", sb.toString());
        jSONObject.put("device_platform", "android");
        jSONObject.put("device_model", Build.MODEL);
        jSONObject.put("ac", bVar2.f598f);
        return jSONObject;
    }
}
