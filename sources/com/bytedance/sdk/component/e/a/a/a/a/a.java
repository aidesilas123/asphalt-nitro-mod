package com.bytedance.sdk.component.e.a.a.a.a;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.i;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdEventRepoImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends c {
    protected List<String> a;
    private final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.e.a.d.b.a f997d;

    public a(Context context, com.bytedance.sdk.component.e.a.d.b.a aVar) {
        super(context);
        this.a = new ArrayList();
        this.c = context;
        this.f997d = aVar;
        if (aVar == null) {
            this.f997d = com.bytedance.sdk.component.e.a.d.b.a.c();
        }
    }

    private static String a(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String a(String str, List<?> list, int i, boolean z) {
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int iMin = Math.min(i, 1000);
        int size = list.size();
        int i2 = size % iMin == 0 ? size / iMin : (size / iMin) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * iMin;
            String strA = a(TextUtils.join("','", list.subList(i4, Math.min(i4 + iMin, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            sb.append(str);
            sb.append(str2);
            sb.append("('");
            sb.append(strA);
            sb.append("')");
        }
        return a(sb.toString(), str + str2 + "('')");
    }

    public static String b(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0024 A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x0024: PHI (r0v3 int) = (r0v0 int), (r0v5 int) binds: [B:13:0x002f, B:6:0x0022] A[DONT_GENERATE, DONT_INLINE]
      0x0024: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:13:0x002f, B:6:0x0022] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int a() {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            android.content.Context r2 = r10.e()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
            java.lang.String r3 = r10.b()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
            java.lang.String r4 = "count(1)"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = com.bytedance.sdk.component.e.a.a.a.c.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
            if (r1 == 0) goto L22
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L28 java.lang.Exception -> L2f
        L22:
            if (r1 == 0) goto L32
        L24:
            r1.close()     // Catch: java.lang.Exception -> L32
            goto L32
        L28:
            r0 = move-exception
            if (r1 == 0) goto L2e
            r1.close()     // Catch: java.lang.Exception -> L2e
        L2e:
            throw r0
        L2f:
            if (r1 == 0) goto L32
            goto L24
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.e.a.a.a.a.a.a():int");
    }

    public List<com.bytedance.sdk.component.e.a.d.a> a(int i, String str) {
        String str2;
        Cursor cursorA;
        long jA = com.bytedance.sdk.component.e.a.b.a.a(i, e());
        com.bytedance.sdk.component.e.a.c.c.c("" + b() + " query db max :" + jA + " limit:" + i);
        if (jA <= 0) {
            jA = 1;
        } else if (jA > 100) {
            jA = 100;
        }
        String str3 = str + " DESC limit " + jA;
        ArrayList arrayList = new ArrayList();
        this.a.clear();
        if (com.bytedance.sdk.component.e.a.c.a.d() && d() == 3) {
            str2 = "id";
            cursorA = com.bytedance.sdk.component.e.a.a.a.c.a(e(), b(), new String[]{"id", "value", "encrypt", "channel"}, null, null, null, null, str3);
        } else {
            str2 = "id";
            cursorA = com.bytedance.sdk.component.e.a.a.a.c.a(e(), b(), new String[]{str2, "value", "encrypt"}, null, null, null, null, str3);
        }
        Cursor cursor = cursorA;
        if (cursor != null) {
            try {
                com.bytedance.sdk.component.e.a.f fVarP = i.g().p();
                while (cursor.moveToNext()) {
                    try {
                        String string = cursor.getString(cursor.getColumnIndex(str2));
                        String string2 = cursor.getString(cursor.getColumnIndex("value"));
                        int i2 = cursor.getInt(cursor.getColumnIndex("encrypt"));
                        int i3 = 0;
                        if (com.bytedance.sdk.component.e.a.c.a.d() && d() == 3) {
                            i3 = cursor.getInt(cursor.getColumnIndex("channel"));
                        }
                        if (i2 == 1) {
                            string2 = fVarP.a(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            com.bytedance.sdk.component.e.a.c.c.a("log_show_query : value is null");
                            this.a.add(string);
                        } else {
                            if (arrayList.size() > 100) {
                                break;
                            }
                            JSONObject jSONObject = new JSONObject(string2);
                            com.bytedance.sdk.component.e.a.d.a.a aVar = new com.bytedance.sdk.component.e.a.d.a.a(string, jSONObject);
                            aVar.a(d());
                            aVar.b(c());
                            if (com.bytedance.sdk.component.e.a.c.a.d() && d() == 3) {
                                try {
                                    aVar.a(i3);
                                } catch (Throwable th) {
                                    th = th;
                                    com.bytedance.sdk.component.e.a.c.c.d(th.getMessage());
                                }
                            }
                            com.bytedance.sdk.component.e.a.c.a.a(jSONObject, aVar);
                            arrayList.add(aVar);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            } finally {
                try {
                    cursor.close();
                    if (!this.a.isEmpty()) {
                        a(this.a);
                        this.a.clear();
                    }
                } catch (Exception unused) {
                }
            }
        }
        com.bytedance.sdk.component.e.a.c.c.c("" + b() + " query db actually size :" + arrayList.size());
        return arrayList;
    }

    public List<com.bytedance.sdk.component.e.a.d.a> a(String str) {
        com.bytedance.sdk.component.e.a.d.b.a aVar = this.f997d;
        return aVar == null ? new ArrayList() : a(aVar.b(), str);
    }

    protected void a(List<String> list) {
        com.bytedance.sdk.component.e.a.c.c.a("PADLT", b() + " adevent repo delete: " + list.size());
        com.bytedance.sdk.component.e.a.a.a.c.a(e(), "DELETE FROM " + b() + " WHERE " + a("id", list, 1000, true));
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.Y(), list.size());
        c(list);
    }

    public boolean a(int i) {
        if (this.f997d == null) {
            return false;
        }
        int iA = a();
        int iA2 = this.f997d.a();
        com.bytedance.sdk.component.e.a.c.c.c("" + b() + " check dbCount:" + iA + " MaxCacheCount:" + iA2 + " message:" + i);
        return (com.bytedance.sdk.component.e.a.c.a.c() && (i == 1 || i == 2)) ? iA >= 1 : iA >= iA2;
    }

    @Override // com.bytedance.sdk.component.e.a.a.a.a.c
    public String b() {
        com.bytedance.sdk.component.e.a.a.e eVarD = i.g().d();
        if (eVarD != null) {
            return eVarD.b();
        }
        return null;
    }

    public void b(List<com.bytedance.sdk.component.e.a.d.a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.e.a.d.a aVar : list) {
            linkedList.add(aVar.c());
            com.bytedance.sdk.component.e.a.c.a.j(aVar);
        }
        com.bytedance.sdk.component.e.a.c.c.a("PADLT", b() + " adevent repo delete: " + linkedList.size());
        com.bytedance.sdk.component.e.a.a.a.c.a(e(), "DELETE FROM " + b() + " WHERE " + a("id", linkedList, 1000, true));
        c(linkedList);
    }

    public byte c() {
        return (byte) 2;
    }

    public byte d() {
        return (byte) 0;
    }
}
