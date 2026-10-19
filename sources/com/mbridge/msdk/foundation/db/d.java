package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ag;

/* JADX INFO: compiled from: CampaignClickDao.java */
/* JADX INFO: loaded from: classes4.dex */
public class d extends a<JumpLoaderResult> {
    public static final String a = "d";
    private static d b;

    private d(g gVar) {
        super(gVar);
    }

    public static synchronized d a(g gVar) {
        if (b == null) {
            b = new d(gVar);
        }
        return b;
    }

    private synchronized boolean c(String str, String str2) {
        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id='" + str + "' AND unitid= '" + str2 + "'", null);
        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
            cursorRawQuery.close();
            return true;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        return false;
    }

    public final synchronized long a(CampaignEx campaignEx, String str) {
        if (campaignEx == null) {
            return 0L;
        }
        try {
            String strA = ag.a(campaignEx.getJumpResult());
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", campaignEx.getId());
            contentValues.put("unitid", str);
            contentValues.put("result", strA);
            contentValues.put("cti", Integer.valueOf(campaignEx.getClickInterval() * 1000));
            contentValues.put("package_name", campaignEx.getPackageName());
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            contentValues.put("ts", Long.valueOf(System.currentTimeMillis()));
            if (eVarB != null && eVarB.ab() > 0) {
                contentValues.put("cpei", Integer.valueOf(eVarB.ab() * 1000));
            }
            if (eVarB != null && eVarB.ac() > 0) {
                contentValues.put("cpoci", Integer.valueOf(eVarB.ac() * 1000));
            }
            if (!c(campaignEx.getId(), str)) {
                return getWritableDatabase().insert("campaignclick", null, contentValues);
            }
            String str2 = "id = " + campaignEx.getId() + " AND unitid = " + str;
            if (getWritableDatabase() == null) {
                return -1L;
            }
            return getWritableDatabase().update("campaignclick", contentValues, str2, null);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized void a() {
        try {
            getWritableDatabase().delete("campaignclick", " ( " + System.currentTimeMillis() + " - ts) > cti", null);
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public final synchronized boolean a(String str, String str2) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT id FROM campaignclick WHERE id='" + str + "' AND unitid='" + str2 + "' AND cti + ts > " + System.currentTimeMillis(), null);
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return true;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.database.Cursor] */
    public final synchronized JumpLoaderResult b(String str, String str2) {
        Cursor cursorQuery;
        ?? r0 = 0;
        try {
        } catch (Throwable th) {
            th = th;
            r0 = str;
        }
        try {
            cursorQuery = getReadableDatabase().query("campaignclick", null, "id=? AND unitid=?", new String[]{str, str2}, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0 && cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndex("result"));
                        if (!TextUtils.isEmpty(string)) {
                            JumpLoaderResult jumpLoaderResult = (JumpLoaderResult) ag.a(string);
                            cursorQuery.close();
                            return jumpLoaderResult;
                        }
                    }
                } catch (Exception e2) {
                    e = e2;
                    e.printStackTrace();
                    if (cursorQuery != null) {
                    }
                    return null;
                }
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r0 != 0) {
                r0.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }
}
