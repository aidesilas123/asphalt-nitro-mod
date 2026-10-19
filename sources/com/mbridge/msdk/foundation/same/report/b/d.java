package com.mbridge.msdk.foundation.same.report.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.util.Log;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CrashHandlerUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public class d implements Thread.UncaughtExceptionHandler {
    private static volatile d c;
    Handler a = new Handler() { // from class: com.mbridge.msdk.foundation.same.report.b.d.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Context context;
            HashMap map;
            super.handleMessage(message);
            if (message.what == 101 && (context = (Context) d.this.b.get()) != null) {
                Object obj = message.obj;
                if (!(obj instanceof HashMap) || (map = (HashMap) obj) == null) {
                    return;
                }
                new p(context).a((String) map.get("crashinfo"), (File) map.get("file"));
            }
        }
    };
    private final WeakReference<Context> b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f7184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Throwable f7185e;

    private d(Context context) {
        this.b = new WeakReference<>(context);
    }

    public static d a(Context context) {
        if (c == null) {
            synchronized (d.class) {
                if (c == null) {
                    c = new d(context);
                }
            }
        }
        return c;
    }

    private String a(Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTrace) {
            sb.append(stackTraceElement.toString() + "\n");
        }
        return sb.toString();
    }

    private String a(Throwable th, String str) {
        try {
            JSONObject jSONObjectA = a(str);
            if (jSONObjectA == null) {
                return "";
            }
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            jSONObjectA.put("crashinfo", stringWriter.toString());
            String string = jSONObjectA.toString();
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000052");
            stringBuffer.append(o2.i.c);
            stringBuffer.append("crash_first_index_from_mtg=");
            stringBuffer.append(c.a(th.getStackTrace()));
            stringBuffer.append("&exception=" + string);
            return stringBuffer.toString();
        } catch (Throwable th2) {
            th2.printStackTrace();
            return "";
        }
    }

    private static List<String> a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        try {
            Matcher matcher = Pattern.compile(str2).matcher(str);
            while (matcher.find()) {
                arrayList.add(matcher.group(1));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return arrayList;
    }

    private void a(String str, String str2, Throwable th, Thread thread) {
        if (!str.contains(str2)) {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f7184d;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
                return;
            }
            return;
        }
        HashMap<String, Object> mapC = c();
        if (mapC == null || mapC.get("file") == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        HashMap map = new HashMap();
        map.put("crashinfo", a(th, (String) mapC.get("time")));
        map.put("file", mapC.get("file"));
        messageObtain.obj = map;
        messageObtain.what = 101;
        this.a.sendMessage(messageObtain);
        a(thread, th);
    }

    private void a(Thread thread, Throwable th) {
        try {
            Thread.sleep(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        } catch (InterruptedException e2) {
            e2.printStackTrace();
        }
        Process.killProcess(Process.myPid());
    }

    private int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    public static String b() {
        try {
            e eVarB = f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = f.a().b();
            }
            String strN = eVarB.N();
            return TextUtils.isEmpty(strN) ? "<mvpackage>mbridge</mvpackage>" : strN;
        } catch (Exception unused) {
            return "<mvpackage>mbridge</mvpackage>";
        }
    }

    public static List<String> b(String str) {
        try {
            List<String> listA = a(str, "<mvpackage>(.*?)</mvpackage>");
            return listA == null ? new ArrayList() : listA;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    private static String c(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e("", e2.getMessage());
            return "";
        }
    }

    private HashMap<String, Object> c() {
        HashMap<String, Object> map = new HashMap<>();
        if (this.f7185e == null) {
            return null;
        }
        String strB = com.mbridge.msdk.foundation.same.b.e.b(com.mbridge.msdk.foundation.same.b.c.MBRIDGE_CRASH_INFO);
        File file = new File(strB + "/");
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(System.currentTimeMillis()));
        File file2 = new File(strB + "/sdkcrash" + str + ".txt");
        try {
            PrintWriter printWriter = new PrintWriter(new BufferedWriter(new FileWriter(file2)));
            printWriter.println(a(this.f7185e, str));
            printWriter.println("====");
            this.f7185e.printStackTrace(printWriter);
            printWriter.close();
            map.put("file", file2);
            map.put("time", str);
            return map;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String d(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public final JSONObject a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Context context = this.b.get();
        if (context == null) {
            return null;
        }
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        long usableSpace = externalStorageDirectory.getUsableSpace();
        long totalSpace = externalStorageDirectory.getTotalSpace();
        String fileSize = Formatter.formatFileSize(context, usableSpace);
        String fileSize2 = Formatter.formatFileSize(context, totalSpace);
        jSONObject.put("max_memory", String.valueOf((float) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d)));
        jSONObject.put("memoryby_app", String.valueOf((float) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d)));
        jSONObject.put("remaining_memory", (float) ((Runtime.getRuntime().freeMemory() * 1.0d) / 1048576.0d));
        jSONObject.put("sdcard_remainder", fileSize);
        jSONObject.put("totalspacestr", fileSize2);
        jSONObject.put("crashtime", str);
        String strB = com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.SDK_APP_ID);
        if (!TextUtils.isEmpty(strB)) {
            jSONObject.put("appid", strB);
        }
        try {
            jSONObject.put("osversion", Build.VERSION.SDK_INT);
            jSONObject.put("appversioncode", b(context));
            jSONObject.put("appversionname", c(context));
            jSONObject.put("appname", d(context));
        } catch (Exception unused) {
            jSONObject.put("osversion", 0);
            jSONObject.put("appversioncode", UniquePlacementId.NO_ID);
            jSONObject.put("appversionname", UniquePlacementId.NO_ID);
            jSONObject.put("appname", "");
        }
        return jSONObject;
    }

    public final void a() {
        this.f7184d = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        m.a().b();
        try {
            this.f7185e = th;
            String strB = b();
            List<String> listB = b(strB);
            if (listB.size() <= 0) {
                a(a(th), strB, th, thread);
                return;
            }
            for (int i = 0; i < listB.size(); i++) {
                a(a(th), listB.get(i), th, thread);
            }
        } catch (Exception e2) {
            a(thread, th);
            e2.printStackTrace();
        }
    }
}
