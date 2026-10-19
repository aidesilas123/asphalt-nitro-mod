package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.apm.insight.entity.Header;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class s {
    private static s a;
    private File b;
    private File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private File f323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f325f = null;

    private static class a {
        private long a;
        private long b;
        private File c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private JSONObject f326d;

        private a(File file) {
            long j;
            this.f326d = null;
            this.c = file;
            String[] strArrSplit = file.getName().split("-|\\.");
            if (strArrSplit.length >= 2) {
                this.a = Long.parseLong(strArrSplit[0]);
                j = Long.parseLong(strArrSplit[1]);
            } else {
                String name = file.getName();
                if (TextUtils.isEmpty(name) || name.length() < 13) {
                    return;
                }
                String strSubstring = name.substring(0, 13);
                if (!TextUtils.isDigitsOnly(strSubstring)) {
                    return;
                }
                j = Long.parseLong(strSubstring);
                this.a = j;
            }
            this.b = j;
        }

        private String a() {
            return this.a + "-" + this.b + ".ctx";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.b = j;
            this.c.renameTo(new File(this.c.getParent(), a()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject b() {
            if (this.f326d == null) {
                try {
                    this.f326d = new JSONObject(com.apm.insight.l.i.c(this.c.getAbsolutePath()));
                } catch (Throwable unused) {
                }
                if (this.f326d == null) {
                    this.f326d = new JSONObject();
                }
            }
            return this.f326d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(long j) {
            long j2 = this.a;
            if (j2 > j && j2 - j > 604800000) {
                return true;
            }
            long j3 = this.b;
            if (j3 >= j || j - j3 <= 604800000) {
                return this.c.lastModified() < j && j - this.c.lastModified() > 604800000;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.c.delete();
        }
    }

    private s(Context context) {
        File fileC = com.apm.insight.l.o.c(context);
        if (!fileC.exists() || (!fileC.isDirectory() && fileC.delete())) {
            fileC.mkdirs();
            com.apm.insight.runtime.a.b.a();
        }
        this.b = fileC;
        this.c = new File(fileC, "did");
        this.f323d = new File(fileC, "device_uuid");
        this.f324e = context;
    }

    public static int a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (Header.c(jSONObject)) {
            return 2;
        }
        if (Header.c(jSONObject2)) {
            return 0;
        }
        return (String.valueOf(jSONObject2.opt("update_version_code")).equals(String.valueOf(jSONObject.opt("update_version_code"))) && Header.d(jSONObject)) ? 1 : 2;
    }

    public static s a() {
        if (a == null) {
            a = new s(com.apm.insight.i.g());
        }
        return a;
    }

    private void a(long j, long j2, JSONObject jSONObject, JSONArray jSONArray) {
        File file = new File(this.b, "" + j + "-" + j2 + ".ctx");
        File file2 = new File(this.b, "" + j + "-" + j2 + ".allData");
        try {
            com.apm.insight.l.i.a(file, jSONObject, false);
            com.apm.insight.l.i.a(file2, jSONArray, false);
            this.f325f = new a(file);
        } catch (IOException e2) {
            com.apm.insight.c.a().a("NPTH_CATCH", e2);
        }
    }

    private a c() {
        if (this.f325f == null) {
            d(".ctx");
        }
        return this.f325f;
    }

    private void c(long j) {
        try {
            ArrayList<a> arrayListD = d("");
            if (arrayListD.size() <= 6) {
                return;
            }
            for (a aVar : arrayListD) {
                if (aVar.b(j)) {
                    aVar.c();
                }
            }
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
    }

    private File d(long j) {
        for (a aVar : d(".ctx")) {
            if (j >= aVar.a && j <= aVar.b) {
                return aVar.c;
            }
        }
        return null;
    }

    private ArrayList<a> d(final String str) {
        File[] fileArrListFiles = this.b.listFiles(new FilenameFilter() { // from class: com.apm.insight.runtime.s.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.endsWith(str) && Pattern.compile("^\\d{1,13}-\\d{1,13}.*").matcher(str2).matches();
            }
        });
        ArrayList<a> arrayList = new ArrayList<>();
        if (fileArrListFiles == null) {
            return arrayList;
        }
        com.apm.insight.l.q.a((Object) ("foundRuntimeContextFiles " + fileArrListFiles.length));
        a aVar = null;
        for (File file : fileArrListFiles) {
            try {
                a aVar2 = new a(file);
                arrayList.add(aVar2);
                if (this.f325f == null && ".ctx".equals(str) && (aVar == null || aVar2.b >= aVar.b)) {
                    aVar = aVar2;
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
        if (this.f325f == null && aVar != null) {
            this.f325f = aVar;
        }
        return arrayList;
    }

    private File e(long j) {
        for (a aVar : d(".allData")) {
            if (j >= aVar.a && j <= aVar.b) {
                return aVar.c;
            }
        }
        return null;
    }

    private File f(long j) {
        a aVar = null;
        for (a aVar2 : d(".ctx")) {
            if (aVar == null || Math.abs(aVar.b - j) > Math.abs(aVar2.b - j)) {
                aVar = aVar2;
            }
        }
        if (aVar == null) {
            return null;
        }
        return aVar.c;
    }

    private File g(long j) {
        a aVar = null;
        for (a aVar2 : d(".allData")) {
            if (aVar == null || Math.abs(aVar.b - j) > Math.abs(aVar2.b - j)) {
                aVar = aVar2;
            }
        }
        if (aVar == null) {
            return null;
        }
        return aVar.c;
    }

    public String a(String str) {
        try {
            return com.apm.insight.l.i.c(this.f323d.getAbsolutePath());
        } catch (Throwable unused) {
            return str;
        }
    }

    @Nullable
    public JSONObject a(long j) {
        boolean z;
        String strC;
        File fileD = d(j);
        if (fileD == null) {
            fileD = f(j);
            z = true;
        } else {
            z = false;
        }
        JSONObject jSONObject = null;
        if (fileD != null) {
            try {
                strC = com.apm.insight.l.i.c(fileD.getAbsolutePath());
                try {
                    jSONObject = new JSONObject(strC);
                } catch (Throwable th) {
                    th = th;
                    com.apm.insight.c.a().a("NPTH_CATCH", new IOException("content :" + strC, th));
                }
            } catch (Throwable th2) {
                th = th2;
                strC = null;
            }
        }
        if (jSONObject != null && z) {
            try {
                jSONObject.put("unauthentic_version", 1);
            } catch (JSONException e2) {
                com.apm.insight.c.a().a("NPTH_CATCH", e2);
            }
        }
        return jSONObject;
    }

    public void a(Map<String, Object> map, JSONArray jSONArray) {
        JSONObject jSONObjectA = Header.a(this.f324e).a(map);
        if (Header.c(jSONObjectA)) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        a aVarC = c();
        if (aVarC == null) {
            a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
            return;
        }
        int iA = a(aVarC.b(), jSONObjectA);
        if (iA == 1) {
            a(aVarC.a, jCurrentTimeMillis, jSONObjectA, jSONArray);
            com.apm.insight.l.i.a(aVarC.c);
        } else if (iA == 2) {
            a(jCurrentTimeMillis, jCurrentTimeMillis, jSONObjectA, jSONArray);
        } else if (iA == 3) {
            aVarC.a(jCurrentTimeMillis);
        }
        c(jCurrentTimeMillis);
    }

    protected String b() {
        try {
            return com.apm.insight.l.i.c(this.c.getAbsolutePath());
        } catch (Throwable unused) {
            return "0";
        }
    }

    @Nullable
    public JSONArray b(long j) {
        String strC;
        File fileE = e(j);
        if (fileE == null) {
            fileE = g(j);
        }
        if (fileE == null) {
            return null;
        }
        try {
            strC = com.apm.insight.l.i.c(fileE.getAbsolutePath());
            try {
                return new JSONArray(strC);
            } catch (Throwable th) {
                th = th;
                com.apm.insight.c.a().a("NPTH_CATCH", new IOException("content :" + strC, th));
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            strC = null;
        }
    }

    protected void b(String str) {
        try {
            com.apm.insight.l.i.a(this.c, str, false);
        } catch (Throwable unused) {
        }
    }

    public void c(String str) {
        try {
            com.apm.insight.l.i.a(this.f323d, str, false);
        } catch (Throwable unused) {
        }
    }
}
