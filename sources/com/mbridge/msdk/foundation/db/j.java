package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: compiled from: FqInfoDao.java */
/* JADX INFO: loaded from: classes4.dex */
public final class j extends a<com.mbridge.msdk.foundation.entity.f> {
    private static j a;

    private j(g gVar) {
        super(gVar);
    }

    public static synchronized j a(g gVar) {
        if (a == null) {
            a = new j(gVar);
        }
        return a;
    }

    private synchronized boolean a(String str, String str2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("select id from fq_info where unitId='" + str + "' and id='" + str2 + "'", null);
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return true;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public final synchronized void a(com.mbridge.msdk.foundation.entity.f fVar) {
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            if (fVar != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", fVar.a());
                contentValues.put("time", Long.valueOf(fVar.d()));
                contentValues.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, fVar.b());
                contentValues.put("type", Integer.valueOf(fVar.c()));
                if (a(fVar.b(), fVar.a())) {
                    getWritableDatabase().update("fq_info", contentValues, "id = " + fVar.a() + " AND " + CampaignEx.JSON_KEY_CAMPAIGN_UNITID + " = " + fVar.b(), null);
                } else {
                    getWritableDatabase().insert("fq_info", null, contentValues);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final synchronized void a(String str) {
        try {
            String str2 = "time<" + (System.currentTimeMillis() - 86400000) + " and " + CampaignEx.JSON_KEY_CAMPAIGN_UNITID + "=?";
            String[] strArr = {str};
            if (getWritableDatabase() != null) {
                getWritableDatabase().delete("fq_info", str2, strArr);
            }
        } catch (Exception unused) {
        }
    }
}
