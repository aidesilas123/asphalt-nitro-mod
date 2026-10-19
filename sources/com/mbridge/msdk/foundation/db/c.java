package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: compiled from: CacheCampaignDao.java */
/* JADX INFO: loaded from: classes4.dex */
public class c extends a {
    private static volatile c a = null;
    private static final String b = "com.mbridge.msdk.foundation.db.c";

    private c(g gVar) {
        super(gVar);
    }

    public static c a(g gVar) {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    a = new c(gVar);
                }
            }
        }
        return a;
    }

    private synchronized boolean c(String str, String str2, String str3) {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT rid FROM CacheCampaign WHERE rid='" + str + "' AND lrid='" + str2 + "' AND unitid = '" + str3 + "'", null);
        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
            try {
                cursorRawQuery.close();
            } catch (Exception unused) {
            }
            return true;
        }
        if (cursorRawQuery != null) {
            try {
                cursorRawQuery.close();
            } catch (Exception unused2) {
            }
        }
        return false;
    }

    public final long a(String str, String str2, String str3, int i) {
        if (!c(str, str2, str3)) {
            return -1L;
        }
        new ContentValues().put("state", Integer.valueOf(i));
        return getWritableDatabase().update("CacheCampaign", r0, "rid='" + str + "' AND lrid='" + str2 + "' AND unitid = '" + str3 + "' AND state = 0", null);
    }

    public final long a(List<CampaignEx> list, String str) {
        CampaignEx campaignEx;
        if (list != null) {
            try {
                if (list.size() == 0 || TextUtils.isEmpty(str) || (campaignEx = list.get(0)) == null) {
                    return 0L;
                }
                if (getWritableDatabase() == null) {
                    return -1L;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("rid", campaignEx.getRequestId());
                contentValues.put("lrid", campaignEx.getLocalRequestId());
                contentValues.put("unitid", str);
                JSONArray jSONArray = new JSONArray();
                Iterator<CampaignEx> it = list.iterator();
                while (it.hasNext()) {
                    jSONArray.put(CampaignEx.campaignToJsonObject(it.next()));
                }
                contentValues.put("campaigns", jSONArray.toString());
                contentValues.put("ts", Long.valueOf(campaignEx.getTimestamp()));
                long plctb = campaignEx.getPlctb();
                if (plctb == 0) {
                    com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
                    if (eVarB == null) {
                        eVarB = com.mbridge.msdk.c.f.a().b();
                    }
                    plctb = eVarB.Q();
                }
                try {
                    if (ac.a().a("c_e_t", false)) {
                        plctb *= 24;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                contentValues.put("interval_ts", Long.valueOf(plctb * 1000));
                contentValues.put("ecppv", campaignEx.getEcppv());
                contentValues.put("show_count", Integer.valueOf(campaignEx.getShowCount()));
                contentValues.put("state", (Integer) 0);
                if (!c(campaignEx.getRequestId(), campaignEx.getLocalRequestId(), str)) {
                    return getWritableDatabase().insert("CacheCampaign", null, contentValues);
                }
                return getWritableDatabase().update("CacheCampaign", contentValues, "rid='" + campaignEx.getRequestId() + "' AND lrid='" + campaignEx.getLocalRequestId() + "' AND unitid = '" + str + "' AND state = 1", null);
            } catch (Exception e3) {
                e3.printStackTrace();
                return -1L;
            }
        }
        return 0L;
    }

    public final synchronized void a(String str, int i) {
        if (i <= 0) {
            i = 1;
        }
        try {
            String str2 = "unitid = " + str + " AND ( (ts + interval_ts) < " + System.currentTimeMillis() + " OR show_count >= " + i + " )";
            SQLiteDatabase writableDatabase = getWritableDatabase();
            if (writableDatabase == null) {
                return;
            }
            try {
                writableDatabase.execSQL("delete from CacheCampaign where " + str2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Exception e3) {
            aa.d("CacheCampaignDao", e3.getLocalizedMessage());
        }
    }

    public final synchronized void a(String str, String str2, String str3) {
        try {
            if (c(str2, str3, str)) {
                String str4 = "unitid = '" + str + "' AND rid = '" + str2 + "' AND lrid = '" + str3 + "'";
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (writableDatabase == null) {
                    return;
                }
                try {
                    writableDatabase.execSQL("delete from CacheCampaign where " + str4);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Exception e3) {
            aa.d("CampaignDao", e3.getLocalizedMessage());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0106 A[EXC_TOP_SPLITTER, PHI: r9
      0x0106: PHI (r9v5 android.database.Cursor) = (r9v4 android.database.Cursor), (r9v6 android.database.Cursor) binds: [B:33:0x010f, B:27:0x0104] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<com.mbridge.msdk.foundation.b.b> b(java.lang.String r8, int r9) {
        /*
            Method dump skipped, instruction units count: 282
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.c.b(java.lang.String, int):java.util.List");
    }

    public final void b(String str, String str2, String str3) {
        if (c(str, str2, str3)) {
            getWritableDatabase().execSQL("UPDATE CacheCampaign SET show_count = show_count + 1 WHERE " + ("rid='" + str + "' AND lrid='" + str2 + "' AND unitid = '" + str3 + "' AND state = 1"));
        }
    }
}
