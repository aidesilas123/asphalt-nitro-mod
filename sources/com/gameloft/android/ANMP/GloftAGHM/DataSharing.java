package com.gameloft.android.ANMP.GloftAGHM;

import android.content.ContentValues;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DataSharing {
    private static ArrayList<String> a = new ArrayList<>();
    private static HashMap<String, String> b = new HashMap<>();
    private static HashMap<String, String> c = new HashMap<>();

    class a extends Thread {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (DataSharing.a) {
                DataSharing.AddOrUpdate(Uri.parse("content://" + SUtils.getApplicationContext().getPackageName() + ".KeyProvider/key/"), this.a, this.b);
            }
        }
    }

    class b extends Thread {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        b(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (DataSharing.a) {
                int size = DataSharing.a.size();
                for (int i = 0; i < size; i++) {
                    DataSharing.AddOrUpdate(Uri.parse("content://" + ((String) DataSharing.a.get(i)) + "/key/"), this.a, this.b);
                }
            }
        }
    }

    class c extends Thread {
        final /* synthetic */ String a;

        c(String str) {
            this.a = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (DataSharing.a) {
                int size = DataSharing.a.size();
                for (int i = 0; i < size; i++) {
                    Uri uri = Uri.parse("content://" + ((String) DataSharing.a.get(i)) + "/key/");
                    try {
                        SUtils.getApplicationContext().getContentResolver().delete(uri, "key='" + this.a + "'", null);
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public static void AddOrUpdate(Uri uri, String str, String str2) {
        LazyInit();
        ContentValues contentValues = new ContentValues();
        contentValues.put("value", str2);
        try {
            if (SUtils.getApplicationContext().getContentResolver().update(uri, contentValues, "key='" + str + "'", null) < 1) {
                contentValues.put("key", str);
                contentValues.put("value", str2);
                SUtils.getApplicationContext().getContentResolver().insert(uri, contentValues);
            }
        } catch (Exception unused) {
        }
    }

    public static void LazyInit() {
        if (a.isEmpty()) {
            SUtils.getApplicationContext().getPackageManager().checkPermission("glshare.permission.ACCESS_SHARED_DATA", "com.gameloft.android.ANMP.GloftAGHM");
            List<ProviderInfo> listQueryContentProviders = SUtils.getApplicationContext().getPackageManager().queryContentProviders((String) null, 0, 0);
            for (int i = 0; i < listQueryContentProviders.size(); i++) {
                String str = listQueryContentProviders.get(i).authority;
                if (str.startsWith("com.gameloft")) {
                    a.add(str);
                }
            }
            for (int i2 = 0; i2 < a.size(); i2++) {
                Uri uri = Uri.parse("content://" + a.get(i2) + "/key/");
                if (a.get(i2).contains(SUtils.getApplicationContext().getPackageName())) {
                    fillDBArray(uri, true);
                } else {
                    fillDBArray(uri, false);
                }
            }
        }
    }

    public static void deleteSharedValue(String str) {
        LazyInit();
        if (b.containsKey(str) || c.containsKey(str)) {
            c.remove(str);
            b.remove(str);
            new c(str).start();
        }
    }

    private static void fillDBArray(Uri uri, boolean z) {
        try {
            Cursor cursorQuery = SUtils.getApplicationContext().getContentResolver().query(uri, new String[]{"key", "value"}, null, null, null);
            if (cursorQuery != null) {
                cursorQuery.moveToFirst();
                for (int i = 0; i < cursorQuery.getCount(); i++) {
                    if (z) {
                        c.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    } else {
                        b.put(cursorQuery.getString(0), cursorQuery.getString(1));
                    }
                    if (!cursorQuery.isLast()) {
                        cursorQuery.moveToNext();
                    }
                }
                cursorQuery.close();
            }
        } catch (Exception unused) {
        }
    }

    public static String getSharedValue(String str) {
        String str2;
        LazyInit();
        str2 = "";
        if (c.containsKey(str)) {
            String str3 = c.get(str);
            return TextUtils.isEmpty(str3) ? "" : str3;
        }
        if (b.containsKey(str)) {
            String str4 = b.get(str);
            str2 = TextUtils.isEmpty(str4) ? "" : str4;
            c.put(str, str2);
            new a(str, str2).start();
        }
        return str2;
    }

    public static boolean isSharedValue(String str) {
        LazyInit();
        String sharedValue = getSharedValue(str);
        return (sharedValue == null || sharedValue.equals("")) ? false : true;
    }

    public static void setSharedValue(String str, String str2) {
        LazyInit();
        boolean z = b.containsKey(str) && b.get(str).equals(str2);
        if ((c.containsKey(str) && c.get(str).equals(str2)) && z) {
            return;
        }
        c.put(str, str2);
        b.put(str, str2);
        new b(str, str2).start();
    }
}
