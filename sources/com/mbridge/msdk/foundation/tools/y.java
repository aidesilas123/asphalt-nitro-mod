package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SameFileTool.java */
/* JADX INFO: loaded from: classes4.dex */
public final class y extends h {
    /* JADX WARN: Removed duplicated region for block: B:26:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0050 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.io.File r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            r2.<init>(r4)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L39 java.io.IOException -> L3b
            java.lang.StringBuffer r4 = new java.lang.StringBuffer     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L4c
            r4.<init>()     // Catch: java.io.IOException -> L36 java.lang.Throwable -> L4c
        L13:
            java.lang.String r2 = r1.readLine()     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            if (r2 == 0) goto L2e
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            r3.<init>()     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            r3.append(r2)     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            java.lang.String r2 = "\n"
            r3.append(r2)     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            java.lang.String r2 = r3.toString()     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            r4.append(r2)     // Catch: java.io.IOException -> L34 java.lang.Throwable -> L4c
            goto L13
        L2e:
            r1.close()     // Catch: java.io.IOException -> L32
            goto L44
        L32:
            goto L44
        L34:
            r2 = move-exception
            goto L3e
        L36:
            r2 = move-exception
            r4 = r0
            goto L3e
        L39:
            r4 = move-exception
            goto L4e
        L3b:
            r2 = move-exception
            r4 = r0
            r1 = r4
        L3e:
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L44
            goto L2e
        L44:
            if (r4 == 0) goto L4b
            java.lang.String r4 = r4.toString()
            return r4
        L4b:
            return r0
        L4c:
            r4 = move-exception
            r0 = r1
        L4e:
            if (r0 == 0) goto L53
            r0.close()     // Catch: java.io.IOException -> L53
        L53:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.y.a(java.io.File):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0104, code lost:
    
        if (r10 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0106, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x010a, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x010b, code lost:
    
        r10.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0119, code lost:
    
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x011c, code lost:
    
        if (r10 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x011e, code lost:
    
        r10.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0122, code lost:
    
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0123, code lost:
    
        r10.printStackTrace();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r10, java.lang.String r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.y.a(java.lang.String, java.lang.String):java.lang.String");
    }

    public static void a() {
        new Thread(new Runnable() { // from class: com.mbridge.msdk.foundation.tools.y.1
            /* JADX WARN: Removed duplicated region for block: B:23:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    r5 = this;
                    com.mbridge.msdk.foundation.controller.b r0 = com.mbridge.msdk.foundation.controller.b.d()     // Catch: java.lang.Exception -> L42
                    android.content.Context r0 = r0.g()     // Catch: java.lang.Exception -> L42
                    if (r0 == 0) goto L4a
                    com.mbridge.msdk.foundation.same.b.c r0 = com.mbridge.msdk.foundation.same.b.c.MBRIDGE_VC     // Catch: java.lang.Exception -> L42
                    java.lang.String r0 = com.mbridge.msdk.foundation.same.b.e.b(r0)     // Catch: java.lang.Exception -> L42
                    java.io.File r1 = new java.io.File     // Catch: java.lang.Exception -> L3d
                    r1.<init>(r0)     // Catch: java.lang.Exception -> L3d
                    boolean r2 = r1.exists()     // Catch: java.lang.Exception -> L3d
                    if (r2 == 0) goto L4a
                    boolean r1 = r1.isDirectory()     // Catch: java.lang.Exception -> L3d
                    if (r1 == 0) goto L4a
                    java.io.File[] r0 = com.mbridge.msdk.foundation.tools.y.b(r0)     // Catch: java.lang.Exception -> L3d
                    int r1 = r0.length     // Catch: java.lang.Exception -> L3d
                    r2 = 0
                L27:
                    if (r2 >= r1) goto L4a
                    r3 = r0[r2]     // Catch: java.lang.Exception -> L3d
                    boolean r4 = r3.exists()     // Catch: java.lang.Exception -> L3d
                    if (r4 == 0) goto L3a
                    boolean r4 = r3.isFile()     // Catch: java.lang.Exception -> L3d
                    if (r4 == 0) goto L3a
                    r3.delete()     // Catch: java.lang.Exception -> L3d
                L3a:
                    int r2 = r2 + 1
                    goto L27
                L3d:
                    r0 = move-exception
                    r0.printStackTrace()     // Catch: java.lang.Exception -> L42
                    goto L4a
                L42:
                    r0 = move-exception
                    boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG
                    if (r1 == 0) goto L4a
                    r0.printStackTrace()
                L4a:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.y.AnonymousClass1.run():void");
            }
        }).start();
    }

    public static void a(long j) {
        try {
            for (File file : e(new File(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_RES_MANAGER_DIR)))) {
                if (file.lastModified() < j && file.exists() && file.isFile()) {
                    file.delete();
                }
            }
        } catch (Throwable th) {
            aa.b("SameFileTool", th.getMessage(), th);
        }
    }

    static /* synthetic */ void a(String str, int i) {
        try {
            if (d(new File(str)) > i * 1048576) {
                e(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        } catch (Throwable unused) {
            aa.d("SameFileTool", "clean memory failed");
        }
    }

    public static boolean a(String str) {
        if (com.mbridge.msdk.foundation.same.c.f.a(str)) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean a(byte[] bArr, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                if (file.getParentFile() != null && !file.exists()) {
                    file.getParentFile().mkdirs();
                }
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(bArr);
            try {
                fileOutputStream.close();
                return true;
            } catch (IOException e3) {
                e3.printStackTrace();
                return true;
            }
        } catch (Exception e4) {
            e = e4;
            fileOutputStream2 = fileOutputStream;
            e.printStackTrace();
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = fileOutputStream;
            if (fileOutputStream2 != null) {
                try {
                    fileOutputStream2.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static String b(File file) {
        try {
            if (file.isFile()) {
                file.delete();
                return "";
            }
            if (!file.isDirectory()) {
                return "";
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file2 : fileArrListFiles) {
                    b(file2);
                }
                file.delete();
                return "";
            }
            file.delete();
            return "";
        } catch (Exception e2) {
            return e2.getMessage();
        }
    }

    public static List<String> b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
        } catch (Exception e2) {
            aa.d("SameFileTool", e2.getMessage());
        }
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            File file = new File(str + File.separator + "template_config.json");
            if (file.isFile() && file.exists()) {
                String strA = a(file);
                if (TextUtils.isEmpty(strA)) {
                    return arrayList;
                }
                try {
                    JSONArray jSONArray = new JSONArray(strA);
                    for (int i = 0; i < jSONArray.length(); i++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i);
                        if (jSONObject != null && str2.equals(jSONObject.optString("xml_type"))) {
                            arrayList.add(str + File.separator + jSONObject.optString("name"));
                            if (jSONObject.has("ext_template")) {
                                jSONObject.put("folder_dir", str);
                                arrayList.add(jSONObject.toString());
                            }
                        }
                    }
                } catch (JSONException e3) {
                    aa.d("SameFileTool", e3.getMessage());
                    return arrayList;
                }
                return arrayList;
            }
            arrayList.add(str);
        }
        return arrayList;
    }

    public static void b() {
        Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.foundation.tools.y.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
                    if (eVarB == null) {
                        eVarB = com.mbridge.msdk.c.f.a().b();
                    }
                    y.a(com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_RES_MANAGER_DIR), eVarB.d());
                    y.a(System.currentTimeMillis() - ((long) (eVarB.R() * 1000)));
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
        };
        com.mbridge.msdk.foundation.controller.c.a();
        com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
    }

    public static File[] b(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.listFiles();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    private static long c(File file) throws Exception {
        long jAvailable = 0;
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    if (file.exists()) {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            jAvailable = fileInputStream2.available();
                            fileInputStream = fileInputStream2;
                        } catch (Exception e2) {
                            e = e2;
                            fileInputStream = fileInputStream2;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            return jAvailable;
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e3) {
                                    e3.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } else {
                        file.createNewFile();
                        aa.d("获取文件大小", "文件不存在!");
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e4) {
                e = e4;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        return jAvailable;
    }

    public static void c(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - ((long) (eVarB.R() * 1000));
            File file = new File(str);
            if (file.exists() && file.isDirectory()) {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles != null) {
                    for (File file2 : fileArrListFiles) {
                        if (file2.lastModified() + jCurrentTimeMillis < jCurrentTimeMillis2) {
                            b(file2);
                            try {
                                File file3 = new File(str + ".zip");
                                if (file3.exists() && file3.isFile()) {
                                    b(file3);
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }
                }
            }
        } catch (Exception unused2) {
        }
    }

    private static long d(File file) throws Exception {
        File[] fileArrListFiles = file.listFiles();
        long jD = 0;
        if (fileArrListFiles != null) {
            for (int i = 0; i < fileArrListFiles.length; i++) {
                jD += fileArrListFiles[i].isDirectory() ? d(fileArrListFiles[i]) : c(fileArrListFiles[i]);
            }
        }
        return jD;
    }

    public static String d(String str) {
        return !TextUtils.isEmpty(str) ? SameMD5.getMD5(al.b(str.trim())) : "";
    }

    private static ArrayList<File> e(File file) {
        ArrayList<File> arrayList = new ArrayList<>();
        for (File file2 : file.listFiles(new FileFilter() { // from class: com.mbridge.msdk.foundation.tools.y.3
            @Override // java.io.FileFilter
            public final boolean accept(File file3) {
                return !file3.isHidden() || file3.isDirectory();
            }
        })) {
            if (file2.isDirectory()) {
                arrayList.addAll(e(file2));
            } else {
                arrayList.add(file2);
            }
        }
        return arrayList;
    }

    private static void e(String str) {
        try {
            ArrayList<File> arrayListE = e(new File(str));
            Collections.sort(arrayListE, new Comparator<File>() { // from class: com.mbridge.msdk.foundation.tools.y.4
                @Override // java.util.Comparator
                public final /* synthetic */ int compare(File file, File file2) {
                    long jLastModified = file.lastModified() - file2.lastModified();
                    if (jLastModified > 0) {
                        return 1;
                    }
                    return jLastModified == 0 ? 0 : -1;
                }

                @Override // java.util.Comparator
                public final boolean equals(Object obj) {
                    return true;
                }
            });
            int size = (arrayListE.size() - 1) / 2;
            for (int i = 0; i < size; i++) {
                File file = arrayListE.get(i);
                if (file.exists() && file.isFile()) {
                    file.delete();
                }
            }
        } catch (Exception unused) {
            aa.d("SameFileTool", "del memory failed");
        }
    }
}
