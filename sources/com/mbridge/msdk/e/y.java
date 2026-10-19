package com.mbridge.msdk.e;

import android.content.Context;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import androidx.work.PeriodicWorkRequest;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes4.dex */
final class y {
    public static long a(int i, long j, long j2) {
        if (i <= 0 || j == 0 || i <= 10) {
            return j2;
        }
        if (i <= 20) {
            return ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        if (i <= 30) {
            return 120000L;
        }
        if (i <= 40) {
            return 180000L;
        }
        if (i <= 50) {
            return 240000L;
        }
        return PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    static void a(Cursor cursor) {
        boolean z = false;
        try {
            if (b((Object) cursor)) {
                if (!cursor.isClosed()) {
                    z = true;
                }
            }
        } catch (Exception unused) {
        }
        if (z) {
            try {
                cursor.close();
            } catch (Exception unused2) {
            }
        }
    }

    public static boolean a(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = null;
        try {
            connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Exception e2) {
            Log.d("TrackManager", e2.getLocalizedMessage());
            connectivityManager = null;
        }
        if (connectivityManager == null) {
            return true;
        }
        try {
            activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        } catch (Exception e3) {
            Log.d("TrackManager", e3.getLocalizedMessage());
        }
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    static boolean a(Object obj) {
        return obj == null;
    }

    static boolean a(List<?> list) {
        return list == null || list.size() == 0;
    }

    static List<i> b(Cursor cursor) {
        int i;
        int i2;
        ArrayList arrayList = new ArrayList();
        try {
            int columnIndex = cursor.getColumnIndex("name");
            int columnIndex2 = cursor.getColumnIndex("type");
            int columnIndex3 = cursor.getColumnIndex("time_stamp");
            int columnIndex4 = cursor.getColumnIndex("properties");
            int columnIndex5 = cursor.getColumnIndex("priority");
            int columnIndex6 = cursor.getColumnIndex("uuid");
            int columnIndex7 = cursor.getColumnIndex("duration");
            int columnIndex8 = cursor.getColumnIndex("state");
            int columnIndex9 = cursor.getColumnIndex("report_count");
            int columnIndex10 = cursor.getColumnIndex("ignore_max_timeout");
            int columnIndex11 = cursor.getColumnIndex("ignore_max_retry_times");
            int columnIndex12 = cursor.getColumnIndex("invalid_time");
            while (cursor.moveToNext()) {
                try {
                    e eVar = new e(cursor.getString(columnIndex));
                    eVar.a(cursor.getInt(columnIndex2));
                    i = columnIndex;
                    i2 = columnIndex2;
                    try {
                        eVar.a(cursor.getLong(columnIndex3));
                        eVar.a(new JSONObject(cursor.getString(columnIndex4)));
                        eVar.b(cursor.getInt(columnIndex5));
                        eVar.a(cursor.getString(columnIndex6));
                        eVar.b(cursor.getLong(columnIndex7));
                        i iVar = new i(eVar);
                        iVar.b(cursor.getInt(columnIndex8));
                        iVar.a(cursor.getInt(columnIndex9));
                        boolean z = true;
                        iVar.a(cursor.getInt(columnIndex10) == 0);
                        if (cursor.getInt(columnIndex11) != 0) {
                            z = false;
                        }
                        iVar.b(z);
                        iVar.a(cursor.getLong(columnIndex12));
                        arrayList.add(iVar);
                    } catch (JSONException e2) {
                        e = e2;
                        if (a.a) {
                            Log.e("TrackManager", "create: ", e);
                        }
                    }
                } catch (JSONException e3) {
                    e = e3;
                    i = columnIndex;
                    i2 = columnIndex2;
                }
                columnIndex = i;
                columnIndex2 = i2;
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    static boolean b(Object obj) {
        return obj != null;
    }

    static boolean b(List<i> list) {
        if (a((List<?>) list)) {
            return false;
        }
        for (i iVar : list) {
            if (!a(iVar)) {
                e eVarC = iVar.c();
                if (!a(eVarC) && eVarC.c() == 1) {
                    return true;
                }
            }
        }
        return false;
    }
}
