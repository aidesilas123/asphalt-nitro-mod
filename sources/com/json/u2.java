package com.json;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.DataOutputStream;
import java.lang.Thread;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class u2 {
    public static String l = "";
    private final e5 a;
    private JSONObject b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f6658f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f6659g;
    private String h;
    private String i;

    class a implements sb {
        a() {
        }

        @Override // com.json.sb
        public void a() {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            StringBuilder sb = new StringBuilder(128);
            for (Thread thread : allStackTraces.keySet()) {
                StackTraceElement[] stackTrace = thread.getStackTrace();
                if (stackTrace != null && stackTrace.length > 0) {
                    sb.append("*** Thread Name ");
                    sb.append(thread.getName());
                    sb.append(" Thread ID ");
                    sb.append(thread.getId());
                    sb.append(" ");
                    sb.append("(");
                    sb.append(thread.getState().toString());
                    sb.append(")");
                    sb.append(" ***\n");
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        sb.append(stackTraceElement.toString());
                        sb.append(" ");
                        sb.append(thread.getState().toString());
                        sb.append("\n");
                    }
                }
            }
            u2.l = sb.toString();
        }

        @Override // com.json.sb
        public void b() {
        }
    }

    class b implements Runnable {
        final /* synthetic */ Context a;
        final /* synthetic */ String b;

        b(Context context, String str) {
            this.a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String strP = u2.this.a.p(this.a);
                if (!TextUtils.isEmpty(strP)) {
                    u2.this.c = strP;
                }
                String strA = u2.this.a.a(this.a);
                if (!TextUtils.isEmpty(strA)) {
                    u2.this.f6657e = strA;
                }
                SharedPreferences.Editor editorEdit = this.a.getSharedPreferences("CRep", 0).edit();
                editorEdit.putString("String1", u2.this.c);
                editorEdit.putString(qc.m, this.b);
                editorEdit.apply();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(u2.d().h).openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty(b4.I, "application/json;charset=UTF-8");
                httpURLConnection.setRequestProperty("Accept", b4.J);
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setDoInput(true);
                Log.i("JSON", u2.this.b.toString());
                DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                dataOutputStream.writeBytes(u2.this.b.toString());
                dataOutputStream.flush();
                dataOutputStream.close();
                Log.i("STATUS", String.valueOf(httpURLConnection.getResponseCode()));
                Log.i("MSG", httpURLConnection.getResponseMessage());
                httpURLConnection.disconnect();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private static class d {
        static volatile u2 a = new u2(null);
    }

    private u2() {
        this.a = e9.h().c();
        this.b = new JSONObject();
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        this.f6659g = defaultUncaughtExceptionHandler;
        this.i = " ";
        this.h = "https://outcome-crash-report.supersonicads.com/reporter";
        Thread.setDefaultUncaughtExceptionHandler(new t2(defaultUncaughtExceptionHandler));
    }

    /* synthetic */ u2(a aVar) {
        this();
    }

    private String c(Context context) {
        ConnectivityManager connectivityManager;
        if (context == null || (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) == null) {
            return "none";
        }
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                if (networkCapabilities == null) {
                    return "none";
                }
                if (networkCapabilities.hasTransport(1)) {
                    return k2.b;
                }
                if (networkCapabilities.hasTransport(0)) {
                    return k2.f6181g;
                }
            } else {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("WIFI")) {
                        return k2.b;
                    }
                    if (activeNetworkInfo.getTypeName().equalsIgnoreCase("MOBILE")) {
                        return k2.f6181g;
                    }
                }
            }
            return "none";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "none";
        }
    }

    public static u2 d() {
        return d.a;
    }

    private void e(Context context, HashSet<String> hashSet) {
        String strC = c(a());
        if (strC.equals("none")) {
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("CRep", 0);
        String string = sharedPreferences.getString("String1", this.c);
        String string2 = sharedPreferences.getString(qc.m, this.f6656d);
        for (j4 j4Var : b3.b()) {
            String strB = j4Var.b();
            String strE = j4Var.e();
            String strD = j4Var.d();
            String packageName = context.getPackageName();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("crashDate", strB);
                jSONObject.put("stacktraceCrash", strE);
                jSONObject.put("crashType", strD);
                jSONObject.put("CrashReporterVersion", "1.0.5");
                jSONObject.put("SDKVersion", "7.7.0");
                jSONObject.put("deviceLanguage", this.a.b(context));
                jSONObject.put("appVersion", k0.b(context, packageName));
                jSONObject.put("deviceOSVersion", this.a.o());
                jSONObject.put("network", strC);
                jSONObject.put("deviceApiLevel", this.a.k());
                jSONObject.put("deviceModel", this.a.e());
                jSONObject.put(qc.p0, this.a.l());
                jSONObject.put(qc.h1, string);
                jSONObject.put("deviceOEM", this.a.g());
                jSONObject.put("systemProperties", System.getProperties());
                jSONObject.put("bundleId", packageName);
                jSONObject.put(qc.m, string2);
                if (!TextUtils.isEmpty(this.f6657e)) {
                    jSONObject.put("isLimitAdTrackingEnabled", Boolean.parseBoolean(this.f6657e));
                }
                JSONObject jSONObject2 = new JSONObject();
                if (hashSet != null && !hashSet.isEmpty()) {
                    for (String str : hashSet) {
                        try {
                            if (jSONObject.has(str)) {
                                jSONObject2.put(str, jSONObject.opt(str));
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                    jSONObject = jSONObject2;
                }
                this.b = jSONObject;
            } catch (Exception unused) {
            }
            if (this.b.length() == 0) {
                Log.d("ISCrashReport", " Is Empty");
            } else {
                new Thread(new c()).start();
                b3.a();
            }
        }
    }

    Context a() {
        return this.f6658f;
    }

    public void a(Context context, HashSet<String> hashSet, String str, String str2, boolean z, String str3, int i, boolean z2) {
        if (context != null) {
            Log.d("automation_log", "init ISCrashReporter");
            this.f6658f = context;
            if (!TextUtils.isEmpty(str2)) {
                this.i = str2;
            }
            if (!TextUtils.isEmpty(str)) {
                this.h = str;
            }
            this.f6656d = str3;
            if (z) {
                new com.json.a(i).a(z2).b(true).a(new a()).start();
            }
            e(context, hashSet);
            new Thread(new b(context, str3)).start();
        }
    }

    public String b() {
        return "1.0.5";
    }

    String j() {
        return this.i;
    }
}
