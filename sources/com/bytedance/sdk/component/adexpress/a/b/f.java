package com.bytedance.sdk.component.adexpress.a.b;

import android.text.TextUtils;
import com.bytedance.sdk.component.adexpress.a.c.a;
import com.bytedance.sdk.component.utils.l;
import com.json.b4;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: compiled from: Version.java */
/* JADX INFO: loaded from: classes.dex */
public class f {
    private static com.bytedance.sdk.component.adexpress.a.c.a a;

    public static a.C0101a a(String str) {
        if (!TextUtils.isEmpty(str) && b() != null && b().e() != null && b().f()) {
            for (a.C0101a c0101a : b().e()) {
                if (c0101a.a() != null && c0101a.a().equals(str)) {
                    return c0101a;
                }
            }
        }
        return null;
    }

    public static void a() {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(c.f(), "temp_pkg_info.json");
                Long lValueOf = Long.valueOf(file.length());
                if (lValueOf.longValue() > 0 && file.exists() && file.isFile()) {
                    byte[] bArr = new byte[lValueOf.intValue()];
                    fileInputStream = new FileInputStream(file);
                    try {
                        fileInputStream.read(bArr);
                        com.bytedance.sdk.component.adexpress.a.c.a aVarA = com.bytedance.sdk.component.adexpress.a.c.a.a(new JSONObject(new String(bArr, b4.L)));
                        if (aVarA != null) {
                            a = aVarA;
                            l.b("Version", "old version read success: " + a.b());
                        }
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            l.c("Version", "version init error", th);
                            if (fileInputStream == null) {
                                return;
                            } else {
                                fileInputStream.close();
                            }
                        } catch (Throwable th3) {
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException unused) {
                                }
                            }
                            throw th3;
                        }
                    }
                } else {
                    l.b("Version", "version pkg json file does not exist");
                }
            } catch (IOException unused2) {
                return;
            }
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
        }
        if (fileInputStream2 != null) {
            fileInputStream2.close();
        }
    }

    public static synchronized void a(com.bytedance.sdk.component.adexpress.a.c.a aVar) {
        if (aVar != null) {
            if (aVar.f()) {
                a = aVar;
            }
        }
    }

    public static synchronized com.bytedance.sdk.component.adexpress.a.c.a b() {
        return a;
    }

    public static boolean b(String str) {
        if (b() != null && !TextUtils.isEmpty(b().b())) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            String strB = b().b();
            String[] strArrSplit = str.split("\\.");
            String[] strArrSplit2 = strB.split("\\.");
            int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
            for (int i = 0; i < iMin; i++) {
                int length = strArrSplit[i].length() - strArrSplit2[i].length();
                if (length != 0) {
                    return length > 0;
                }
                int iCompareTo = strArrSplit[i].compareTo(strArrSplit2[i]);
                if (iCompareTo > 0) {
                    return true;
                }
                if (iCompareTo < 0) {
                    return false;
                }
                if (i == iMin - 1) {
                    return strArrSplit.length > strArrSplit2.length;
                }
            }
            return false;
        }
        return true;
    }

    public static void c() {
        com.bytedance.sdk.component.adexpress.a.c.a aVar = a;
        if (aVar == null) {
            l.b("Version", "version save error1");
            return;
        }
        String strG = aVar.g();
        if (TextUtils.isEmpty(strG)) {
            l.b("Version", "version save error2");
            return;
        }
        File file = new File(c.f(), "temp_pkg_info.json");
        File file2 = new File(file + ".tmp");
        if (file2.exists()) {
            file2.delete();
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    fileOutputStream2.write(strG.getBytes(b4.L));
                    if (file.exists()) {
                        file.delete();
                    }
                    file2.renameTo(file);
                    fileOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        l.c("Version", "version save error3", th);
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th2) {
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th2;
                    }
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void d() {
        com.bytedance.sdk.component.adexpress.a.c.a aVarB = b();
        if (aVarB == null) {
            return;
        }
        File fileF = c.f();
        try {
            new File(fileF, "temp_pkg_info.json").delete();
        } catch (Throwable unused) {
        }
        if (aVarB.e() != null) {
            Iterator<a.C0101a> it = aVarB.e().iterator();
            while (it.hasNext()) {
                try {
                    new File(fileF, com.bytedance.sdk.component.utils.e.a(it.next().a())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
        a = null;
    }
}
