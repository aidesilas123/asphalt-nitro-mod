package com.gameloft.ingamebrowser;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.view.Display;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.net.MailTo;
import androidx.core.view.InputDeviceCompat;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.security.CertificateUtil;
import com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Encrypter;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.drive.DriveFile;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EncodingUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class InGameBrowser extends Activity implements View.OnTouchListener {
    private static InGameBrowser a = null;
    private static String b = "";
    private static String c = "from=FROM&op=OPERATOR&country=COUNTRY&lg=LANG&udid=UDID&androidid=ANDROID_ID&hdidfv=HDIDFV&game_ver=VERSION&d=DEVICE&f=FIRMWARE&anonymous=ANONYMOUS_ACCOUNT&fbid=FACEBOOK_ID&gliveusername=GLIVE_USERNAME&googleplaygames=GOOGLEID&clientid=CLIENT_ID&os=android&user_age=CURRENT_USER_AGE";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f2943d = "from=FROM&op=OPERATOR&country=COUNTRY&lg=LANG&udid=UDID&androidid=ANDROID_ID&hdidfv=HDIDFV&game_ver=VERSION&d=DEVICE&f=FIRMWARE&anonymous=ANONYMOUS_ACCOUNT&fbid=FACEBOOK_ID&gliveusername=GLIVE_USERNAME&googleplaygames=GOOGLEID&clientid=CLIENT_ID&os=android&game=GAME_NAME&user_age=CURRENT_USER_AGE";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f2944e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f2945f = "from=FROM&op=OPERATOR&ctg=FORUM&game_ver=VERSION&lg=LANG&country=COUNTRY&d=DEVICE&f=FIRMWARE&udid=UDID&hdidfv=HDIDFV&androidid=ANDROID_ID&clientid=CLIENT_ID&user_age=CURRENT_USER_AGE";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f2946g = "";
    private static String h = "";
    private static String i = "";
    public static int j = 0;
    public static String k = "";
    public static String l = "";
    public static String m = "";
    public static String n = "";
    public static String o = "1.8.0a";
    public static String p = "AGHM";
    public static int q = 0;
    private static boolean r = true;
    private static String s = "";
    private ImageButton N;
    private ImageButton O;
    private ImageButton P;
    private static AtomicBoolean t = new AtomicBoolean(false);
    private static UserGender u = UserGender.GENDER_UNKNOWN;
    public static String v = "2361:59882:1.8.0a:android:googleplay";
    private static boolean w = false;
    private static int x = -1;
    private static int y = -1;
    private static l z = null;
    private static String[] A = {"EN", "FR", "DE", "IT", "SP", "JP", "KR", "CN", "BR", "RU", "TR", "AR", "TH", "ID", "VI", "ZT"};
    public static boolean B = false;
    private static Thread C = null;
    private static Thread D = null;
    private static k E = null;
    private static boolean F = false;
    private static boolean G = false;
    private static String H = null;
    private static String I = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
    private static Message J = null;
    private static String K = null;
    private WebView L = null;
    private RelativeLayout M = null;
    private ImageButton Q = null;
    private int[] R = {R.string.IGB_LOADING_EN, R.string.IGB_LOADING_FR, R.string.IGB_LOADING_DE, R.string.IGB_LOADING_IT, R.string.IGB_LOADING_SP, R.string.IGB_LOADING_JP, R.string.IGB_LOADING_KR, R.string.IGB_LOADING_CN, R.string.IGB_LOADING_BR, R.string.IGB_LOADING_RU, R.string.IGB_LOADING_TR, R.string.IGB_LOADING_AR, R.string.IGB_LOADING_TH, R.string.IGB_LOADING_ID, R.string.IGB_LOADING_VI, R.string.IGB_LOADING_ZT};
    private int[] S = {R.string.IGB_NET_ERROR_EN, R.string.IGB_NET_ERROR_FR, R.string.IGB_NET_ERROR_DE, R.string.IGB_NET_ERROR_IT, R.string.IGB_NET_ERROR_SP, R.string.IGB_NET_ERROR_JP, R.string.IGB_NET_ERROR_KR, R.string.IGB_NET_ERROR_CN, R.string.IGB_NET_ERROR_BR, R.string.IGB_NET_ERROR_RU, R.string.IGB_NET_ERROR_TR, R.string.IGB_NET_ERROR_AR, R.string.IGB_NET_ERROR_TH, R.string.IGB_NET_ERROR_ID, R.string.IGB_NET_ERROR_VI, R.string.IGB_NET_ERROR_ZT};
    private int[] T = {R.string.IGB_OK_EN, R.string.IGB_OK_FR, R.string.IGB_OK_DE, R.string.IGB_OK_IT, R.string.IGB_OK_SP, R.string.IGB_OK_JP, R.string.IGB_OK_KR, R.string.IGB_OK_CN, R.string.IGB_OK_BR, R.string.IGB_OK_RU, R.string.IGB_OK_TR, R.string.IGB_OK_AR, R.string.IGB_OK_TH, R.string.IGB_OK_ID, R.string.IGB_OK_VI, R.string.IGB_OK_ZT};
    private String U = "NONE";
    private AbsoluteLayout V = null;
    private ImageView W = null;
    private InputDevice X = null;
    private float Y = 0.0f;
    private float Z = 0.0f;
    private float a0 = 0.0f;
    private float b0 = 0.0f;
    private float c0 = 0.0f;
    private float i0 = 0.0f;
    private int j0 = 0;
    private int k0 = 0;
    private boolean l0 = false;
    private ProgressDialog m0 = null;

    private enum UserGender {
        GENDER_UNKNOWN,
        GENDER_MALE,
        GENDER_FEMALE
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InGameBrowser.a.a();
            } catch (Exception unused) {
            }
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ View a;

        b(View view) {
            this.a = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.a.getWindowVisibleDisplayFrame(rect);
            int i = rect.bottom - rect.top;
            int height = this.a.getHeight();
            if (height == 0 || ((double) i) / ((double) height) > 0.8d) {
                InGameBrowser.this.l0 = false;
                InGameBrowser.this.W.setVisibility(0);
            } else {
                InGameBrowser.this.l0 = true;
                InGameBrowser.this.W.setVisibility(4);
            }
        }
    }

    class c extends Thread {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (InGameBrowser.this.V != null) {
                    try {
                        InGameBrowser.this.V.setVisibility(InGameBrowser.this.X != null ? 0 : 8);
                    } catch (Exception unused) {
                    }
                }
            }
        }

        c() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (InGameBrowser.B) {
                InGameBrowser inGameBrowser = InGameBrowser.this;
                inGameBrowser.X = inGameBrowser.b(InputDeviceCompat.SOURCE_JOYSTICK);
                InGameBrowser.this.runOnUiThread(new a());
                try {
                    Thread.sleep(10000L);
                } catch (Exception unused) {
                }
            }
        }
    }

    class d extends Thread {

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (InGameBrowser.this.W != null) {
                    float x = InGameBrowser.this.W.getX() + ((InGameBrowser.this.a0 + InGameBrowser.this.c0) * 10.0f);
                    float y = InGameBrowser.this.W.getY() + ((InGameBrowser.this.b0 + InGameBrowser.this.i0) * 10.0f);
                    InGameBrowser.this.W.setX(x);
                    InGameBrowser.this.W.setY(y);
                    if (x > InGameBrowser.this.j0 - (InGameBrowser.this.W.getWidth() / 2)) {
                        InGameBrowser.this.W.setX(InGameBrowser.this.j0 - (InGameBrowser.this.W.getWidth() / 2));
                    }
                    if (x < 0 - (InGameBrowser.this.W.getWidth() / 2)) {
                        InGameBrowser.this.W.setX(0 - (InGameBrowser.this.W.getWidth() / 2));
                    }
                    if (y > InGameBrowser.this.k0 - (InGameBrowser.this.W.getHeight() / 2)) {
                        InGameBrowser.this.W.setY(InGameBrowser.this.k0 - (InGameBrowser.this.W.getHeight() / 2));
                    }
                    if (y < 0 - (InGameBrowser.this.W.getHeight() / 2)) {
                        InGameBrowser.this.W.setY(0 - (InGameBrowser.this.W.getHeight() / 2));
                    }
                }
            }
        }

        d() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (InGameBrowser.B) {
                if (Math.abs(InGameBrowser.this.a0) >= 0.3d || Math.abs(InGameBrowser.this.b0) >= 0.3d || Math.abs(InGameBrowser.this.c0) >= 0.3d || Math.abs(InGameBrowser.this.i0) >= 0.3d) {
                    InGameBrowser.this.runOnUiThread(new a());
                }
                try {
                    Thread.sleep(30L);
                } catch (Exception unused) {
                }
            }
        }
    }

    class e extends Thread {
        e() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                InGameBrowser.saveJsonData(new JSONObject("" + InGameBrowser.postData(InGameBrowser.f2946g.replace("LAST_ID", InGameBrowser.getLastNewsIndex()), InGameBrowser.solveTemplate(InGameBrowser.c))), false);
            } catch (JSONException unused) {
            }
            Thread unused2 = InGameBrowser.C = null;
        }
    }

    class f extends Thread {
        f() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                InGameBrowser.saveJsonData(new JSONObject("" + InGameBrowser.postData(InGameBrowser.h.replace("LAST_ID", InGameBrowser.getLastNewsIndex()), InGameBrowser.solveTemplate(InGameBrowser.c))), true);
            } catch (JSONException unused) {
            }
            Thread unused2 = InGameBrowser.D = null;
        }
    }

    class g implements Runnable {
        final /* synthetic */ String a;

        g(String str) {
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                InGameBrowser.this.d();
                InGameBrowser inGameBrowser = InGameBrowser.this;
                inGameBrowser.m0 = ProgressDialog.show(inGameBrowser, null, this.a);
                InGameBrowser.this.m0.setCancelable(true);
            } catch (Exception unused) {
            }
        }
    }

    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (InGameBrowser.this.m0 != null) {
                    InGameBrowser.this.m0.dismiss();
                }
                InGameBrowser.this.m0 = null;
                System.gc();
            } catch (Exception unused) {
            }
        }
    }

    static /* synthetic */ class i {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[UserGender.values().length];
            a = iArr;
            try {
                iArr[UserGender.GENDER_MALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[UserGender.GENDER_FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[UserGender.GENDER_UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    class j extends WebViewClient {

        class a implements Runnable {
            final /* synthetic */ WebView a;

            /* JADX INFO: renamed from: com.gameloft.ingamebrowser.InGameBrowser$j$a$a, reason: collision with other inner class name */
            class DialogInterfaceOnCancelListenerC0220a implements DialogInterface.OnCancelListener {
                DialogInterfaceOnCancelListenerC0220a() {
                }

                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    String unused = InGameBrowser.I = "LoadPageFailed";
                    InGameBrowser.this.a();
                }
            }

            class b implements DialogInterface.OnClickListener {
                b() {
                }

                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    String unused = InGameBrowser.I = "LoadPageFailed";
                    InGameBrowser.this.a();
                }
            }

            a(WebView webView) {
                this.a = webView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.a.setVisibility(4);
                try {
                    AlertDialog.Builder builder = new AlertDialog.Builder(InGameBrowser.this);
                    InGameBrowser inGameBrowser = InGameBrowser.this;
                    AlertDialog.Builder onCancelListener = builder.setPositiveButton(inGameBrowser.getString(inGameBrowser.T[InGameBrowser.j]), new b()).setOnCancelListener(new DialogInterfaceOnCancelListenerC0220a());
                    InGameBrowser inGameBrowser2 = InGameBrowser.this;
                    AlertDialog alertDialogCreate = onCancelListener.setMessage(inGameBrowser2.getString(inGameBrowser2.S[InGameBrowser.j])).create();
                    alertDialogCreate.setCanceledOnTouchOutside(false);
                    alertDialogCreate.show();
                } catch (Exception unused) {
                }
            }
        }

        j() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            InGameBrowser.this.d();
            try {
                if (TextUtils.isEmpty(InGameBrowser.K) || str.startsWith(InGameBrowser.H)) {
                    return;
                }
                webView.loadUrl("javascript:" + InGameBrowser.K);
            } catch (Exception unused) {
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (!InGameBrowser.F || !str.startsWith(InGameBrowser.H)) {
                InGameBrowser.this.i();
            } else {
                InGameBrowser.ModalRespond(str.replace(InGameBrowser.H, ""));
                InGameBrowser.this.a();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            InGameBrowser.this.runOnUiThread(new a(webView));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (InGameBrowser.F) {
                if (!str.startsWith(InGameBrowser.H)) {
                    return false;
                }
                InGameBrowser.ModalRespond(str.replace(InGameBrowser.H, ""));
                InGameBrowser.this.a();
                return true;
            }
            if (str.startsWith("exit:checkreward:")) {
                String unused = InGameBrowser.s = str.replace("exit:checkreward:", "");
                InGameBrowser.this.a();
                return true;
            }
            if (str.startsWith("checkreward:")) {
                String unused2 = InGameBrowser.s = str.replace("checkreward:", "");
                return true;
            }
            if (str.startsWith("play:")) {
                try {
                    Intent launchIntentForPackage = InGameBrowser.this.getPackageManager().getLaunchIntentForPackage(str.replace("play:", "").split("[?]")[0]);
                    launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
                    InGameBrowser.this.startActivity(launchIntentForPackage);
                } catch (Exception unused3) {
                }
                return true;
            }
            if (str.startsWith(MailTo.MAILTO_SCHEME)) {
                try {
                    InGameBrowser.this.startActivity(Intent.parseUri(str, 1));
                } catch (Exception unused4) {
                }
                return true;
            }
            if (str.startsWith("goto:")) {
                return true;
            }
            if (str.equals("exit:") || str.equals("unavailable:")) {
                InGameBrowser.this.a();
                return true;
            }
            if (str.startsWith("market://")) {
                InGameBrowser.this.f(str);
                return true;
            }
            if (str.startsWith("amzn://")) {
                InGameBrowser.this.e(str);
                return true;
            }
            if (str.contains("www.amazon.com")) {
                InGameBrowser.this.e(str.replaceAll("http://", "amzn://").replaceAll("https://", "amzn://"));
                return true;
            }
            if (str.startsWith("skt:")) {
                InGameBrowser.this.g(str.replaceAll("skt:", ""));
                return true;
            }
            if (!str.startsWith("link:")) {
                if (!str.contains("/redir/") || !str.contains("type=SKTMARKET")) {
                    return false;
                }
                webView.loadUrl(str.replaceAll("&pp=1", ""));
                return true;
            }
            String strReplaceAll = str.replaceAll("link:", "");
            if (strReplaceAll.contains("www.amazon.com")) {
                InGameBrowser.this.e(strReplaceAll.replaceAll("http://", "amzn://").replaceAll("https://", "amzn://"));
                return true;
            }
            InGameBrowser.openBrowser(strReplaceAll);
            return true;
        }
    }

    public interface k {
        void a(String str, String str2);
    }

    public interface l {
        void a(int i);
    }

    class m extends WebView {
        public m(Context context) {
            super(context);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0028  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public boolean dispatchKeyEventPreIme(android.view.KeyEvent r3) {
            /*
                r2 = this;
                int r0 = r3.getKeyCode()
                r1 = 96
                if (r0 == r1) goto L28
                r1 = 97
                if (r0 == r1) goto L28
                r1 = 99
                if (r0 == r1) goto L28
                r1 = 100
                if (r0 == r1) goto L28
                r1 = 102(0x66, float:1.43E-43)
                if (r0 == r1) goto L28
                r1 = 103(0x67, float:1.44E-43)
                if (r0 == r1) goto L28
                r1 = 108(0x6c, float:1.51E-43)
                if (r0 == r1) goto L28
                r1 = 109(0x6d, float:1.53E-43)
                if (r0 == r1) goto L28
                switch(r0) {
                    case 19: goto L28;
                    case 20: goto L28;
                    case 21: goto L28;
                    case 22: goto L28;
                    default: goto L27;
                }
            L27:
                goto L48
            L28:
                int r0 = r3.getAction()
                if (r0 != 0) goto L38
                com.gameloft.ingamebrowser.InGameBrowser r0 = com.gameloft.ingamebrowser.InGameBrowser.this
                int r1 = r3.getKeyCode()
                r0.onKeyDown(r1, r3)
                goto L48
            L38:
                int r0 = r3.getAction()
                r1 = 1
                if (r0 != r1) goto L48
                com.gameloft.ingamebrowser.InGameBrowser r0 = com.gameloft.ingamebrowser.InGameBrowser.this
                int r1 = r3.getKeyCode()
                r0.onKeyUp(r1, r3)
            L48:
                boolean r3 = super.dispatchKeyEventPreIme(r3)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.gameloft.ingamebrowser.InGameBrowser.m.dispatchKeyEventPreIme(android.view.KeyEvent):boolean");
        }
    }

    public static native void InGameBrowserCheckRewardCallback(String str, boolean z2);

    public static native void InGameBrowserExitCallback();

    public static native void InGameBrowserExternalPageFailedToOpenCallback();

    private static void ModalModeFinish() {
        if (F && !G) {
            ModalRespond("modalwebviewerror:" + I);
        }
        E = null;
        F = false;
        G = false;
        H = null;
        I = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        J = null;
        K = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ModalRespond(String str) {
        k kVar = E;
        if (kVar != null) {
            kVar.a(H, str);
            G = true;
        }
    }

    public static void QuitIGB() {
        try {
            if (a != null && B) {
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    a.a();
                } else {
                    a.M.post(new a());
                    while (F) {
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void RedirectNewVersionScreen() {
        ShowBrowserWithCtg(f2944e, f2943d, "UPDATE");
    }

    public static void RedirectRateThisApp() {
        ShowBrowserWithCtg(f2944e, f2943d, "GAME_REVIEW");
    }

    public static void SetAnonymousAccount(String str) {
        k = str;
    }

    public static void SetBaseUrl(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        b = str + "redir/ingamebrowser.php";
        f2944e = str + "redir/?";
        f2946g = str + "redir/ingamenews.php?action=checkNews&last-id=LAST_ID";
        h = str + "redir/ingamenews.php?action=saveNews&last-id=LAST_ID";
        i = str + "redir/ingamenews.php?action=displayNews";
        w = true;
    }

    public static void SetFacebookAccount(String str) {
        l = str;
    }

    public static void SetGLLiveAccount(String str) {
        m = str;
    }

    public static void SetGameLanguage(int i2) {
        j = i2;
    }

    public static void SetGameLanguage(String str) {
        int iIndexOf = Arrays.asList(A).indexOf(str);
        if (iIndexOf != -1) {
            j = iIndexOf;
        }
    }

    public static void SetGoogleAccount(String str) {
        n = str;
    }

    public static void SetParameters(String str, String str2, String str3, String str4, String str5, String str6, int i2) {
        p = str;
        o = str2;
        v = str3;
        k = str5;
        SetGameLanguage(str6);
        SetBaseUrl(str4);
        SetUserAge(i2);
    }

    public static void SetUserAge(int i2) {
        if (i2 < 13) {
            q = 0;
        } else {
            q = i2;
        }
    }

    public static void SetUserGender(int i2) {
        try {
            u = UserGender.values()[i2];
        } catch (ArrayIndexOutOfBoundsException unused) {
            u = UserGender.GENDER_UNKNOWN;
        }
    }

    private static void ShowBrowserWithCtg(String str, String str2, String str3) {
        String str4 = str + "&ctg=" + str3 + "&data=" + Encrypter.crypt(solveTemplate(str2)) + "&enc=1";
        if (str3.contains("UPDATE") || str3.contains("GAME_REVIEW")) {
            openBrowser(str4);
        } else if (t.compareAndSet(false, true)) {
            showInGameBrowserWithUrl(str4);
        }
    }

    public static void ShowEULA() {
        ShowBrowserWithCtg(f2944e, c, "EULA");
    }

    public static void ShowInModalMode(String str, k kVar, Message message) {
        try {
            JSONObject jSONObject = new JSONObject(URLDecoder.decode(str));
            String strBase64decode = base64decode(jSONObject.optString("link", ""));
            String strBase64decode2 = base64decode(jSONObject.optString("exitURL", ""));
            H = strBase64decode2;
            if (TextUtils.isEmpty(strBase64decode2) || TextUtils.isEmpty(strBase64decode)) {
                throw new Exception("ParseRequestError");
            }
            if (!t.compareAndSet(false, true)) {
                throw new Exception("AlreadyInUse");
            }
            E = kVar;
            F = true;
            G = false;
            J = message;
            K = base64decode(jSONObject.optString("onModalWebviewLoad", ""));
            showInGameBrowserWithUrl(strBase64decode, false);
        } catch (Exception e2) {
            if (TextUtils.isEmpty(H)) {
                H = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
            }
            kVar.a(H, "modalwebviewerror:" + e2.getMessage());
            t.set(false);
        }
    }

    public static void ShowPrivacyPolicy() {
        ShowBrowserWithCtg(f2944e, c, "PRIVACY");
    }

    public static void ShowTermsOfUse() {
        ShowBrowserWithCtg(f2944e, c, "TERMS");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        a = null;
        if (B) {
            B = false;
            finish();
            processReward(s);
            s = "";
            r = true;
            ModalModeFinish();
            t.set(false);
            InGameBrowserExitCallback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InputDevice b(int i2) {
        for (int i3 : InputDevice.getDeviceIds()) {
            InputDevice device = InputDevice.getDevice(i3);
            if ((device.getSources() & InputDeviceCompat.SOURCE_ANY & i2) != 0 && !device.getName().contains("ats_input")) {
                if (Build.VERSION.SDK_INT <= 15 || !device.getDescriptor().contains("ats_input")) {
                }
                return device;
            }
        }
        return null;
    }

    private static String base64decode(String str) {
        try {
            return new String(Base64.decode(str, 0), C.UTF8_NAME);
        } catch (Exception unused) {
            return "";
        }
    }

    private void c(int i2) {
        switch (i2) {
            case R.id.ingamebrowser_backbutton /* 2131362365 */:
                this.L.goBack();
                break;
            case R.id.ingamebrowser_closebutton /* 2131362366 */:
                I = "UserCancel";
                a();
                break;
            case R.id.ingamebrowser_forwardbutton /* 2131362367 */:
                this.L.goForward();
                break;
            case R.id.ingamebrowser_refreshbutton /* 2131362369 */:
                this.L.reload();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        runOnUiThread(new h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(String str) {
        if (!openIntent(str) && str.contains("www.amazon.com")) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replaceAll("amzn://", "http://")));
                intent.setFlags(DriveFile.MODE_READ_ONLY);
                startActivity(intent);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(String str) {
        if (openIntent(str)) {
            return;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str.replaceAll("market://details?", "https://play.google.com/store/apps/details?").replaceAll("market://search?", "https://play.google.com/store/search?")));
            intent.setFlags(DriveFile.MODE_READ_ONLY);
            startActivity(intent);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str) {
        Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage("com.skt.skaf.A000Z00040");
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(DriveFile.MODE_WRITE_ONLY);
            launchIntentForPackage.setClassName("com.skt.skaf.A000Z00040", "com.skt.skaf.A000Z00040.A000Z00040");
            launchIntentForPackage.setAction("COLLAB_ACTION");
            launchIntentForPackage.putExtra("com.skt.skaf.COL.URI", ("PRODUCT_VIEW/" + str + "/0").getBytes());
            launchIntentForPackage.putExtra("com.skt.skaf.COL.REQUESTER", "A000Z00040");
        } else {
            launchIntentForPackage = new Intent("android.intent.action.VIEW", Uri.parse("http://tsto.re/" + str));
            launchIntentForPackage.setFlags(DriveFile.MODE_READ_ONLY);
        }
        startActivity(launchIntentForPackage);
    }

    private static String getFacebookPageLink() {
        return f2944e + "&t=facebook&data=" + Encrypter.crypt(solveTemplate(c + "&game=GAME_NAME")) + "&enc=1";
    }

    public static String getFacebookShareLink() {
        return f2944e + "&ctg=FBOOK&data=" + Encrypter.crypt(solveTemplate(c + "&game=GAME_NAME")) + "&enc=1";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getLastNewsIndex() {
        try {
            return SUtils.getApplicationContext().getSharedPreferences("InGameBrowser_lastNewsIndex", 0).getString("LAST_NEWS_INDEX", UniquePlacementId.NO_ID);
        } catch (Exception unused) {
            return UniquePlacementId.NO_ID;
        }
    }

    public static int getUnreadNewsNumber() {
        return x;
    }

    private void h(String str) {
        runOnUiThread(new g(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        h(getString(this.R[j]));
    }

    private void j() {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jUptimeMillis2 = SystemClock.uptimeMillis() + 100;
            float x2 = this.W.getX() + (this.W.getWidth() / 2);
            float y2 = this.W.getY() + (this.W.getHeight() / 2);
            this.M.dispatchTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 0, x2, y2, 0));
            this.M.dispatchTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis2, 1, x2, y2, 0));
        } catch (Exception unused) {
        }
    }

    public static native void nativeUnreadNewsChangedCallback(int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static void openBrowser(String str) {
        openIntent(str);
    }

    private static boolean openIntent(String str) {
        Intent intent;
        try {
            intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setFlags(DriveFile.MODE_READ_ONLY);
        } catch (Exception unused) {
        }
        if (SUtils.getActivity().getPackageManager().queryIntentActivities(intent, 65536).size() != 0) {
            SUtils.getActivity().startActivity(intent);
            return true;
        }
        InGameBrowserExternalPageFailedToOpenCallback();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String postData(String str, String str2) {
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        HttpPost httpPost = new HttpPost(str);
        try {
            ArrayList arrayList = new ArrayList(2);
            for (String str3 : str2.split("[&]")) {
                int iIndexOf = str3.indexOf(o2.i.b);
                if (iIndexOf != -1 && iIndexOf != str3.length() - 1) {
                    arrayList.add(new BasicNameValuePair(str3.substring(0, iIndexOf), str3.substring(iIndexOf + 1)));
                } else if (iIndexOf == str3.length() - 1) {
                    arrayList.add(new BasicNameValuePair(str3.substring(0, iIndexOf), ""));
                }
            }
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(defaultHttpClient.execute(httpPost).getEntity().getContent()));
            StringBuffer stringBuffer = new StringBuffer("");
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
                stringBuffer.append(line + "\n");
            }
        } catch (Exception unused) {
            return null;
        }
    }

    private static void processReward(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String[] strArrSplit = str.split(CertificateUtil.DELIMITER);
            if (strArrSplit.length == 1) {
                InGameBrowserCheckRewardCallback(strArrSplit[0], true);
            } else if (strArrSplit.length == 3 && strArrSplit[1].equals("delivered")) {
                InGameBrowserCheckRewardCallback(strArrSplit[0], strArrSplit[2].equals("1"));
            }
        } catch (Exception unused) {
        }
    }

    public static void refreshUnreadNewsNumber() {
        if (C != null) {
            return;
        }
        e eVar = new e();
        C = eVar;
        eVar.start();
    }

    private static void refreshUnreadNewsNumberInternal() {
        if (D != null) {
            return;
        }
        f fVar = new f();
        D = fVar;
        fVar.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveJsonData(JSONObject jSONObject, boolean z2) {
        if (jSONObject.optBoolean("success", false)) {
            if (z2) {
                saveLastNewsIndex(jSONObject.optString("current-id", UniquePlacementId.NO_ID));
            }
            int iOptInt = jSONObject.optInt("unread", -1);
            x = iOptInt;
            try {
                nativeUnreadNewsChangedCallback(iOptInt);
            } catch (UnsatisfiedLinkError unused) {
            }
            l lVar = z;
            if (lVar != null) {
                lVar.a(x);
            }
        }
    }

    private static void saveLastNewsIndex(String str) {
        try {
            SharedPreferences.Editor editorEdit = SUtils.getApplicationContext().getSharedPreferences("InGameBrowser_lastNewsIndex", 0).edit();
            editorEdit.putString("LAST_NEWS_INDEX", str);
            editorEdit.commit();
        } catch (Exception unused) {
        }
    }

    public static void setUnreadNewsChangedCallback(l lVar) {
        z = lVar;
    }

    public static void showCustomerCare() {
        if (t.compareAndSet(false, true)) {
            try {
                openBrowser(b + "?ctg=SUPPORT&data=" + Encrypter.crypt(solveTemplate(c)) + "&enc=1");
                t.set(false);
            } catch (Exception unused) {
                t.set(false);
            }
        }
    }

    public static void showCustomerCareWithBANType(int i2) {
        if (i2 == -1) {
            openBrowser(f2944e + "&ctg=BANNED&data=" + Encrypter.crypt(solveTemplate(c)) + "&enc=1");
            t.set(false);
            return;
        }
        try {
            if (t.compareAndSet(false, true)) {
                String strSolveTemplate = solveTemplate(c);
                String str = "SUPPORT";
                if (i2 >= 0) {
                    strSolveTemplate = strSolveTemplate + "&extra_14=" + i2;
                    str = "BANNED";
                }
                openBrowser(b + "?ctg=" + str + "&data=" + Encrypter.crypt(strSolveTemplate) + "&enc=1");
                t.set(false);
            }
        } catch (Exception unused) {
            t.set(false);
        }
    }

    public static void showFacebookPage(boolean z2) {
        String facebookPageLink = getFacebookPageLink();
        if (z2) {
            openBrowser(facebookPageLink);
        } else if (t.compareAndSet(false, true)) {
            showInGameBrowserWithUrl(facebookPageLink);
        }
    }

    public static void showFacebookShare(boolean z2) {
        String facebookShareLink = getFacebookShareLink();
        if (z2) {
            openBrowser(facebookShareLink);
        } else if (t.compareAndSet(false, true)) {
            showInGameBrowserWithUrl(facebookShareLink);
        }
    }

    public static void showForum() {
        if (t.compareAndSet(false, true)) {
            openBrowser(f2944e + "data=" + Encrypter.crypt(solveTemplate(f2945f)) + "&enc=1");
            t.set(false);
        }
    }

    public static void showInGameBrowserWithUrl(String str) {
        showInGameBrowserWithUrl(str, true);
    }

    public static void showInGameBrowserWithUrl(String str, boolean z2) {
        try {
            Intent intent = new Intent(SUtils.getActivity(), (Class<?>) InGameBrowser.class);
            intent.putExtra(InneractiveInternalBrowserActivity.URL_EXTRA, str);
            r = z2;
            SUtils.getActivity().startActivity(intent);
        } catch (Exception unused) {
            r = true;
            t.set(false);
        }
    }

    public static void showNews() {
        if (t.compareAndSet(false, true)) {
            showInGameBrowserWithUrl("news");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String solveTemplate(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        int i2 = j;
        if (i2 < 0 || i2 >= A.length) {
            j = 0;
        }
        String strReplaceAll = str.replaceAll("FROM", p).replaceAll("OPERATOR", "ANMP").replaceAll("COUNTRY", Locale.getDefault().getCountry()).replaceAll("LANG", A[j]).replaceAll("UDID", Device.getSerial()).replaceAll("ANDROID_ID", Device.getAndroidId()).replaceAll("HDIDFV", Device.getHDIDFV()).replaceAll("VERSION", o).replaceAll("DEVICE", Build.MANUFACTURER + "_" + Build.MODEL).replaceAll("FIRMWARE", Build.VERSION.RELEASE).replaceAll("ANONYMOUS_ACCOUNT", k).replaceAll("FACEBOOK_ID", l).replaceAll("GLIVE_USERNAME", m).replaceAll("GOOGLEID", n).replaceAll("GAME_NAME", p).replaceAll("CLIENT_ID", v).replaceAll("CURRENT_USER_AGE", Integer.toString(q)).replaceAll(" ", "");
        int i3 = i.a[u.ordinal()];
        if (i3 == 1) {
            strReplaceAll = strReplaceAll + "&gender=male";
        } else if (i3 == 2) {
            strReplaceAll = strReplaceAll + "&gender=female";
        } else if (i3 == 3) {
            strReplaceAll = strReplaceAll + "&gender=";
        }
        return (strReplaceAll + "&can_open_external_pages=1") + "&google_optout=" + Device.getGoogleAdIdStatus();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.L.canGoBack()) {
            this.L.goBack();
        } else {
            I = "UserCancel";
            a();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a = this;
        if (!w) {
            I = "NotItitialized";
            a();
            return;
        }
        B = true;
        setContentView(R.layout.activity_in_game_browser);
        Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
        this.j0 = defaultDisplay.getWidth();
        this.k0 = defaultDisplay.getHeight();
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.ingamebrowser_webview);
        m mVar = new m(this);
        this.L = mVar;
        mVar.getSettings().setJavaScriptEnabled(true);
        this.L.getSettings().setLoadWithOverviewMode(true);
        this.L.getSettings().setUseWideViewPort(false);
        this.L.getSettings().setBuiltInZoomControls(false);
        this.L.getSettings().setSupportZoom(true);
        this.L.setWebViewClient(new j());
        this.L.setWebChromeClient(new WebChromeClient());
        if (Build.VERSION.SDK_INT >= 21) {
            this.L.getSettings().setMixedContentMode(0);
        }
        relativeLayout.addView(this.L, -1, -1);
        this.N = (ImageButton) findViewById(R.id.ingamebrowser_backbutton);
        this.O = (ImageButton) findViewById(R.id.ingamebrowser_forwardbutton);
        this.P = (ImageButton) findViewById(R.id.ingamebrowser_refreshbutton);
        this.Q = (ImageButton) findViewById(R.id.ingamebrowser_closebutton);
        this.N.setOnTouchListener(this);
        this.O.setOnTouchListener(this);
        this.P.setOnTouchListener(this);
        this.Q.setOnTouchListener(this);
        String stringExtra = getIntent().getStringExtra(InneractiveInternalBrowserActivity.URL_EXTRA);
        String strSolveTemplate = solveTemplate(c);
        Message message = J;
        if (message != null) {
            try {
                ((WebView.WebViewTransport) message.obj).setWebView(this.L);
                J.sendToTarget();
            } catch (Exception unused) {
                I = "NavigationFailed";
                a();
            }
        } else if (stringExtra == null) {
            int intExtra = getIntent().getIntExtra("ban_type", -1);
            if (intExtra >= 0) {
                strSolveTemplate = strSolveTemplate + "&extra_14=" + intExtra;
                this.U = "BANNED";
            } else {
                this.U = "SUPPORT";
            }
            this.L.postUrl(b + "?ctg=" + this.U, EncodingUtils.getBytes(strSolveTemplate, "BASE64"));
        } else if (stringExtra.equals("forum")) {
            this.U = "FORUM";
            this.L.loadUrl(f2944e + "data=" + Encrypter.crypt(solveTemplate(f2945f)) + "&enc=1");
        } else if (stringExtra.equals("news")) {
            this.U = "NEWS";
            this.L.postUrl(i, EncodingUtils.getBytes(strSolveTemplate, "BASE64"));
        } else if (r) {
            this.L.postUrl(stringExtra, EncodingUtils.getBytes(strSolveTemplate, "BASE64"));
        } else {
            this.L.loadUrl(stringExtra);
        }
        this.M = (RelativeLayout) findViewById(R.id.ingamebrowser_mview);
        View decorView = getWindow().getDecorView();
        decorView.getViewTreeObserver().addOnGlobalLayoutListener(new b(decorView));
        AbsoluteLayout absoluteLayout = new AbsoluteLayout(this);
        this.V = absoluteLayout;
        absoluteLayout.setBackgroundColor(0);
        this.M.addView(this.V, -1, -1);
        ImageView imageView = new ImageView(this);
        this.W = imageView;
        imageView.setImageResource(R.drawable.content_cursor);
        this.V.addView(this.W, new AbsoluteLayout.LayoutParams(-2, -2, this.j0 / 2, this.k0 / 2));
        this.V.setVisibility(8);
        InputDevice inputDeviceB = b(InputDeviceCompat.SOURCE_JOYSTICK);
        this.X = inputDeviceB;
        if (inputDeviceB != null) {
            this.V.setVisibility(0);
        }
        new c().start();
        new d().start();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.U.equals("NEWS")) {
            refreshUnreadNewsNumberInternal();
        }
        a();
        WebView webView = this.L;
        if (webView != null) {
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    webView.onPause();
                }
                this.L.loadUrl(AndroidWebViewClient.BLANK_PAGE);
                this.L.destroyDrawingCache();
                this.L.destroy();
                this.L = null;
            } catch (Exception unused) {
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        WebView webView;
        if (this.l0) {
            return super.onGenericMotionEvent(motionEvent);
        }
        this.a0 = motionEvent.getAxisValue(0);
        this.b0 = motionEvent.getAxisValue(1);
        this.c0 = motionEvent.getAxisValue(11);
        this.i0 = motionEvent.getAxisValue(14);
        this.Y = motionEvent.getAxisValue(15);
        this.Z = motionEvent.getAxisValue(16);
        float axisValue = motionEvent.getAxisValue(23);
        float axisValue2 = motionEvent.getAxisValue(22);
        if (axisValue >= 0.7d || axisValue2 >= 0.7d) {
            j();
        }
        if (this.Y != 0.0f || this.Z != 0.0f) {
            this.a0 = 0.0f;
            this.b0 = 0.0f;
            this.c0 = 0.0f;
            this.i0 = 0.0f;
        }
        float f2 = this.Z;
        if (f2 != 0.0f && (webView = this.L) != null) {
            if (f2 == 1.0d) {
                webView.pageDown(false);
            } else {
                webView.pageUp(false);
            }
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (!this.l0) {
            if (i2 == 96 || i2 == 102 || i2 == 103) {
                j();
                return true;
            }
            switch (i2) {
                case 19:
                    float y2 = this.W.getY() - 10.0f;
                    if (y2 < 0.0f) {
                        this.L.dispatchKeyEvent(new KeyEvent(0, 92));
                        this.L.dispatchKeyEvent(new KeyEvent(1, 92));
                    } else {
                        this.W.setY(y2);
                    }
                    break;
                case 20:
                    float y3 = this.W.getY() + 10.0f;
                    if (y3 > this.k0 - this.W.getHeight()) {
                        this.L.dispatchKeyEvent(new KeyEvent(0, 93));
                        this.L.dispatchKeyEvent(new KeyEvent(1, 93));
                    } else {
                        this.W.setY(y3);
                    }
                    break;
                case 21:
                    float x2 = this.W.getX() - 10.0f;
                    if (x2 >= 0.0f) {
                        this.W.setX(x2);
                    }
                    break;
                case 22:
                    float x3 = this.W.getX() + 10.0f;
                    if (x3 <= this.j0 - this.W.getWidth()) {
                        this.W.setX(x3);
                    }
                    break;
            }
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (this.l0) {
            if (i2 != 97) {
                return super.onKeyUp(i2, keyEvent);
            }
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            WebView webView = this.L;
            if (webView != null && inputMethodManager.hideSoftInputFromWindow(webView.getWindowToken(), 0)) {
                return true;
            }
            onBackPressed();
            return true;
        }
        if (i2 != 4) {
            if (i2 != 96) {
                if (i2 != 97) {
                    if (i2 != 99 && i2 != 100 && i2 != 102 && i2 != 103 && i2 != 108 && i2 != 109) {
                        return super.onKeyUp(i2, keyEvent);
                    }
                }
            }
            InputDevice inputDevice = this.X;
            if (inputDevice == null || inputDevice != keyEvent.getDevice()) {
                return super.onKeyUp(i2, keyEvent);
            }
            return true;
        }
        InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService("input_method");
        WebView webView2 = this.L;
        if (webView2 != null && inputMethodManager2.hideSoftInputFromWindow(webView2.getWindowToken(), 0)) {
            return true;
        }
        onBackPressed();
        return true;
    }

    @Override // android.app.Activity
    public void onPause() {
        WebView webView = this.L;
        if (webView != null && Build.VERSION.SDK_INT >= 11) {
            webView.onPause();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        WebView webView = this.L;
        if (webView == null || Build.VERSION.SDK_INT < 11) {
            return;
        }
        webView.onResume();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        int action = motionEvent.getAction();
        if (action == 0) {
            ((ImageButton) view).setBackgroundColor(Color.parseColor("#a3a3a3"));
            return true;
        }
        if (action == 1) {
            if (x2 >= 0.0f && x2 <= view.getWidth() && y2 >= 0.0f && y2 <= view.getHeight()) {
                c(view.getId());
            }
            ((ImageButton) view).setBackgroundColor(0);
            return true;
        }
        if (action != 2) {
            return false;
        }
        if (x2 < 0.0f || x2 > view.getWidth() || y2 < 0.0f || y2 > view.getHeight()) {
            ((ImageButton) view).setBackgroundColor(0);
        } else {
            ((ImageButton) view).setBackgroundColor(Color.parseColor("#a3a3a3"));
        }
        return true;
    }
}
