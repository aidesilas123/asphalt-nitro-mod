package com.squareup.imagelib;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: Utils.java */
/* JADX INFO: loaded from: classes4.dex */
final class a0 {
    static final StringBuilder a = new StringBuilder();

    /* JADX INFO: compiled from: Utils.java */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            sendMessageDelayed(obtainMessage(), 1000L);
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    @TargetApi(11)
    private static class b {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    @TargetApi(12)
    private static class c {
        static int a(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    private static class d extends Thread {
        public d(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    /* JADX INFO: compiled from: Utils.java */
    static class e implements ThreadFactory {
        e() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new d(runnable);
        }
    }

    static long a(File file) {
        long blockCount;
        if (file == null) {
            return ServiceProvider.HTTP_CACHE_DISK_SIZE;
        }
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 50;
        } catch (IllegalArgumentException unused) {
            blockCount = 5242880;
        }
        return Math.max(Math.min(blockCount, 52428800L), ServiceProvider.HTTP_CACHE_DISK_SIZE);
    }

    static int b(Context context) {
        ActivityManager activityManager = (ActivityManager) p(context, "activity");
        boolean z = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        if (z && Build.VERSION.SDK_INT >= 11) {
            memoryClass = b.a(activityManager);
        }
        return ((int) (memoryClass * 0.1f)) * 1048576;
    }

    static void c() {
        if (!s()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static <T> T d(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    static void e(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    static File f(Context context) {
        try {
            File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        } catch (Exception unused) {
            return null;
        }
    }

    static j g(Context context) {
        return new z(context);
    }

    static String h(s sVar) {
        StringBuilder sb = a;
        String strI = i(sVar, sb);
        sb.setLength(0);
        return strI;
    }

    static String i(s sVar, StringBuilder sb) {
        String str = sVar.f7766g;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(sVar.f7766g);
        } else {
            Uri uri = sVar.f7764e;
            if (uri != null) {
                String string = uri.toString();
                sb.ensureCapacity(string.length() + 50);
                sb.append(string);
            } else {
                sb.ensureCapacity(50);
                sb.append(sVar.f7765f);
            }
        }
        sb.append('\n');
        if (sVar.n != 0.0f) {
            sb.append("rotation:");
            sb.append(sVar.n);
            if (sVar.q) {
                sb.append('@');
                sb.append(sVar.o);
                sb.append('x');
                sb.append(sVar.p);
            }
            sb.append('\n');
        }
        if (sVar.c()) {
            sb.append("resize:");
            sb.append(sVar.i);
            sb.append('x');
            sb.append(sVar.j);
            sb.append('\n');
        }
        if (sVar.k) {
            sb.append("centerCrop");
            sb.append('\n');
        } else if (sVar.l) {
            sb.append("centerInside");
            sb.append('\n');
        }
        List<y> list = sVar.h;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append(sVar.h.get(i).key());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    static void j(Looper looper) {
        a aVar = new a(looper);
        aVar.sendMessageDelayed(aVar.obtainMessage(), 1000L);
    }

    static int k(Bitmap bitmap) {
        int iA = Build.VERSION.SDK_INT >= 12 ? c.a(bitmap) : bitmap.getRowBytes() * bitmap.getHeight();
        if (iA >= 0) {
            return iA;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    static String l(com.squareup.imagelib.c cVar) {
        return m(cVar, "");
    }

    static String m(com.squareup.imagelib.c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        com.squareup.imagelib.a aVarH = cVar.h();
        if (aVarH != null) {
            sb.append(aVarH.b.d());
        }
        List<com.squareup.imagelib.a> listI = cVar.i();
        if (listI != null) {
            int size = listI.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || aVarH != null) {
                    sb.append(", ");
                }
                sb.append(listI.get(i).b.d());
            }
        }
        return sb.toString();
    }

    static int n(Resources resources, s sVar) throws FileNotFoundException {
        Uri uri;
        int i = sVar.f7765f;
        if (i != 0 || (uri = sVar.f7764e) == null) {
            return i;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + sVar.f7764e);
        }
        List<String> pathSegments = sVar.f7764e.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + sVar.f7764e);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + sVar.f7764e);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + sVar.f7764e);
    }

    static Resources o(Context context, s sVar) throws FileNotFoundException {
        Uri uri;
        if (sVar.f7765f != 0 || (uri = sVar.f7764e) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + sVar.f7764e);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + sVar.f7764e);
        }
    }

    static <T> T p(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    static boolean q(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static boolean r(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    static boolean s() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static boolean t(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, C.ASCII_NAME)) && "WEBP".equals(new String(bArr, 8, 4, C.ASCII_NAME));
    }

    static void u(String str, String str2, String str3) {
    }

    static void v(String str, String str2, String str3, String str4) {
    }

    static boolean w(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split(" ", 2);
        if ("CACHE".equals(strArrSplit[0])) {
            return true;
        }
        if (strArrSplit.length == 1) {
            return false;
        }
        try {
            if ("CONDITIONAL_CACHE".equals(strArrSplit[0])) {
                return Integer.parseInt(strArrSplit[1]) == 304;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    static byte[] x(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }
}
