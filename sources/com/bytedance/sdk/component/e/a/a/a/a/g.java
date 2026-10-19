package com.bytedance.sdk.component.e.a.a.a.a;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.i;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: StatsLogEventRepoImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends c {
    protected List<String> a;
    private com.bytedance.sdk.component.e.a.d.b.a c;

    public g(Context context, com.bytedance.sdk.component.e.a.d.b.a aVar) {
        super(context);
        this.a = new ArrayList();
        this.c = aVar;
        if (aVar == null) {
            this.c = com.bytedance.sdk.component.e.a.d.b.a.c();
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

    public static String c(String str) {
        return "CREATE TABLE IF NOT EXISTS " + str + " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)";
    }

    public byte a() {
        return (byte) 1;
    }

    public List<com.bytedance.sdk.component.e.a.d.a> a(int i, String str) {
        long jA = com.bytedance.sdk.component.e.a.b.a.a(i, e());
        if (jA <= 0) {
            jA = 1;
        } else if (jA > 100) {
            jA = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.a.clear();
        Cursor cursorA = com.bytedance.sdk.component.e.a.a.a.c.a(e(), b(), new String[]{"id", "value", "encrypt"}, null, null, null, null, str + " DESC limit " + jA);
        if (cursorA != null) {
            while (cursorA.moveToNext()) {
                try {
                    try {
                        String string = cursorA.getString(cursorA.getColumnIndex("id"));
                        String string2 = cursorA.getString(cursorA.getColumnIndex("value"));
                        if (cursorA.getInt(cursorA.getColumnIndex("encrypt")) == 1) {
                            string2 = i.g().p().a(string2);
                        }
                        if (TextUtils.isEmpty(string2)) {
                            this.a.add(string);
                        } else {
                            if (arrayList.size() > 100) {
                                break;
                            }
                            com.bytedance.sdk.component.e.a.d.a.a aVar = new com.bytedance.sdk.component.e.a.d.a.a(string, new JSONObject(string2));
                            aVar.b(c());
                            aVar.a(a());
                            arrayList.add(aVar);
                        }
                    } catch (Throwable unused) {
                    }
                } finally {
                    try {
                        cursorA.close();
                        if (!this.a.isEmpty()) {
                            a(this.a);
                            this.a.clear();
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        }
        return arrayList;
    }

    protected void a(List<String> list) {
        com.bytedance.sdk.component.e.a.c.c.a("PADLT", b() + " stats repo delete: " + list.size());
        com.bytedance.sdk.component.e.a.a.a.c.a(e(), "DELETE FROM " + b() + " WHERE " + a("id", list, 1000, true));
        com.bytedance.sdk.component.e.a.c.b.a(com.bytedance.sdk.component.e.a.b.d.f1019d.Y(), list.size());
        c(list);
    }

    public boolean a(int i) {
        return this.c != null && d() >= this.c.a();
    }

    @Override // com.bytedance.sdk.component.e.a.a.a.a.c
    public String b() {
        return i.g().d().d();
    }

    public List<com.bytedance.sdk.component.e.a.d.a> b(String str) {
        com.bytedance.sdk.component.e.a.d.b.a aVar = this.c;
        return aVar == null ? new ArrayList() : a(aVar.b(), str);
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
        com.bytedance.sdk.component.e.a.c.c.a("PADLT", b() + " stats repo delete: " + linkedList.size());
        com.bytedance.sdk.component.e.a.a.a.c.a(e(), "DELETE FROM " + b() + " WHERE " + a("id", linkedList, 1000, true));
        c(linkedList);
    }

    public byte c() {
        return (byte) 2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024 A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x0024: PHI (r0v2 int) = (r0v0 int), (r0v4 int) binds: [B:9:0x0028, B:6:0x0022] A[DONT_GENERATE, DONT_INLINE]
      0x0024: PHI (r1v2 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v3 android.database.Cursor) binds: [B:9:0x0028, B:6:0x0022] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int d() {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            android.content.Context r2 = r10.e()     // Catch: java.lang.Throwable -> L28
            java.lang.String r3 = r10.b()     // Catch: java.lang.Throwable -> L28
            java.lang.String r4 = "count(1)"
            java.lang.String[] r4 = new java.lang.String[]{r4}     // Catch: java.lang.Throwable -> L28
            r5 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            android.database.Cursor r1 = com.bytedance.sdk.component.e.a.a.a.c.a(r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L28
            if (r1 == 0) goto L22
            r1.moveToFirst()     // Catch: java.lang.Throwable -> L28
            int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> L28
        L22:
            if (r1 == 0) goto L2b
        L24:
            r1.close()     // Catch: java.lang.Exception -> L2b
            goto L2b
        L28:
            if (r1 == 0) goto L2b
            goto L24
        L2b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.e.a.a.a.a.g.d():int");
    }
}
