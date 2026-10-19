package com.fyber.inneractive.sdk.network;

import android.os.Environment;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URI;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class l0 extends f0<String> {
    public final String r;

    public l0(w<String> wVar, String str, com.fyber.inneractive.sdk.config.global.s sVar) {
        super(wVar, x.a().b(), sVar);
        this.r = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.network.c0
    public b0 a(j jVar, Map<String, List<String>> map, int i) throws Exception {
        FileOutputStream fileOutputStream;
        b0 b0Var = new b0();
        FileOutputStream fileOutputStream2 = null;
        T t = 0;
        fileOutputStream2 = null;
        try {
            try {
                InputStream inputStream = jVar.c;
                File file = new File(Environment.getExternalStorageDirectory(), "Pictures");
                file.mkdirs();
                String strA = a(URI.create(this.r), map);
                if (TextUtils.isEmpty(strA)) {
                    fileOutputStream = null;
                } else {
                    File file2 = new File(file, strA);
                    String string = file2.toString();
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        try {
                            com.fyber.inneractive.sdk.util.q.a(inputStream, fileOutputStream);
                            t = string;
                        } catch (Exception unused) {
                            fileOutputStream2 = fileOutputStream;
                            IAlog.a("failed to download and save the image file.", new Object[0]);
                            fileOutputStream = fileOutputStream2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        com.fyber.inneractive.sdk.util.q.b(fileOutputStream);
                        throw th;
                    }
                }
                try {
                    b0Var.a = t;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    fileOutputStream = fileOutputStream2;
                    com.fyber.inneractive.sdk.util.q.b(fileOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception unused2) {
        }
        com.fyber.inneractive.sdk.util.q.b(fileOutputStream);
        return b0Var;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public String a() {
        return this.r;
    }

    public final String a(URI uri, Map<String, List<String>> map) {
        String path = uri.getPath();
        if (path == null) {
            return null;
        }
        String name = new File(path).getName();
        List<String> list = map != null ? map.get("text/html") : null;
        String str = list != null ? list.get(0) : null;
        if (str == null) {
            return name;
        }
        for (String str2 : str.split(";")) {
            if (str2.contains("image/")) {
                String str3 = "." + str2.split("/")[1];
                if (name.endsWith(str3)) {
                    return name;
                }
                return name + str3;
            }
        }
        return name;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public o0 i() {
        return o0.LOW;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public boolean o() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public z r() {
        return z.GET;
    }

    @Override // com.fyber.inneractive.sdk.network.c0
    public int v() {
        return 0;
    }
}
