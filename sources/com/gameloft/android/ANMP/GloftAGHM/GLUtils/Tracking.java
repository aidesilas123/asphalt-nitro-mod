package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.os.Build;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Locale;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class Tracking {
    private static String a = "AGHM";
    private static String b = "1.8.0a";
    private static String c = "2.1";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f2799d = 1500;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f2800e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2801f = "https://201205igp.gameloft.com/redir/hdloading.php?game=#GAME#&country=#COUNTRY#&lg=#LANG#&ver=#IGP_VERSION#&device=#DEVICE#&f=#FIRMWARE#&hdidfv=#HDIDFV#&g_ver=#VERSION#&line_number=#LINE_NUMBER#&google_adid=#GOOGLE_ADID#&google_optout=#GOOGLE_OPTOUT#";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static String f2802g;
    static String h;
    static String i;
    static String j;
    static String k;
    static String l;
    static String m;
    private static final ReentrantLock n = new ReentrantLock();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ int b;

        a(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            Tracking.n.lock();
            try {
                Thread.sleep(250L);
                String str = Tracking.buildURL(Tracking.f2801f) + this.a;
                if (this.b == 2) {
                    if (!Tracking.testFlags(17)) {
                        Tracking.clearFlags();
                        Tracking.n.unlock();
                        return;
                    } else {
                        Tracking.clearFlags();
                        str = str + "&check=2";
                    }
                }
                String string = str + "&enc=1";
                try {
                    URL url = new URL(string);
                    string = new URI(url.getProtocol(), url.getUserInfo(), url.getHost(), url.getPort(), url.getPath(), url.getQuery(), url.getRef()).toURL().toString();
                } catch (Exception unused) {
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(string).openConnection();
                httpURLConnection.setConnectTimeout(Tracking.f2799d);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setRequestProperty("Connection", "close");
                httpURLConnection.getResponseCode();
                int i = this.b;
                if ((i == 1 || i == 3) && !string.contains("action=InstallReferrer")) {
                    SUtils.setPreference("trc_SentLI", Boolean.TRUE, Tracking.a);
                    SUtils.setPreference("trc_LI_ver", Tracking.b, Tracking.a);
                }
            } catch (UnknownHostException | Exception unused2) {
            }
            Tracking.n.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildURL(String str) {
        String strCrypt = Encrypter.crypt(m);
        Locale locale = Locale.getDefault();
        i = locale.getLanguage();
        j = locale.getCountry();
        int googleAdIdStatus = Device.getGoogleAdIdStatus();
        if (googleAdIdStatus != 0) {
            googleAdIdStatus = 1;
        }
        return str.replace("#GAME#", a).replace("#COUNTRY#", j).replace("#LANG#", i).replace("#VERSION#", b).replace("#DEVICE#", k).replace("#FIRMWARE#", l).replace("#HDIDFV#", f2802g).replace("#IGP_VERSION#", c).replace("#LINE_NUMBER#", strCrypt).replace("#GOOGLE_ADID#", "").replace("#GOOGLE_OPTOUT#", Integer.toString(googleAdIdStatus)).replace(" ", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void clearFlags() {
        f2800e = 0;
    }

    public static void init() {
        f2802g = Device.getHDIDFV();
        h = "null";
        k = Build.MANUFACTURER + "_" + Build.MODEL;
        l = Build.VERSION.RELEASE;
        m = Device.getLineNumber();
        Device.initGoogleAdId();
    }

    public static void onLaunchGame() {
        onLaunchGame(2, "");
    }

    public static void onLaunchGame(int i2) {
        onLaunchGame(i2, "");
    }

    public static void onLaunchGame(int i2, String str) {
        try {
            new Thread(new a(str, i2)).start();
        } catch (Exception unused) {
        }
    }

    public static void setFlag(int i2) {
        f2800e = i2 | f2800e;
    }

    public static boolean testFlags(int i2) {
        return (f2800e & i2) == i2;
    }
}
