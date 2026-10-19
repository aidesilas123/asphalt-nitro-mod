package com.bykv.vk.openvk.preload.geckox.f;

import com.bykv.vk.openvk.preload.geckox.g.c;
import com.bykv.vk.openvk.preload.geckox.utils.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: ChannelVerLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    public String a;
    public String b;
    public volatile File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    volatile Long f587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AtomicBoolean f588e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile com.bykv.vk.openvk.preload.geckox.f.a.a f589f;

    a(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    private synchronized File c(String str) throws Exception {
        if (this.c != null) {
            return this.c;
        }
        if (this.f587d != null && this.f587d.longValue() == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        String str2 = File.separator;
        sb.append(str2);
        sb.append(str);
        sb.append(str2);
        sb.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(sb.toString());
        try {
            if (this.f587d == null) {
                this.f587d = j.a(new File(this.a, str));
            }
            if (this.f587d == null) {
                this.f587d = -1L;
                return null;
            }
            File file = new File(this.a, str2 + str + str2 + this.f587d + str2 + "using.lock");
            this.c = file.getParentFile();
            c.a(file.getAbsolutePath());
            return this.c;
        } finally {
            bVarA.a();
        }
    }

    public final synchronized com.bykv.vk.openvk.preload.geckox.f.a.a a(String str) throws Exception {
        if (this.f589f != null) {
            return this.f589f;
        }
        File fileC = c(str);
        if (fileC == null) {
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
        File file = new File(fileC, "res.macv");
        File file2 = new File(fileC, "res");
        if (file2.exists() && file2.isDirectory()) {
            this.f589f = new com.bykv.vk.openvk.preload.geckox.f.a.c(fileC);
        } else {
            if (!file.exists() || !file.isFile()) {
                throw new RuntimeException("can not find res, dir:" + fileC.getAbsolutePath());
            }
            this.f589f = new com.bykv.vk.openvk.preload.geckox.f.a.b(fileC);
        }
        return this.f589f;
    }

    public final int b(String str) {
        try {
            File file = new File(c(str), "res");
            if (!file.exists() || !file.isDirectory()) {
                return 0;
            }
            int length = file.listFiles().length;
            if (length > 0) {
                return length - 1;
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}
