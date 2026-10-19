package com.mbridge.msdk.foundation.same.b;

import android.util.Log;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ad;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: MBridgeDirManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private static e c;
    private b a;
    private ArrayList<a> b = new ArrayList<>();

    /* JADX INFO: compiled from: MBridgeDirManager.java */
    private static final class a {
        public c a;
        public File b;

        public a(c cVar, File file) {
            this.a = cVar;
            this.b = file;
        }
    }

    private e(b bVar) {
        this.a = bVar;
    }

    public static synchronized e a() {
        if (c == null && com.mbridge.msdk.foundation.controller.b.d().g() != null) {
            ad.a(com.mbridge.msdk.foundation.controller.b.d().g());
        }
        if (c == null) {
            Log.e("MBridgeDirManager", "mDirectoryManager == null");
        }
        return c;
    }

    public static File a(c cVar) {
        try {
            if (a() == null || a().b == null || a().b.size() <= 0) {
                return null;
            }
            for (a aVar : a().b) {
                if (aVar.a.equals(cVar)) {
                    return aVar.b;
                }
            }
            return null;
        } catch (Throwable th) {
            aa.b("MBridgeDirManager", th.getMessage(), th);
            return null;
        }
    }

    public static synchronized void a(b bVar) {
        if (c == null) {
            c = new e(bVar);
        }
    }

    private boolean a(com.mbridge.msdk.foundation.same.b.a aVar) {
        String strB;
        com.mbridge.msdk.foundation.same.b.a aVarC = aVar.c();
        if (aVarC == null) {
            strB = aVar.b();
        } else {
            File fileA = a(aVarC.a());
            if (fileA == null) {
                return false;
            }
            strB = fileA.getAbsolutePath() + File.separator + aVar.b();
        }
        File file = new File(strB);
        if (!(!file.exists() ? file.mkdirs() : true)) {
            return false;
        }
        this.b.add(new a(aVar.a(), file));
        List<com.mbridge.msdk.foundation.same.b.a> listD = aVar.d();
        if (listD != null) {
            Iterator<com.mbridge.msdk.foundation.same.b.a> it = listD.iterator();
            while (it.hasNext()) {
                if (!a(it.next())) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String b(c cVar) {
        File fileA = a(cVar);
        if (fileA != null) {
            return fileA.getAbsolutePath();
        }
        return null;
    }

    public final boolean b() {
        return a(this.a.a());
    }
}
