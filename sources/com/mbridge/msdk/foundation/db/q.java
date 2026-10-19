package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.text.TextUtils;
import com.json.b4;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ak;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.net.URLEncoder;

/* JADX INFO: compiled from: VideoReportDataDao.java */
/* JADX INFO: loaded from: classes4.dex */
public class q extends a<com.mbridge.msdk.foundation.entity.n> {
    private static final String a = "com.mbridge.msdk.foundation.db.q";
    private static q b;

    private q(g gVar) {
        super(gVar);
    }

    public static synchronized q a(g gVar) {
        if (b == null) {
            b = new q(gVar);
        }
        return b;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x001b A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x001b: PHI (r0v4 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v5 android.database.Cursor) binds: [B:16:0x0025, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE]
      0x001b: PHI (r1v3 int) = (r1v0 int), (r1v5 int) binds: [B:16:0x0025, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized int a() {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            r1 = 0
            java.lang.String r2 = "select count(*) from reward_report"
            android.database.sqlite.SQLiteDatabase r3 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            android.database.Cursor r0 = r3.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            if (r0 == 0) goto L19
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            if (r2 == 0) goto L19
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
        L19:
            if (r0 == 0) goto L28
        L1b:
            r0.close()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L30
            goto L28
        L1f:
            r1 = move-exception
            goto L2a
        L21:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L28
            goto L1b
        L28:
            monitor-exit(r4)
            return r1
        L2a:
            if (r0 == 0) goto L2f
            r0.close()     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L30
        L2f:
            throw r1     // Catch: java.lang.Throwable -> L30
        L30:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.q.a():int");
    }

    public final synchronized long a(com.mbridge.msdk.foundation.entity.n nVar) {
        if (nVar != null) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("key", nVar.t());
                contentValues.put("networkType", Integer.valueOf(nVar.A()));
                contentValues.put("network_str", nVar.B());
                contentValues.put("isCompleteView", Integer.valueOf(nVar.C()));
                contentValues.put("watchedMillis", Integer.valueOf(nVar.u()));
                contentValues.put(MRAIDPresenter.VIDEO_LENGTH, Integer.valueOf(nVar.v()));
                if (!TextUtils.isEmpty(nVar.w())) {
                    contentValues.put("offerUrl", nVar.w());
                }
                if (!TextUtils.isEmpty(nVar.x())) {
                    contentValues.put("reason", URLEncoder.encode(nVar.x(), b4.L));
                }
                contentValues.put("result", Integer.valueOf(nVar.D()));
                contentValues.put("duration", nVar.y());
                contentValues.put("videoSize", Long.valueOf(nVar.z()));
                contentValues.put("type", nVar.h());
                String strG = nVar.g();
                if (!TextUtils.isEmpty(strG)) {
                    contentValues.put(CampaignEx.ENDCARD_URL, strG);
                }
                String strF = nVar.f();
                if (!TextUtils.isEmpty(strF)) {
                    contentValues.put("video_url", strF);
                }
                String strP = nVar.p();
                if (!TextUtils.isEmpty(strP)) {
                    contentValues.put("rid", strP);
                }
                String strQ = nVar.q();
                if (!TextUtils.isEmpty(strQ)) {
                    contentValues.put("rid_n", strQ);
                }
                String strJ = nVar.j();
                if (!TextUtils.isEmpty(strJ)) {
                    contentValues.put("template_url", strJ);
                }
                String strE = nVar.e();
                if (!TextUtils.isEmpty(strE)) {
                    contentValues.put(CampaignEx.JSON_KEY_IMAGE_URL, strE);
                }
                String strI = nVar.i();
                if (!TextUtils.isEmpty(strI)) {
                    contentValues.put("ad_type", URLEncoder.encode(strI, b4.L));
                }
                contentValues.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, nVar.r());
                contentValues.put("campaignId", nVar.s());
                if ("2000039".equals(nVar.t())) {
                    String strF2 = com.mbridge.msdk.foundation.entity.n.f(nVar);
                    if (ak.b(strF2)) {
                        contentValues.put("h5_click_data", strF2);
                    }
                }
                String strA = nVar.a();
                if (!TextUtils.isEmpty(strA)) {
                    contentValues.put("resource_type", URLEncoder.encode(strA, b4.L));
                }
                String strB = nVar.b();
                if (!TextUtils.isEmpty(strB)) {
                    contentValues.put("device_id", URLEncoder.encode(strB, b4.L));
                }
                String strC = nVar.c();
                if (!TextUtils.isEmpty(strC)) {
                    contentValues.put("creative", URLEncoder.encode(strC, b4.L));
                }
                contentValues.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, Integer.valueOf(nVar.l()));
                return getWritableDatabase().insert("reward_report", null, contentValues);
            } catch (Exception e2) {
                e2.printStackTrace();
                aa.d(a, e2.getMessage());
                return -1L;
            }
        }
        return -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0344 A[Catch: Exception -> 0x0350, all -> 0x0353, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0350, blocks: (B:100:0x0344, B:92:0x032d), top: B:117:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x034c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02d5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.util.List<com.mbridge.msdk.foundation.entity.n> a(java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 854
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.q.a(java.lang.String):java.util.List");
    }
}
