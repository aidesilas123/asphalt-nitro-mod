package com.json.sdk.utils;

import android.content.Context;
import android.os.Build;
import com.json.e5;
import com.json.e9;
import com.json.o2;
import com.json.q6;
import com.json.vb;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class IronSourceStorageUtils {
    private static vb a;
    private static boolean b;

    private static void a(Context context) {
        vb vbVar = a;
        if (vbVar != null && vbVar.b()) {
            deleteCacheDirectories(context);
        }
        vb vbVar2 = a;
        if (vbVar2 == null || !vbVar2.c()) {
            return;
        }
        deleteFilesDirectories(context);
    }

    private static void b(File file) {
        if (file != null) {
            deleteFolder(e(file).getPath());
        }
    }

    public static String buildAbsolutePathToDirInCache(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        return str + File.separator + str2;
    }

    public static JSONObject buildFilesMap(String str, String str2) {
        Object objG;
        String name;
        File file = new File(str, str2);
        JSONObject jSONObject = new JSONObject();
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                try {
                    objG = g(file2);
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
                if (objG instanceof JSONArray) {
                    name = "files";
                } else if (objG instanceof JSONObject) {
                    name = file2.getName();
                }
                jSONObject.put(name, g(file2));
            }
        }
        return jSONObject;
    }

    public static JSONObject buildFilesMapOfDirectory(q6 q6Var, JSONObject jSONObject) throws Exception {
        String name;
        JSONObject jSONObjectBuildFilesMapOfDirectory;
        if (q6Var == null || !q6Var.isDirectory()) {
            return new JSONObject();
        }
        File[] fileArrListFiles = q6Var.listFiles();
        if (fileArrListFiles == null) {
            return new JSONObject();
        }
        JSONObject jSONObject2 = new JSONObject();
        for (File file : fileArrListFiles) {
            q6 q6Var2 = new q6(file.getPath());
            if (q6Var2.isFile()) {
                name = q6Var2.getName();
                jSONObjectBuildFilesMapOfDirectory = q6Var2.a();
                if (jSONObject.has(name)) {
                    jSONObjectBuildFilesMapOfDirectory = SDKUtils.mergeJSONObjects(jSONObjectBuildFilesMapOfDirectory, jSONObject.getJSONObject(name));
                }
            } else if (q6Var2.isDirectory()) {
                name = q6Var2.getName();
                jSONObjectBuildFilesMapOfDirectory = buildFilesMapOfDirectory(q6Var2, jSONObject);
            }
            jSONObject2.put(name, jSONObjectBuildFilesMapOfDirectory);
        }
        return jSONObject2;
    }

    private static boolean c() {
        vb vbVar = a;
        return (vbVar != null && vbVar.a()) || Build.VERSION.SDK_INT > 28;
    }

    private static File d(Context context) {
        e5 e5VarC = e9.h().c();
        vb vbVar = a;
        return (vbVar == null || !vbVar.d()) ? e5VarC.t(context) : e5VarC.e(context);
    }

    public static void deleteCacheDirectories(Context context) {
        e5 e5VarC = e9.h().c();
        b(e5VarC.e(context));
        b(e5VarC.k(context));
    }

    public static synchronized boolean deleteFile(q6 q6Var) {
        if (!q6Var.exists()) {
            return false;
        }
        return q6Var.delete();
    }

    public static void deleteFilesDirectories(Context context) {
        e5 e5VarC = e9.h().c();
        b(e5VarC.t(context));
        b(e5VarC.v(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized boolean deleteFolder(java.lang.String r2) {
        /*
            java.lang.Class<com.ironsource.sdk.utils.IronSourceStorageUtils> r0 = com.json.sdk.utils.IronSourceStorageUtils.class
            monitor-enter(r0)
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L19
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L19
            boolean r2 = deleteFolderContentRecursive(r1)     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L16
            boolean r2 = r1.delete()     // Catch: java.lang.Throwable -> L19
            if (r2 == 0) goto L16
            r2 = 1
            goto L17
        L16:
            r2 = 0
        L17:
            monitor-exit(r0)
            return r2
        L19:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.sdk.utils.IronSourceStorageUtils.deleteFolder(java.lang.String):boolean");
    }

    public static boolean deleteFolderContentRecursive(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean zDeleteFolderContentRecursive = true;
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    zDeleteFolderContentRecursive &= deleteFolderContentRecursive(file2);
                }
                if (!file2.delete()) {
                    zDeleteFolderContentRecursive = false;
                }
            }
        }
        return zDeleteFolderContentRecursive;
    }

    private static File e(File file) {
        StringBuilder sb = new StringBuilder();
        sb.append(file.getAbsolutePath());
        String str = File.separator;
        sb.append(str);
        sb.append("supersonicads");
        sb.append(str);
        return new File(sb.toString());
    }

    public static void ensurePathSafety(File file, String str) throws Exception {
        vb vbVar = a;
        if (vbVar == null || !vbVar.e()) {
            String canonicalPath = new File(str).getCanonicalPath();
            String canonicalPath2 = file.getCanonicalPath();
            if (canonicalPath2.startsWith(canonicalPath)) {
                return;
            }
            throw new Exception(o2.c.w + canonicalPath2);
        }
    }

    private static File f(Context context) {
        e5 e5VarC = e9.h().c();
        vb vbVar = a;
        return (vbVar == null || !vbVar.d()) ? e5VarC.v(context) : e5VarC.k(context);
    }

    private static Object g(File file) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        try {
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (file.isFile()) {
            jSONArray.put(file.getName());
            return jSONArray;
        }
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                jSONObject.put(file2.getName(), g(file2));
            } else {
                jSONArray.put(file2.getName());
                jSONObject.put("files", jSONArray);
            }
        }
        return jSONObject;
    }

    public static String getCachedFilesMap(String str, String str2) {
        JSONObject jSONObjectBuildFilesMap = buildFilesMap(str, str2);
        try {
            jSONObjectBuildFilesMap.put("path", str2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObjectBuildFilesMap.toString();
    }

    public static String getDiskCacheDirPath(Context context) {
        File fileD;
        if (!c() || !SDKUtils.isExternalStorageAvailable() || (fileD = d(context)) == null || !fileD.canWrite()) {
            return f(context).getPath();
        }
        b = true;
        return fileD.getPath();
    }

    public static ArrayList<q6> getFilesInFolderRecursive(q6 q6Var) {
        if (q6Var == null || !q6Var.isDirectory()) {
            return new ArrayList<>();
        }
        ArrayList<q6> arrayList = new ArrayList<>();
        File[] fileArrListFiles = q6Var.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                q6 q6Var2 = new q6(file.getPath());
                if (q6Var2.isDirectory()) {
                    arrayList.addAll(getFilesInFolderRecursive(q6Var2));
                }
                if (q6Var2.isFile()) {
                    arrayList.add(q6Var2);
                }
            }
        }
        return arrayList;
    }

    public static String getNetworkStorageDir(Context context) {
        File fileE = e(new File(getDiskCacheDirPath(context)));
        if (!fileE.exists()) {
            fileE.mkdir();
        }
        return fileE.getPath();
    }

    public static long getTotalSizeOfDir(q6 q6Var) {
        long totalSizeOfDir;
        long j = 0;
        if (q6Var != null && q6Var.isDirectory()) {
            File[] fileArrListFiles = q6Var.listFiles();
            if (fileArrListFiles == null) {
                return 0L;
            }
            for (File file : fileArrListFiles) {
                q6 q6Var2 = new q6(file.getPath());
                if (q6Var2.isFile()) {
                    totalSizeOfDir = q6Var2.length();
                } else if (q6Var2.isDirectory()) {
                    totalSizeOfDir = getTotalSizeOfDir(q6Var2);
                }
                j += totalSizeOfDir;
            }
        }
        return j;
    }

    public static void initializeCacheDirectory(Context context, vb vbVar) {
        a = vbVar;
        a(context);
    }

    public static boolean isPathExist(String str, String str2) {
        return new File(str, str2).exists();
    }

    public static boolean isUxt() {
        return b;
    }

    public static String makeDir(String str) {
        File file = new File(str);
        if (file.exists() || file.mkdirs()) {
            return file.getPath();
        }
        return null;
    }

    public static String readFile(q6 q6Var) throws Exception {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new FileReader(q6Var));
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                bufferedReader.close();
                return sb.toString();
            }
            sb.append(line);
            sb.append('\n');
        }
    }

    public static boolean renameFile(String str, String str2) throws Exception {
        return new File(str).renameTo(new File(str2));
    }

    public static int saveFile(byte[] bArr, String str) throws Exception {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(str));
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            byte[] bArr2 = new byte[102400];
            int i = 0;
            while (true) {
                int i2 = byteArrayInputStream.read(bArr2);
                if (i2 == -1) {
                    return i;
                }
                fileOutputStream.write(bArr2, 0, i2);
                i += i2;
            }
        } finally {
            fileOutputStream.close();
            byteArrayInputStream.close();
        }
    }
}
