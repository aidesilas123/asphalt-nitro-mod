package com.bykv.vk.openvk.component.video.a.c;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bykv.vk.openvk.component.video.a.b.b.c;
import com.bykv.vk.openvk.component.video.a.b.e.e;
import com.bykv.vk.openvk.component.video.a.b.i;
import com.bytedance.sdk.component.g.f;
import com.bytedance.sdk.component.g.h;
import com.json.b4;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final Handler b = new Handler(Looper.getMainLooper());
    public static final Charset a = Charset.forName(C.UTF8_NAME);

    public static int a() {
        File[] fileArrListFiles;
        if (Build.VERSION.SDK_INT >= 17) {
            return Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        try {
            File file = new File("/sys/devices/system/cpu/");
            if (!file.exists() || (fileArrListFiles = file.listFiles(new FilenameFilter() { // from class: com.bykv.vk.openvk.component.video.a.c.a.1
                private Pattern a = Pattern.compile("^cpu[0-9]+$");

                @Override // java.io.FilenameFilter
                public boolean accept(File file2, String str) {
                    return this.a.matcher(str).matches();
                }
            })) == null) {
                return 1;
            }
            return Math.max(fileArrListFiles.length, 1);
        } catch (Throwable unused) {
            return 1;
        }
    }

    public static int a(com.bykv.vk.openvk.component.video.a.b.e.a aVar) {
        int iLastIndexOf;
        if (aVar == null) {
            return -1;
        }
        if (aVar.a() == 200) {
            return a(aVar.a("Content-Length", null), -1);
        }
        if (aVar.a() == 206) {
            String strA = aVar.a("Content-Range", null);
            if (!TextUtils.isEmpty(strA) && (iLastIndexOf = strA.lastIndexOf("/")) >= 0 && iLastIndexOf < strA.length() - 1) {
                return a(strA.substring(iLastIndexOf + 1), -1);
            }
        }
        return -1;
    }

    public static int a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static com.bykv.vk.openvk.component.video.a.b.b.a a(com.bykv.vk.openvk.component.video.a.b.e.a aVar, c cVar, String str, int i) {
        String strB;
        String str2;
        String string;
        com.bykv.vk.openvk.component.video.a.b.b.a aVarA = cVar.a(str, i);
        if (aVarA != null) {
            return aVarA;
        }
        int iA = a(aVar);
        String strA = aVar.a(b4.I, null);
        if (iA <= 0 || TextUtils.isEmpty(strA)) {
            return aVarA;
        }
        e eVarG = aVar.g();
        if (eVarG != null) {
            str2 = eVarG.b;
            strB = b(eVarG.f436e);
        } else {
            strB = "";
            str2 = strB;
        }
        String strB2 = b(aVar.c());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IronSourceConstants.REQUEST_URL, str2);
            jSONObject.put("requestHeaders", strB);
            jSONObject.put("responseHeaders", strB2);
            string = jSONObject.toString();
        } catch (Throwable unused) {
            string = "";
        }
        com.bykv.vk.openvk.component.video.a.b.b.a aVar2 = new com.bykv.vk.openvk.component.video.a.b.b.a(str, strA, iA, i, string);
        cVar.a(aVar2);
        return aVar2;
    }

    public static String a(int i, int i2) {
        String strB = b(i, i2);
        if (strB == null) {
            return null;
        }
        return "bytes=" + strB;
    }

    public static String a(com.bykv.vk.openvk.component.video.a.b.b.a aVar, int i) {
        StringBuilder sb = new StringBuilder();
        if (i <= 0) {
            sb.append("HTTP/1.1 200 OK");
            sb.append("\r\n");
        } else {
            sb.append("HTTP/1.1 206 Partial Content");
            sb.append("\r\n");
        }
        sb.append("Accept-Ranges: bytes");
        sb.append("\r\n");
        sb.append("Content-Type: ");
        sb.append(aVar.b);
        sb.append("\r\n");
        if (i <= 0) {
            sb.append("Content-Length: ");
            sb.append(aVar.c);
            sb.append("\r\n");
        } else {
            sb.append("Content-Range: bytes ");
            sb.append(i);
            sb.append("-");
            sb.append(aVar.c - 1);
            sb.append("/");
            sb.append(aVar.c);
            sb.append("\r\n");
            sb.append("Content-Length: ");
            sb.append(aVar.c - i);
            sb.append("\r\n");
        }
        sb.append("Connection: close");
        sb.append("\r\n");
        sb.append("\r\n");
        String string = sb.toString();
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            Log.i("TAG_PROXY_WRITE_TO_MP", string);
        }
        return string;
    }

    public static String a(com.bykv.vk.openvk.component.video.a.b.e.a aVar, int i) {
        int iA;
        if (aVar == null || !aVar.b()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(aVar.e().toUpperCase());
        sb.append(' ');
        sb.append(aVar.a());
        sb.append(' ');
        sb.append(aVar.f());
        sb.append("\r\n");
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            Log.i("TAG_PROXY_headers", aVar.e().toUpperCase() + " " + aVar.a() + " " + aVar.f());
        }
        List<i.b> listA = a(aVar.c());
        boolean z = true;
        if (listA != null) {
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                i.b bVar = listA.get(i2);
                if (bVar != null) {
                    String str = bVar.a;
                    String str2 = bVar.b;
                    sb.append(str);
                    sb.append(": ");
                    sb.append(str2);
                    sb.append("\r\n");
                    if ("Content-Range".equalsIgnoreCase(str) || ("Accept-Ranges".equalsIgnoreCase(str) && "bytes".equalsIgnoreCase(str2))) {
                        z = false;
                    }
                }
            }
        }
        if (z && (iA = a(aVar)) > 0) {
            sb.append("Content-Range: bytes ");
            sb.append(Math.max(i, 0));
            sb.append("-");
            sb.append(iA - 1);
            sb.append("/");
            sb.append(iA);
            sb.append("\r\n");
        }
        sb.append("Connection: close");
        sb.append("\r\n");
        sb.append("\r\n");
        String string = sb.toString();
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            Log.i("TAG_PROXY_WRITE_TO_MP", string);
        }
        return string;
    }

    public static String a(com.bykv.vk.openvk.component.video.a.b.e.a aVar, boolean z, boolean z2) {
        String strA;
        if (aVar == null) {
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_Response", "response null");
            }
            return "response null";
        }
        if (!aVar.b()) {
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_Response", "response code: " + aVar.a());
            }
            return "response code: " + aVar.a();
        }
        String strA2 = aVar.a(b4.I, null);
        if (!c(strA2)) {
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_Response", "Content-Type: " + strA2);
            }
            return "Content-Type: " + strA2;
        }
        int iA = a(aVar);
        if (iA <= 0) {
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_Response", "Content-Length: " + iA);
            }
            return "Content-Length: " + iA;
        }
        if (!z || ((strA = aVar.a("Accept-Ranges", null)) != null && strA.contains("bytes"))) {
            if (!z2 || aVar.d() != null) {
                return null;
            }
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_Response", "response body null");
            }
            return "response body null";
        }
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            Log.e("TAG_PROXY_Response", "Accept-Ranges: " + strA);
        }
        return "Accept-Ranges: " + strA;
    }

    public static List<i.b> a(List<i.b> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                i.b bVar = list.get(i);
                if (bVar != null) {
                    Log.i("TAG_PROXY_PRE_FILTER", bVar.a + ": " + bVar.a);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (i.b bVar2 : list) {
            if ("Host".equals(bVar2.a) || "Keep-Alive".equals(bVar2.a) || "Connection".equals(bVar2.a) || "Proxy-Connection".equals(bVar2.a)) {
                arrayList.add(bVar2);
            }
        }
        list.removeAll(arrayList);
        if (com.bykv.vk.openvk.component.video.a.b.e.c) {
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                i.b bVar3 = list.get(i2);
                if (bVar3 != null) {
                    Log.i("TAG_PROXY_POST_FILTER", bVar3.a + ": " + bVar3.b);
                }
            }
        }
        return list;
    }

    public static List<i.b> a(Map<String, String> map) {
        if (map != null && !map.isEmpty()) {
            try {
                Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : setEntrySet) {
                    arrayList.add(new i.b(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static List<String> a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            if (a(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    public static void a(h hVar) {
        if (hVar != null) {
            if (b()) {
                f.b(hVar);
                if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                    Log.e("TAG_PROXY_UTIL", "invoke in pool thread");
                    return;
                }
                return;
            }
            hVar.run();
            if (com.bykv.vk.openvk.component.video.a.b.e.c) {
                Log.e("TAG_PROXY_UTIL", "invoke calling thread");
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(RandomAccessFile randomAccessFile) {
        if (randomAccessFile != null) {
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Runnable runnable) {
        if (runnable != null) {
            if (b()) {
                runnable.run();
            } else {
                b.post(runnable);
            }
        }
    }

    public static void a(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean a(String str) {
        return str != null && (str.startsWith("http://") || str.startsWith("https://"));
    }

    public static int b(String str) {
        return a(str, 0);
    }

    public static String b(int i, int i2) {
        if (i >= 0 && i2 > 0) {
            return i + "-" + i2;
        }
        if (i > 0) {
            return i + "-";
        }
        if (i >= 0 || i2 <= 0) {
            return null;
        }
        return "-" + i2;
    }

    public static String b(List<i.b> list) {
        if (list == null || list.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            i.b bVar = list.get(0);
            if (bVar != null) {
                sb.append(bVar.a);
                sb.append(": ");
                sb.append(bVar.b);
                sb.append("\r\n");
            }
        }
        return sb.toString();
    }

    public static String b(Map<String, String> map) {
        if (map == null || map.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append((Object) entry.getKey());
            sb.append(": ");
            sb.append((Object) entry.getValue());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    public static boolean b() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static boolean c(String str) {
        return str != null && (str.startsWith("video/") || "application/octet-stream".equals(str) || "binary/octet-stream".equals(str));
    }
}
