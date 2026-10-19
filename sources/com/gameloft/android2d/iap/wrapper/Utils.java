package com.gameloft.android2d.iap.wrapper;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Debug;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.internal.security.CertificateUtil;
import com.json.b4;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.o2;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg.DefaultOggSeeker;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import dalvik.system.PathClassLoader;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Vector;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class Utils {
    public static com.gameloft.android2d.iap.wrapper.b A = null;
    public static String[] E = null;
    public static boolean a = true;
    private static Context b = null;
    public static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f2918d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static String f2919e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static String f2920f = "";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f2921g = null;
    public static long h = 0;
    public static String i = "glot_log.txt";
    public static String j = null;
    public static String k = null;
    public static String l = null;
    public static String m = null;
    public static String n = null;
    public static String o = "";
    public static String p = "";
    public static String q = "";
    public static String r = "";
    public static final String[] s = {"EN", "DE", "FR", "IT", "SP", "BR", "PT", "JP", "CN", "KR", "RU", "TR", "PL", "CZ", "NL", "TH", "VI", "AR", "ID", "ZT", "SC", "ZH", "ES_LATAM"};
    public static int t = 0;
    public static Hashtable u = new Hashtable();
    public static double v = -1.0d;
    public static int w = -1;
    public static int x = -1;
    public static int y = -1;
    public static int z = -1;
    private static String B = null;
    private static String C = null;
    public static int D = 100;
    public static String F = getValue();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Utils.f2918d = System.getProperty("http.agent").trim();
            } catch (Exception unused) {
                Utils.f2918d = "GL_EMU_001";
            }
        }
    }

    class b implements FileFilter {
        b() {
        }

        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return Pattern.matches("cpu[0-9]+", file.getName());
        }
    }

    class c implements Runnable {

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                Process.killProcess(Process.myPid());
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(Utils.getContext()).setTitle("title").setMessage("message").setCancelable(false).setPositiveButton("OK", new a()).create();
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int CheckConnectionType() {
        /*
            android.content.Context r0 = com.gameloft.android2d.iap.wrapper.Utils.b
            if (r0 == 0) goto L56
            boolean r0 = hasConnectivity()
            if (r0 != 0) goto Lb
            goto L56
        Lb:
            android.content.Context r0 = com.gameloft.android2d.iap.wrapper.Utils.b
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            int r0 = r0.getType()
            r1 = 3
            r2 = 7
            r3 = 6
            r4 = 1
            r5 = 9
            if (r0 == 0) goto L36
            if (r0 == r4) goto L37
            if (r0 == r3) goto L34
            if (r0 == r2) goto L32
            if (r0 == r5) goto L30
            r4 = 9
            goto L37
        L30:
            r4 = 4
            goto L37
        L32:
            r4 = 2
            goto L37
        L34:
            r4 = 5
            goto L37
        L36:
            r4 = 3
        L37:
            if (r4 != r5) goto L50
            android.content.Context r0 = com.gameloft.android2d.iap.wrapper.Utils.b
            java.lang.String r6 = "phone"
            java.lang.Object r0 = r0.getSystemService(r6)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            int r0 = r0.getNetworkType()
            switch(r0) {
                case 1: goto L4e;
                case 2: goto L4e;
                case 3: goto L51;
                case 4: goto L4e;
                case 5: goto L51;
                case 6: goto L51;
                case 7: goto L4e;
                case 8: goto L51;
                case 9: goto L51;
                case 10: goto L51;
                case 11: goto L4e;
                case 12: goto L51;
                case 13: goto L4b;
                case 14: goto L51;
                case 15: goto L51;
                default: goto L4a;
            }
        L4a:
            goto L50
        L4b:
            r2 = 8
            goto L51
        L4e:
            r2 = 6
            goto L51
        L50:
            r2 = r4
        L51:
            if (r2 != r1) goto L54
            goto L55
        L54:
            r5 = r2
        L55:
            return r5
        L56:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android2d.iap.wrapper.Utils.CheckConnectionType():int");
    }

    @SuppressLint({"NewApi"})
    private static String CheckInjectedValues() {
        try {
            String preferenceString = getPreferenceString("injectedValues", "", "injectedValues" + getGameName());
            if (TextUtils.isEmpty(preferenceString) && canCheckInjectedValues()) {
                preferenceString = readNIH();
                if (TextUtils.isEmpty(preferenceString)) {
                    String[] list = new File("/system/app").list();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= list.length) {
                            break;
                        }
                        if (list[i2].endsWith(".apk")) {
                            String str = "/system/app/" + list[i2];
                            if (b.getPackageManager().getPackageArchiveInfo(str, 0).packageName.equals(b.getPackageName())) {
                                preferenceString = inputStreamToString(new PathClassLoader(str, null, PathClassLoader.getSystemClassLoader()).getResourceAsStream("res/raw/nih.bin"), C.UTF8_NAME);
                                if (!TextUtils.isEmpty(preferenceString)) {
                                    setPreference("injectedValues", preferenceString, "injectedValues" + getGameName());
                                }
                            }
                        }
                        i2++;
                    }
                } else {
                    setPreference("injectedValues", preferenceString, "injectedValues" + getGameName());
                }
                if (TextUtils.isEmpty(preferenceString)) {
                    preferenceString = "";
                }
                increaseRetryCountValues();
            }
            return preferenceString;
        } catch (Exception unused) {
            increaseRetryCountValues();
            return "";
        }
    }

    public static byte[] DES_Encrypt(String str, String str2) {
        try {
            SecretKey secretKeyGenerateSecret = SecretKeyFactory.getInstance("DES").generateSecret(new DESKeySpec(str2.getBytes()));
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, secretKeyGenerateSecret);
            byte[] bytes = str.getBytes();
            int length = (bytes.length % 8 == 0 ? bytes.length / 8 : (bytes.length / 8) + 1) * 8;
            byte[] bArr = new byte[length];
            for (int i2 = 0; i2 < length; i2++) {
                bArr[i2] = 0;
            }
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            return cipher.doFinal(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void DecryptValuesContent() {
        E = DefReader.getInstance().a(readContentFile(), F).split("(\\r?\\n|\\r)+");
        int i2 = 0;
        while (true) {
            String[] strArr = E;
            if (i2 >= strArr.length) {
                return;
            }
            strArr[i2] = strArr[i2].replace("\n", "").replace("\r", "");
            i2++;
        }
    }

    public static String GLOT_getQADebug() {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "GlotDebug");
            if (!file.exists()) {
                return null;
            }
            File file2 = new File(file, "QADEBUG.txt");
            if (!file2.exists()) {
                return null;
            }
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return sb.toString();
                }
                sb.append(line);
                sb.append('\n');
            }
        } catch (IOException unused) {
            return null;
        }
    }

    public static String GenerateLinkPrivacyPolicy(String str) {
        return "";
    }

    public static String GenerateLinkRating() {
        return "";
    }

    public static String GenerateLinkTermOfUse(String str) {
        return "";
    }

    public static String GenerateLinkUpdateNewVersion(String str) {
        return "";
    }

    private static int[] GetBarrels() {
        int[] iArr = {0, 0, 0, 0};
        try {
            Signature[] signatureArr = getContext().getPackageManager().getPackageInfo(getContext().getPackageName(), 64).signatures;
            int length = signatureArr.length < 4 ? signatureArr.length : 4;
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = signatureArr[i2].hashCode();
            }
        } catch (Exception unused) {
        }
        return iArr;
    }

    public static long GetTSSecond() {
        return System.currentTimeMillis() / 1000;
    }

    public static boolean HasSim() {
        String str = "SIM_ERROR_UNKNOWN";
        try {
            TelephonyManager telephonyManager = (TelephonyManager) b.getSystemService("phone");
            if (telephonyManager != null) {
                int simState = telephonyManager.getSimState();
                if (simState == 1) {
                    str = "SIM_ABSENT";
                } else if (simState == 2) {
                    str = "SIM_PIN_REQUIRED";
                } else if (simState == 3) {
                    str = "SIM_PUK_REQUIRED";
                } else if (simState == 5) {
                    str = "SIM_READY";
                }
            }
        } catch (Exception unused) {
        }
        return str == "SIM_READY";
    }

    public static boolean HasVibrator() {
        if (Build.VERSION.SDK_INT >= 11) {
        }
        return true;
    }

    public static Vector LoadColorProfile() {
        try {
            int identifier = getContext().getResources().getIdentifier("color_profile", "raw", getContext().getPackageName());
            String lowerCase = Build.MANUFACTURER.toLowerCase();
            String lowerCase2 = Build.MODEL.toLowerCase();
            String strReplaceAll = lowerCase.replaceAll(" ", "-");
            String strReplaceAll2 = lowerCase2.replaceAll(" ", "-");
            String str = Build.VERSION.RELEASE;
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(getContext().getResources().openRawResource(identifier)));
            Vector vector = null;
            boolean z2 = false;
            boolean z3 = false;
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                String[] strArrSplit = line.split(" ");
                if (z2) {
                    if (!line.equals("begin")) {
                        if (!line.equals(TtmlNode.END)) {
                            for (String str2 : strArrSplit) {
                                vector.addElement(str2);
                            }
                        } else {
                            if (z3) {
                                break;
                            }
                            z2 = false;
                        }
                    }
                } else if (strArrSplit.length == 3) {
                    if (strReplaceAll.equals(strArrSplit[0].toLowerCase()) && strReplaceAll2.equals(strArrSplit[1].toLowerCase())) {
                        vector = new Vector();
                        if (strArrSplit[2].equals(str)) {
                            z2 = true;
                            z3 = true;
                        } else {
                            z2 = true;
                        }
                    }
                } else if (strArrSplit.length > 15 && strReplaceAll.equals(strArrSplit[0].toLowerCase()) && strReplaceAll2.equals(strArrSplit[1].toLowerCase())) {
                    vector = new Vector();
                    for (int i2 = 0; i2 < 13; i2++) {
                        vector.addElement(strArrSplit[i2 + 3]);
                    }
                    if (strArrSplit[2].equals(str)) {
                        break;
                    }
                }
            }
            bufferedReader.close();
            return vector;
        } catch (Exception unused) {
            return null;
        }
    }

    private static void LoadServices(Object obj, String str) {
        obj.getClass().getClassLoader();
        if (u.size() > 0) {
            return;
        }
        Enumeration enumeration = null;
        try {
            enumeration = Collections.enumeration(getAllValuesContentFile());
        } catch (Exception unused) {
        }
        while (enumeration.hasMoreElements()) {
            try {
                parseJadProperty(((String) enumeration.nextElement()).trim());
            } catch (Exception unused2) {
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0010  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void SetValuesNIH() {
        /*
            java.lang.String r0 = "_"
            java.lang.String r1 = ":"
            java.lang.String r2 = CheckInjectedValues()     // Catch: java.lang.Exception -> Lb6
            boolean r3 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> Lb6
            r4 = 0
            r5 = 1
            if (r3 == 0) goto L13
        L10:
            r4 = 1
            goto La8
        L13:
            com.gameloft.android2d.iap.wrapper.DefReader r3 = com.gameloft.android2d.iap.wrapper.DefReader.getInstance()     // Catch: java.lang.Exception -> Lb6
            java.lang.String r6 = com.gameloft.android2d.iap.wrapper.a.f2922d     // Catch: java.lang.Exception -> Lb6
            java.lang.String r2 = r3.a(r2, r6)     // Catch: java.lang.Exception -> Lb6
            java.lang.String[] r2 = r2.split(r1)     // Catch: java.lang.Exception -> Lb6
            r3 = r2[r4]     // Catch: java.lang.Exception -> Lb6
            java.lang.String[] r3 = r3.split(r0)     // Catch: java.lang.Exception -> Lb6
            r3 = r3[r5]     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils.j = r3     // Catch: java.lang.Exception -> Lb6
            r3 = r2[r5]     // Catch: java.lang.Exception -> Lb6
            java.lang.String[] r3 = r3.split(r0)     // Catch: java.lang.Exception -> Lb6
            r3 = r3[r5]     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils.k = r3     // Catch: java.lang.Exception -> Lb6
            r3 = 2
            r2 = r2[r3]     // Catch: java.lang.Exception -> Lb6
            java.lang.String[] r0 = r2.split(r0)     // Catch: java.lang.Exception -> Lb6
            java.lang.String r2 = getDynamicProdictID()     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils.l = r2     // Catch: java.lang.Exception -> Lb6
            r0 = r0[r5]     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils.m = r0     // Catch: java.lang.Exception -> Lb6
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Lb6
            r0.<init>()     // Catch: java.lang.Exception -> Lb6
            java.lang.String r2 = com.gameloft.android2d.iap.wrapper.Utils.l     // Catch: java.lang.Exception -> Lb6
            r0.append(r2)     // Catch: java.lang.Exception -> Lb6
            r0.append(r1)     // Catch: java.lang.Exception -> Lb6
            java.lang.String r2 = com.gameloft.android2d.iap.wrapper.Utils.k     // Catch: java.lang.Exception -> Lb6
            r0.append(r2)     // Catch: java.lang.Exception -> Lb6
            r0.append(r1)     // Catch: java.lang.Exception -> Lb6
            android.app.Activity r2 = getActivity()     // Catch: java.lang.Exception -> Lb6
            java.lang.String r3 = "MIDlet-Version"
            java.lang.String r2 = getAppProperty(r2, r3)     // Catch: java.lang.Exception -> Lb6
            r0.append(r2)     // Catch: java.lang.Exception -> Lb6
            r0.append(r1)     // Catch: java.lang.Exception -> Lb6
            android.app.Activity r2 = getActivity()     // Catch: java.lang.Exception -> Lb6
            java.lang.String r3 = "GAME_PLATFORM"
            java.lang.String r2 = getAppProperty(r2, r3)     // Catch: java.lang.Exception -> Lb6
            r0.append(r2)     // Catch: java.lang.Exception -> Lb6
            r0.append(r1)     // Catch: java.lang.Exception -> Lb6
            android.app.Activity r1 = getActivity()     // Catch: java.lang.Exception -> Lb6
            java.lang.String r2 = "GAME_SHOP"
            java.lang.String r1 = getAppProperty(r1, r2)     // Catch: java.lang.Exception -> Lb6
            r0.append(r1)     // Catch: java.lang.Exception -> Lb6
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils.n = r0     // Catch: java.lang.Exception -> Lb6
            java.lang.String r0 = com.gameloft.android2d.iap.wrapper.Utils.j     // Catch: java.lang.Exception -> Lb6
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Lb6
            if (r0 != 0) goto L10
            java.lang.String r0 = com.gameloft.android2d.iap.wrapper.Utils.k     // Catch: java.lang.Exception -> Lb6
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Lb6
            if (r0 != 0) goto L10
            java.lang.String r0 = com.gameloft.android2d.iap.wrapper.Utils.l     // Catch: java.lang.Exception -> Lb6
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> Lb6
            if (r0 == 0) goto La8
            goto L10
        La8:
            if (r4 == 0) goto Lb6
            android.app.Activity r0 = getActivity()     // Catch: java.lang.Exception -> Lb6
            com.gameloft.android2d.iap.wrapper.Utils$c r1 = new com.gameloft.android2d.iap.wrapper.Utils$c     // Catch: java.lang.Exception -> Lb6
            r1.<init>()     // Catch: java.lang.Exception -> Lb6
            r0.runOnUiThread(r1)     // Catch: java.lang.Exception -> Lb6
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android2d.iap.wrapper.Utils.SetValuesNIH():void");
    }

    public static boolean canCheckInjectedIGP() {
        StringBuilder sb = new StringBuilder();
        sb.append("injectedIGP");
        sb.append(getGameName());
        return getPreferenceInt("retryNumIGP", 0, sb.toString()) <= 1;
    }

    public static boolean canCheckInjectedSerialKey() {
        StringBuilder sb = new StringBuilder();
        sb.append("injectedIGP");
        sb.append(getGameName());
        return getPreferenceInt("retryNumSerialKey", 0, sb.toString()) <= 1;
    }

    public static boolean canCheckInjectedValues() {
        StringBuilder sb = new StringBuilder();
        sb.append("injectedValues");
        sb.append(getGameName());
        return getPreferenceInt("retryNumValues", 0, sb.toString()) <= 100;
    }

    public static long checkAvailableSpace(String str, Context context) {
        try {
            File file = str.contains(context.getPackageName()) ? new File(str.substring(0, str.indexOf(context.getPackageName()))) : str == getSDPath() ? new File("/sdcard/") : new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            StatFs statFs = new StatFs(file.getAbsolutePath());
            return (((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
        } catch (Exception unused) {
            return 0L;
        }
    }

    public static void checkNewVersionInstalled() {
        String preferenceString = getPreferenceString("versionInstalled", "", "injectedIGP" + getGameName());
        if (TextUtils.isEmpty(preferenceString)) {
            setPreference("versionInstalled", com.gameloft.android2d.iap.wrapper.a.f2925g, "injectedIGP" + getGameName());
            return;
        }
        if (preferenceString.equals(com.gameloft.android2d.iap.wrapper.a.f2925g)) {
            return;
        }
        setPreference("retryNumIGP", 0, "injectedIGP" + getGameName());
        setPreference("retryNumSerialKey", 0, "injectedIGP" + getGameName());
        setPreference("versionInstalled", com.gameloft.android2d.iap.wrapper.a.f2925g, "injectedIGP" + getGameName());
    }

    public static boolean deleteInternalFile(String str) {
        return getContext().deleteFile(str);
    }

    public static boolean existInternalFile(String str) {
        return getContext().getFileStreamPath(str).exists();
    }

    public static void generateNoteOnSD(String str) {
        generateNoteOnSD(i, true, str);
    }

    public static void generateNoteOnSD(String str, boolean z2, String str2) {
        if (str.equals("")) {
            return;
        }
        i = str;
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "GlotDebug");
            if (file.exists()) {
                FileWriter fileWriter = new FileWriter(new File(file, i), z2);
                fileWriter.append((CharSequence) (str2 + "\n"));
                fileWriter.flush();
                fileWriter.close();
            }
        } catch (IOException unused) {
        }
    }

    public static Activity getActivity() {
        return (Activity) b;
    }

    public static ArrayList<String> getAllValuesContentFile() {
        if (E == null) {
            DecryptValuesContent();
        }
        return new ArrayList<>(Arrays.asList(E));
    }

    public static String getAndroidId() {
        String string;
        return (getContext() == null || (string = Settings.Secure.getString(getContext().getContentResolver(), "android_id")) == null || string.equals("9774d56d682e549c") || string.length() < 15) ? "" : string;
    }

    public static String getAppProperty(Object obj, String str) {
        Activity activity;
        if (str != null && str.trim().length() != 0) {
            if (obj instanceof Activity) {
                activity = (Activity) obj;
            } else if (getContext() != null) {
                activity = (Activity) getContext();
            }
            if (!com.gameloft.android2d.iap.wrapper.a.f2923e && !com.gameloft.android2d.iap.wrapper.a.f2924f) {
                str = str.replace("-", "_");
            }
            if (!com.gameloft.android2d.iap.wrapper.a.f2923e && !com.gameloft.android2d.iap.wrapper.a.f2924f) {
                int identifier = activity.getResources().getIdentifier(str, TypedValues.Custom.S_STRING, activity.getPackageName());
                if (identifier == 0) {
                    return null;
                }
                return activity.getResources().getString(identifier);
            }
            if (com.gameloft.android2d.iap.wrapper.a.f2924f) {
                LoadServices(activity, "res/raw/hdv.bin");
            }
            if (com.gameloft.android2d.iap.wrapper.a.f2923e) {
                LoadServices(activity, "META-INF/services/Game");
            }
            if (u.containsKey(str)) {
                return (String) u.get(str);
            }
        }
        return null;
    }

    public static final String getAppProperty(String str) {
        if (str == null || str.trim().length() == 0) {
            return null;
        }
        if (!com.gameloft.android2d.iap.wrapper.a.f2923e && !com.gameloft.android2d.iap.wrapper.a.f2924f) {
            str = str.replace("-", "_");
        }
        if (str.toLowerCase().compareTo("microedition.locale") == 0) {
            return Locale.getDefault().toString();
        }
        if (str.toLowerCase().compareTo("microedition.device") == 0) {
            return Build.MODEL;
        }
        if (str.toLowerCase().compareTo("microedition.device.manufacturer") == 0) {
            return Build.MANUFACTURER;
        }
        if (str.toLowerCase().compareTo("microedition.device.firmware") == 0) {
            return Build.VERSION.RELEASE;
        }
        if (str.toLowerCase().compareTo("microedition.inch") == 0) {
            return "" + v;
        }
        if (str.toLowerCase().compareTo("microedition.widthreal") == 0) {
            return "" + w;
        }
        if (str.toLowerCase().compareTo("microedition.heightreal") == 0) {
            return "" + x;
        }
        if (str.toLowerCase().compareTo("microedition.width") == 0) {
            return "" + y;
        }
        if (str.toLowerCase().compareTo("microedition.height") == 0) {
            return "" + z;
        }
        if (str.toLowerCase().compareTo("microedition.screen.virtual") == 0) {
            return "true";
        }
        if (str.toLowerCase().compareTo("conectivity") == 0 || str.toLowerCase().compareTo("connectivity") == 0) {
            return hasConnectivity() ? "on" : "off";
        }
        if (str.toLowerCase().compareTo("type.connectivity") == 0) {
            return "" + CheckConnectionType();
        }
        if (str.toLowerCase().compareTo("injectedserialkey") == 0) {
            return getInjectedSerialKey();
        }
        if (str.toLowerCase().compareTo("injectedigp") == 0) {
            return getInjectedIGP();
        }
        if (str.toLowerCase().compareTo("deviceuptimemillis") == 0) {
            return getDeviceUpTimeMillis();
        }
        if (str.compareTo("clock") == 0) {
            return "" + NativeUtils.getClock();
        }
        if (str.compareTo("timemillis") == 0) {
            return "" + NativeUtils.getClockMillis();
        }
        if (str.compareTo("timenano") == 0) {
            return "" + NativeUtils.getClockNano();
        }
        if (str.compareTo("getAvailableSpace") == 0) {
            return "" + checkAvailableSpace(getActivity().getFilesDir().getPath(), getContext());
        }
        if (str.compareTo("gameversionletter") == 0) {
            return com.gameloft.android2d.iap.wrapper.a.h;
        }
        if (str.compareTo("microedition.locale.country") == 0) {
            return getDeviceCountry().toUpperCase();
        }
        if (str.compareTo("microedition.locale.simcountry") == 0) {
            return getSimCountry().toUpperCase();
        }
        if (str.compareTo("microedition.locale.usercountry") == 0) {
            return getUserCountryInfo().toUpperCase();
        }
        if (com.gameloft.android2d.iap.wrapper.a.c) {
            if (str.compareTo("IAP-GameCodeIGP") == 0) {
                return getDynamicIGPCODE();
            }
            if (str.compareTo("GAME-GGI") == 0 || str.compareTo("GGI") == 0) {
                return getDynamicGGICode();
            }
            if (str.compareTo("GAME-PLATFORM-ID") == 0 || str.compareTo("PlatformID") == 0 || str.compareTo("IAP-PhoneModel") == 0) {
                return getDynamicPlatformID();
            }
            if (str.compareTo("URL-SUPPORT") == 0) {
                return getUrlSupport();
            }
            if (str.compareTo("URL-OPERATOR") == 0) {
                return getUrlOperator();
            }
            if (str.compareTo("URL-TEMPLATE-GAME") == 0) {
                return getUrlTemplateGame();
            }
            if (str.compareTo("URL-UPDATE") == 0) {
                return getUrlUpdate();
            }
        }
        return str.compareTo("hasVibrator") == 0 ? HasVibrator() ? "true" : "false" : str.compareTo("hasSim") == 0 ? HasSim() ? "true" : "false" : getAppProperty(getActivity(), str);
    }

    public static int getBatteryLevel() {
        return D;
    }

    public static String getCPUPartInfo() {
        String line;
        if (!new File("/proc/cpuinfo").exists()) {
            return "";
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
            do {
                line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return "";
                }
            } while (line.indexOf("CPU part") == -1);
            return line.substring(line.indexOf("0x"));
        } catch (IOException unused) {
            return "";
        }
    }

    public static float getClock() {
        return NativeUtils.getClock();
    }

    public static long getClockMillis() {
        return NativeUtils.getClockMillis();
    }

    public static long getClockNano() {
        return NativeUtils.getClockNano();
    }

    public static int getConfig_HDIDFV_UPDATE() {
        return com.gameloft.android2d.iap.wrapper.a.a;
    }

    public static Context getContext() {
        return b;
    }

    public static long getCurrentLocalTimeMillis() {
        return System.currentTimeMillis() + ((long) TimeZone.getDefault().getRawOffset());
    }

    public static String getDevceFirmware() {
        return Build.VERSION.RELEASE.toUpperCase();
    }

    public static String getDeviceCarrier() {
        String simOperator;
        try {
            if (b != null && !isAirplaneModeOn() && (simOperator = ((TelephonyManager) b.getSystemService("phone")).getSimOperator()) != null) {
                if (simOperator.length() != 0) {
                    return simOperator;
                }
            }
        } catch (Exception unused) {
        }
        return "0";
    }

    public static String getDeviceCountry() {
        Context context = b;
        if (context != null) {
            try {
                String country = context.getResources().getConfiguration().locale.getCountry();
                if (country != null) {
                    if (country.length() != 0) {
                        return country;
                    }
                }
            } catch (Exception unused) {
            }
        }
        String country2 = Locale.getDefault().getCountry();
        return (country2 == null || country2.length() == 0) ? "XX" : country2;
    }

    public static String getDeviceLanguage() {
        try {
            try {
                return b.getResources().getConfiguration().locale.getLanguage();
            } catch (Exception unused) {
                return "XX";
            }
        } catch (Exception unused2) {
            return Locale.getDefault().getLanguage();
        }
    }

    public static String getDeviceLocale() {
        try {
            try {
                return b.getResources().getConfiguration().locale.toString();
            } catch (Exception unused) {
                return "XX";
            }
        } catch (Exception unused2) {
            return Locale.getDefault().toString();
        }
    }

    public static String getDeviceName() {
        return Build.MODEL.toUpperCase();
    }

    public static String getDeviceRegion() {
        try {
            try {
                Locale locale = b.getResources().getConfiguration().locale;
                return locale.getLanguage() + "_" + locale.getCountry();
            } catch (Exception unused) {
                Locale locale2 = Locale.getDefault();
                return locale2.getLanguage() + "_" + locale2.getCountry();
            }
        } catch (Exception unused2) {
            return "XX_XX";
        }
    }

    public static String getDeviceUpTimeMillis() {
        return "" + SystemClock.elapsedRealtime();
    }

    public static int getDeviceVolume() {
        return ((AudioManager) getContext().getSystemService("audio")).getStreamVolume(3);
    }

    public static String getDynamicClientID() {
        String str = n;
        if (str != null) {
            return str;
        }
        SetValuesNIH();
        return n;
    }

    public static String getDynamicGGICode() {
        String str = k;
        if (str != null) {
            return str;
        }
        SetValuesNIH();
        return k;
    }

    public static String getDynamicIGPCODE() {
        String str = j;
        if (str != null) {
            return str;
        }
        SetValuesNIH();
        return j;
    }

    public static String getDynamicPlatformID() {
        String str = m;
        if (str != null) {
            return str;
        }
        SetValuesNIH();
        return m;
    }

    public static String getDynamicProdictID() {
        String str = l;
        return str != null ? str : getAppProperty(getActivity(), "GAME-PRODUCT-ID");
    }

    public static long getElapseRealtime() {
        return SystemClock.elapsedRealtime();
    }

    public static float getFreeRam() {
        ((ActivityManager) getActivity().getSystemService("activity")).getMemoryInfo(new ActivityManager.MemoryInfo());
        return r1.availMem / 1048576.0f;
    }

    public static String getGLExtensions() {
        return r;
    }

    public static String getGLVendor() {
        return p;
    }

    public static String getGLVersion() {
        return q;
    }

    public static String getGPUModel() {
        return o;
    }

    public static String getGameLanguage() {
        return s[t];
    }

    public static int getGameLanguageIndex() {
        return t;
    }

    public static String getGameName() {
        try {
            String packageName = b.getPackageName();
            return packageName.indexOf("com.gameloft.android.") == -1 ? packageName : packageName.substring(21);
        } catch (Exception unused) {
            return "";
        }
    }

    public static synchronized String getHDIDFV() {
        return getHDIDFV(getContext());
    }

    public static synchronized String getHDIDFV(Context context) {
        if (com.gameloft.android2d.iap.wrapper.a.a != 0) {
            String str = f2919e;
            if (str != null && str.length() > 0) {
                return f2919e;
            }
            if (DataSharing.getContext() == null) {
                DataSharing.init(context);
            }
            String sharedValue = DataSharing.getSharedValue("HDIDFV");
            f2919e = sharedValue;
            try {
                if (!TextUtils.isEmpty(sharedValue)) {
                    f2919e = AESEncrypter.decrypt(f2919e).replaceAll(" ", "");
                }
            } catch (Exception unused) {
                f2919e = "";
            }
            if (!TextUtils.isEmpty(f2919e)) {
                f2920f = DataSharing.getSharedValue("HDIDFVVersion");
                return f2919e;
            }
            System.loadLibrary(com.gameloft.android2d.iap.wrapper.a.b + "generator");
            f2919e = HDIDFV.getHDIDFV();
            int i2 = com.gameloft.android2d.iap.wrapper.a.a;
            f2920f = HDIDFV.getHDIDFVVersion();
            if (!TextUtils.isEmpty(f2919e)) {
                DataSharing.setSharedValue("HDIDFV", AESEncrypter.crypt(f2919e));
                DataSharing.setSharedValue("HDIDFVVersion", f2920f);
            }
            if (!TextUtils.isEmpty(f2919e)) {
                return f2919e;
            }
        }
        return "";
    }

    public static String getHDIDFVForPushNotification() {
        String str = f2919e;
        if (str != null && str.length() > 0) {
            return f2919e;
        }
        if (DataSharing.getContext() == null) {
            DataSharing.init(getContext());
        }
        String sharedValue = DataSharing.getSharedValue("HDIDFV");
        f2919e = sharedValue;
        try {
            if (!TextUtils.isEmpty(sharedValue)) {
                f2919e = AESEncrypter.decrypt(f2919e).replaceAll(" ", "");
            }
        } catch (Exception unused) {
            f2919e = "";
        }
        if (!TextUtils.isEmpty(f2919e)) {
            f2920f = DataSharing.getSharedValue("HDIDFVVersion");
            return f2919e;
        }
        System.loadLibrary(com.gameloft.android2d.iap.wrapper.a.b + "generator");
        f2919e = HDIDFV.getHDIDFV();
        int i2 = com.gameloft.android2d.iap.wrapper.a.a;
        f2920f = HDIDFV.getHDIDFVVersion();
        if (!TextUtils.isEmpty(f2919e)) {
            DataSharing.setSharedValue("HDIDFV", AESEncrypter.crypt(f2919e));
            DataSharing.setSharedValue("HDIDFVVersion", f2920f);
        }
        return !TextUtils.isEmpty(f2919e) ? f2919e : "";
    }

    public static String getHDIDFVVersion() {
        return (com.gameloft.android2d.iap.wrapper.a.a == 0 || TextUtils.isEmpty(f2919e)) ? "" : f2920f;
    }

    public static String getHttpsResponse(String str) {
        InputStream inputStream;
        InputStream inputStream2;
        f2921g = str;
        h = System.currentTimeMillis();
        try {
            URL url = new URL(str);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (str.contains("https")) {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setRequestProperty("Connection", "close");
                httpsURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, f2918d);
                String resourceAsString = getResourceAsString("serialkey", "raw");
                if (resourceAsString != null) {
                    httpsURLConnection.setRequestProperty("x-gl-d", resourceAsString);
                }
                httpsURLConnection.setRequestProperty("x-android-os-build-model", Build.MODEL);
                httpsURLConnection.setRequestProperty("x-up-gl-subno", getLineNumber());
                httpsURLConnection.setRequestProperty("x-up-gl-imei", getHDIDFV());
                if (httpsURLConnection.getResponseCode() != 200) {
                    return "";
                }
                synchronized (httpsURLConnection) {
                    inputStream2 = httpsURLConnection.getInputStream();
                }
                byte[] bArr = new byte[16];
                int i2 = 0;
                while (i2 != -1) {
                    i2 = inputStream2.read(bArr, 0, 16);
                    if (i2 != -1) {
                        byteArrayOutputStream.write(bArr, 0, i2);
                    }
                }
                httpsURLConnection.disconnect();
                return byteArrayOutputStream.toString();
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, f2918d);
            String resourceAsString2 = getResourceAsString("serialkey", "raw");
            if (resourceAsString2 != null) {
                httpURLConnection.setRequestProperty("x-gl-d", resourceAsString2);
            }
            httpURLConnection.setRequestProperty("x-android-os-build-model", Build.MODEL);
            httpURLConnection.setRequestProperty("x-up-gl-subno", getLineNumber());
            httpURLConnection.setRequestProperty("x-up-gl-imei", getHDIDFV());
            if (httpURLConnection.getResponseCode() != 200) {
                return "";
            }
            synchronized (httpURLConnection) {
                inputStream = httpURLConnection.getInputStream();
            }
            byte[] bArr2 = new byte[16];
            int i3 = 0;
            while (i3 != -1) {
                i3 = inputStream.read(bArr2, 0, 16);
                if (i3 != -1) {
                    byteArrayOutputStream.write(bArr2, 0, i3);
                }
            }
            httpURLConnection.disconnect();
            return byteArrayOutputStream.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String getInjectedIGP() {
        if (b == null) {
            return "";
        }
        if (B == null) {
            String strRetrieveSavedInjectedIGP = retrieveSavedInjectedIGP();
            if (!TextUtils.isEmpty(strRetrieveSavedInjectedIGP)) {
                try {
                    B = DefReader.getInstance().a(strRetrieveSavedInjectedIGP, getAppProperty(getActivity(), "GAME-IGP-CODE"));
                } catch (Exception unused) {
                    B = "";
                }
            }
        }
        if (TextUtils.isEmpty(B)) {
            B = "";
        }
        return B;
    }

    public static String getInjectedIGPValue() {
        String str = B;
        return str == null ? "" : str;
    }

    public static String getInjectedSerialKey() {
        if (C == null) {
            try {
                String preferenceString = getPreferenceString("injectedSerialKey", "", "injectedIGP" + getGameName());
                if (TextUtils.isEmpty(preferenceString) && canCheckInjectedSerialKey()) {
                    preferenceString = readSerialKey();
                    if (!TextUtils.isEmpty(preferenceString)) {
                        setPreference("injectedSerialKey", preferenceString, "injectedIGP" + getGameName());
                    } else if ((getContext().getApplicationInfo().flags & 128) != 0) {
                        String[] list = new File("/system/app").list();
                        int i2 = 0;
                        while (true) {
                            if (i2 >= list.length) {
                                break;
                            }
                            if (list[i2].endsWith(".apk")) {
                                String str = "/system/app/" + list[i2];
                                if (b.getPackageManager().getPackageArchiveInfo(str, 0).packageName.equals(b.getPackageName())) {
                                    InputStream resourceAsStream = new PathClassLoader(str, null, PathClassLoader.getSystemClassLoader()).getResourceAsStream("res/raw/serialkey.txt");
                                    if (resourceAsStream != null) {
                                        preferenceString = inputStreamToString(resourceAsStream, C.UTF8_NAME);
                                        if (!TextUtils.isEmpty(preferenceString)) {
                                            setPreference("injectedSerialKey", preferenceString, "injectedIGP" + getGameName());
                                        }
                                    }
                                }
                            }
                            i2++;
                        }
                        if (TextUtils.isEmpty(preferenceString)) {
                            String[] list2 = new File("/system/priv-app").list();
                            int i3 = 0;
                            while (true) {
                                if (i3 >= list2.length) {
                                    break;
                                }
                                if (list2[i3].endsWith(".apk")) {
                                    String str2 = "/system/priv-app/" + list2[i3];
                                    if (b.getPackageManager().getPackageArchiveInfo(str2, 0).packageName.equals(b.getPackageName())) {
                                        InputStream resourceAsStream2 = new PathClassLoader(str2, null, PathClassLoader.getSystemClassLoader()).getResourceAsStream("res/raw/serialkey.txt");
                                        if (resourceAsStream2 != null) {
                                            preferenceString = inputStreamToString(resourceAsStream2, C.UTF8_NAME);
                                            if (!TextUtils.isEmpty(preferenceString)) {
                                                setPreference("injectedSerialKey", preferenceString, "injectedIGP" + getGameName());
                                            }
                                        }
                                    }
                                }
                                i3++;
                            }
                        }
                    }
                    increaseRetryCountSerialKey();
                }
                C = preferenceString;
            } catch (Exception unused) {
                C = "";
                increaseRetryCountSerialKey();
            }
        }
        if (TextUtils.isEmpty(C)) {
            C = "";
        }
        return C;
    }

    public static String getInjectedSerialKeyValue() {
        String str = C;
        return str == null ? "" : str;
    }

    public static String getLineNumber() {
        return "00";
    }

    public static float getMaxAvailableRam() {
        float fFloatValue = 0.0f;
        try {
            FileReader fileReader = new FileReader(new File(AndroidDynamicDeviceInfoDataSource.DIRECTORY_MEM_INFO));
            LineNumberReader lineNumberReader = new LineNumberReader(fileReader);
            while (true) {
                String line = lineNumberReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.indexOf("MemTotal: ") == 0) {
                    fFloatValue = Float.valueOf(line.substring(line.indexOf(CertificateUtil.DELIMITER) + 1, line.indexOf("kB") - 1).trim()).floatValue() / 1024.0f;
                    break;
                }
            }
            lineNumberReader.close();
            fileReader.close();
        } catch (IOException unused) {
        }
        return fFloatValue;
    }

    public static float getMaxCPUSpeed() {
        float fFloatValue = -1.0f;
        try {
            FileReader fileReader = new FileReader(new File("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"));
            LineNumberReader lineNumberReader = new LineNumberReader(fileReader);
            fFloatValue = Float.valueOf(lineNumberReader.readLine().trim()).floatValue() / 1000.0f;
            lineNumberReader.close();
            fileReader.close();
            return fFloatValue;
        } catch (IOException unused) {
            return fFloatValue;
        }
    }

    public static String getMetaDataValue(String str) {
        try {
            Bundle bundle = getContext().getPackageManager().getApplicationInfo(getContext().getPackageName(), 128).metaData;
            if (bundle != null) {
                return String.valueOf(bundle.get(str));
            }
            return null;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static String getNetworkCountryIso() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) b.getSystemService("phone");
            if (telephonyManager != null) {
                return telephonyManager.getNetworkCountryIso();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getNetworkOperator() {
        String str = "SIM_ERROR_UNKNOWN";
        String networkOperator = null;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) b.getSystemService("phone");
            if (telephonyManager != null) {
                int simState = telephonyManager.getSimState();
                String str2 = simState != 1 ? simState != 2 ? simState != 3 ? "SIM_ERROR_UNKNOWN" : "SIM_PUK_REQUIRED" : "SIM_PIN_REQUIRED" : "SIM_ABSENT";
                networkOperator = telephonyManager.getNetworkOperator();
                str = str2;
            }
        } catch (Exception unused) {
        }
        return (networkOperator == null || networkOperator.trim().length() == 0) ? str : networkOperator;
    }

    public static int getNumCPUCores() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new b()).length;
        } catch (Exception unused) {
            return 1;
        }
    }

    public static String getOverriddenSetting(String str, String str2) {
        String line;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                if (line.startsWith(str2)) {
                    line = line.substring(line.indexOf(o2.i.b) + 1).trim();
                    break;
                }
            }
            bufferedReader.close();
            fileReader.close();
            return line;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean getOverriddenSettingBoolean(String str, String str2) {
        String overriddenSetting = getOverriddenSetting(str, str2);
        if (overriddenSetting == null || overriddenSetting.length() <= 0) {
            return false;
        }
        return Boolean.valueOf(overriddenSetting).booleanValue();
    }

    public static String getPackageName() {
        Context context = b;
        return context != null ? context.getPackageName() : "";
    }

    public static boolean getPreferenceBoolean(String str, boolean z2, String str2) {
        try {
            return getContext().getSharedPreferences(str2, 0).getBoolean(str, z2);
        } catch (Exception unused) {
            return false;
        }
    }

    public static Hashtable getPreferenceHashTable(String str) {
        return new Hashtable(getContext().getSharedPreferences(str, 0).getAll());
    }

    public static int getPreferenceInt(String str, int i2, String str2) {
        return getContext().getSharedPreferences(str2, 0).getInt(str, i2);
    }

    public static long getPreferenceLong(String str, long j2, String str2) {
        return Long.valueOf(getContext().getSharedPreferences(str2, 0).getLong(str, j2)).longValue();
    }

    public static String getPreferenceString(String str, String str2) {
        return getContext().getSharedPreferences(str2, 0).getString(str, "");
    }

    public static String getPreferenceString(String str, String str2, String str3) {
        return getContext().getSharedPreferences(str3, 0).getString(str, str2);
    }

    public static final InputStream getResourceAsStream(String str) {
        InputStream inputStreamOpenRawResource;
        if (str.startsWith("/")) {
            str = str.substring(1);
        }
        String lowerCase = str.substring(str.lastIndexOf(47) + 1).toLowerCase();
        int iIndexOf = lowerCase.indexOf(46);
        if (iIndexOf != -1) {
            lowerCase = lowerCase.substring(0, iIndexOf);
        }
        int identifier = b.getResources().getIdentifier(str.substring(0, str.lastIndexOf(47) + 1) + "res_" + lowerCase, "drawable", b.getPackageName());
        if (identifier != 0 && (inputStreamOpenRawResource = b.getResources().openRawResource(identifier)) != null) {
            return inputStreamOpenRawResource;
        }
        try {
            return b.getAssets().open(c + str);
        } catch (IOException unused) {
            return null;
        }
    }

    public static String getResourceAsString(String str, String str2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            InputStream inputStreamOpenRawResource = b.getResources().openRawResource(b.getResources().getIdentifier(str, str2, b.getPackageName()));
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException | Exception unused) {
        }
        return byteArrayOutputStream.toString();
    }

    private static String getSDPath() {
        String externalStorageState = Environment.getExternalStorageState();
        if (externalStorageState == "removed" || externalStorageState == "unmounted" || externalStorageState == "bad_removal") {
            return getContext().getFilesDir().getAbsolutePath();
        }
        File file = new File(Environment.getExternalStorageDirectory(), ".gameloft");
        file.mkdirs();
        return file.getAbsolutePath();
    }

    public static String getSHA1(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(str.getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                stringBuffer.append(Integer.toString((b2 & 255) + 256, 16).substring(1));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static String getSMSDemoLatamUrl() {
        return "";
    }

    public static String getSerialKey() {
        try {
            InputStream inputStreamOpenRawResource = b.getResources().openRawResource(b.getResources().getIdentifier("serialkey", "raw", b.getPackageName()));
            int iAvailable = inputStreamOpenRawResource.available();
            byte[] bArr = new byte[iAvailable];
            inputStreamOpenRawResource.read(bArr, 0, iAvailable);
            inputStreamOpenRawResource.close();
            return new String(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String getSimCountry() {
        try {
            String simCountryIso = ((TelephonyManager) b.getSystemService("phone")).getSimCountryIso();
            return simCountryIso != null ? simCountryIso.length() > 0 ? simCountryIso : "" : "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static ViewGroup getTopViewGroup() {
        return (ViewGroup) ((Activity) getContext()).findViewById(R.id.content);
    }

    public static ViewGroup getTopViewGroup(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            viewGroup.removeViewAt(i2);
            relativeLayout.addView(childAt);
        }
        viewGroup.addView(relativeLayout);
        return relativeLayout;
    }

    public static String getUpdateNewVersion(int i2, int i3, boolean z2) {
        return "";
    }

    public static String getUpdateNewVersion(boolean z2) {
        return "";
    }

    public static String getUrlOperator() {
        return "";
    }

    public static String getUrlSupport() {
        return "";
    }

    public static String getUrlTemplateGame() {
        return "";
    }

    public static String getUrlUpdate() {
        return "";
    }

    public static String getUserCountryInfo() {
        String country;
        String country2;
        TelephonyManager telephonyManager = (TelephonyManager) b.getSystemService("phone");
        try {
            if (telephonyManager.getPhoneType() != 2) {
                try {
                    String simCountryIso = telephonyManager.getSimCountryIso();
                    if (simCountryIso != null) {
                        if (simCountryIso.length() > 0) {
                            return simCountryIso;
                        }
                    }
                } catch (Exception unused) {
                }
                try {
                    String networkCountryIso = telephonyManager.getNetworkCountryIso();
                    if (networkCountryIso != null) {
                        if (networkCountryIso.length() > 0) {
                            return networkCountryIso;
                        }
                    }
                } catch (Exception unused2) {
                }
                try {
                    Context context = b;
                    if (context != null && (country2 = context.getResources().getConfiguration().locale.getCountry()) != null) {
                        if (country2.length() > 0) {
                            return country2;
                        }
                    }
                } catch (Exception unused3) {
                }
                String country3 = Locale.getDefault().getCountry();
                if (country3 != null && country3.length() > 0) {
                    return country3;
                }
            } else {
                try {
                    String simCountryIso2 = telephonyManager.getSimCountryIso();
                    if (simCountryIso2 != null) {
                        if (simCountryIso2.length() > 0) {
                            return simCountryIso2;
                        }
                    }
                } catch (Exception unused4) {
                }
                try {
                    Context context2 = b;
                    if (context2 != null && (country = context2.getResources().getConfiguration().locale.getCountry()) != null) {
                        if (country.length() > 0) {
                            return country;
                        }
                    }
                } catch (Exception unused5) {
                }
                String country4 = Locale.getDefault().getCountry();
                if (country4 != null && country4.length() > 0) {
                    return country4;
                }
            }
            return "";
        } catch (Exception unused6) {
            return "";
        }
    }

    private static String getValue() {
        byte[] bArr = new byte[9];
        byte[] bArr2 = {Ascii.SYN, Ascii.SYN, 49, 67, 41, 74, 36, Ascii.SYN, Ascii.SO};
        int i2 = 0;
        while (i2 < 9) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) (35 + bArr2[9 - i3]);
            i2 = i3;
        }
        return new String(bArr, 0, 9);
    }

    public static String getValueOfParameterContentFile(String str) {
        int i2 = 0;
        while (true) {
            String[] strArr = E;
            if (i2 >= strArr.length) {
                return null;
            }
            if (strArr[i2].contains(str)) {
                String[] strArr2 = E;
                return strArr2[i2].substring(strArr2[i2].indexOf(": ") + 2, E[i2].length());
            }
            i2++;
        }
    }

    public static boolean hasConnectivity() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean hasGLSignature() {
        int[] iArrGetBarrels = GetBarrels();
        if (iArrGetBarrels == null) {
            return true;
        }
        int[] iArr = {16847, IronSourceConstants.IS_INSTANCE_COLLECT_TOKEN_SUCCESS};
        boolean z2 = true;
        for (int i2 = 0; i2 < iArrGetBarrels.length; i2++) {
            if (i2 == 0) {
                iArr[1] = iArr[1] * 2;
            }
            if (iArrGetBarrels[i2] == (iArr[1] * DefaultOggSeeker.MATCH_BYTE_RANGE) + (iArr[0] * 3)) {
                return true;
            }
            if (iArrGetBarrels[i2] > 0) {
                z2 = false;
            }
        }
        return z2;
    }

    public static void increaseRetryCountIGP() {
        int preferenceInt = getPreferenceInt("retryNumIGP", 0, "injectedIGP" + getGameName()) + 1;
        if (preferenceInt < 3) {
            setPreference("retryNumIGP", Integer.valueOf(preferenceInt), "injectedIGP" + getGameName());
        }
    }

    public static void increaseRetryCountSerialKey() {
        int preferenceInt = getPreferenceInt("retryNumSerialKey", 0, "injectedIGP" + getGameName()) + 1;
        if (preferenceInt < 3) {
            setPreference("retryNumSerialKey", Integer.valueOf(preferenceInt), "injectedIGP" + getGameName());
        }
    }

    public static void increaseRetryCountValues() {
        int preferenceInt = getPreferenceInt("retryNumValues", 0, "injectedValues" + getGameName()) + 1;
        if (preferenceInt < 3) {
            setPreference("retryNumValues", Integer.valueOf(preferenceInt), "injectedValues" + getGameName());
        }
    }

    private static String inputStreamToString(InputStream inputStream, String str) throws IOException {
        return new String(inputStreamToString(inputStream), str);
    }

    private static byte[] inputStreamToString(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i2);
        }
    }

    public static boolean isAirplaneModeOn() {
        return Settings.System.getInt(b.getContentResolver(), "airplane_mode_on", 0) != 0;
    }

    public static boolean isConnectedMobile() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            return activeNetworkInfo.getType() == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isConnectedWifi() {
        NetworkInfo activeNetworkInfo;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) getContext().getSystemService("connectivity");
            if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
                return false;
            }
            return activeNetworkInfo.getType() == 1;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isDeviceRooted() {
        return false;
    }

    public static boolean isRooted() {
        return NativeUtils.CheckRoot();
    }

    public static FileInputStream openFileInputStream(String str) throws IOException {
        return getContext().openFileInput(str);
    }

    public static void openSettings() {
        try {
            getContext().startActivity(new Intent("android.settings.SETTINGS"));
        } catch (Exception unused) {
        }
    }

    public static void openWifiSettings() {
        try {
            getContext().startActivity(new Intent("android.settings.WIFI_SETTINGS"));
        } catch (Exception unused) {
        }
    }

    public static void openWirelessSettings() {
        try {
            getContext().startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        } catch (Exception unused) {
        }
    }

    private static void parse(URL url) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        InputStream inputStreamOpenStream;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                inputStreamOpenStream = url.openStream();
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpenStream, b4.L));
                    int line = 1;
                    do {
                        try {
                            line = parseLine(bufferedReader, line);
                        } catch (IOException unused) {
                            bufferedReader2 = bufferedReader;
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            if (inputStreamOpenStream == null) {
                                return;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused2) {
                                    throw th;
                                }
                            }
                            if (inputStreamOpenStream != null) {
                                inputStreamOpenStream.close();
                            }
                            throw th;
                        }
                    } while (line >= 0);
                    bufferedReader.close();
                    if (inputStreamOpenStream == null) {
                        return;
                    }
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            } catch (IOException unused4) {
                return;
            }
        } catch (IOException unused5) {
            inputStreamOpenStream = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            inputStreamOpenStream = null;
        }
        inputStreamOpenStream.close();
    }

    private static void parseJadProperty(String str) {
        int iIndexOf = str.indexOf(CertificateUtil.DELIMITER);
        if (iIndexOf > 0) {
            u.put(str.substring(0, iIndexOf).trim(), str.substring(iIndexOf + 1).trim());
        }
    }

    private static int parseLine(BufferedReader bufferedReader, int i2) {
        try {
            String line = bufferedReader.readLine();
            if (line == null) {
                return -1;
            }
            String strTrim = line.trim();
            if (strTrim.length() != 0) {
                parseJadProperty(strTrim);
            }
        } catch (IOException unused) {
        }
        return i2 + 1;
    }

    public static String readCRC() {
        InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("crc", "raw", getContext().getPackageName()));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toString();
    }

    public static String readContentFile() {
        InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("hdv", "raw", getContext().getPackageName()));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toString();
    }

    public static String readNIH() {
        InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("nih", "raw", getContext().getPackageName()));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toString();
    }

    public static String readSerialKey() {
        InputStream inputStreamOpenRawResource = getContext().getResources().openRawResource(getContext().getResources().getIdentifier("serialkey", "raw", getContext().getPackageName()));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            for (int i2 = inputStreamOpenRawResource.read(); i2 != -1; i2 = inputStreamOpenRawResource.read()) {
                byteArrayOutputStream.write(i2);
            }
            inputStreamOpenRawResource.close();
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toString();
    }

    public static void release() {
        b = null;
    }

    public static void removePreference(String str, String str2) {
        SharedPreferences.Editor editorEdit = getContext().getSharedPreferences(str2, 0).edit();
        editorEdit.remove(str);
        editorEdit.commit();
    }

    public static String retrieveCPUSerial() {
        String str = null;
        if (new File("/proc/cpuinfo").exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/cpuinfo")));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.toLowerCase().contains("serial")) {
                        String[] strArrSplit = line.split(CertificateUtil.DELIMITER);
                        if (strArrSplit.length == 2 && !strArrSplit[1].replace("0", "").trim().equals("")) {
                            str = strArrSplit[1];
                        }
                    }
                }
                bufferedReader.close();
            } catch (Exception unused) {
                str = "";
            }
        }
        return (TextUtils.isEmpty(str) ? "" : str).trim();
    }

    private static String retrieveSavedInjectedIGP() {
        try {
            String preferenceString = getPreferenceString("injectedIGP", "", "injectedIGP" + getGameName());
            if (TextUtils.isEmpty(preferenceString) && canCheckInjectedIGP()) {
                preferenceString = readCRC();
                if (!TextUtils.isEmpty(preferenceString)) {
                    setPreference("injectedIGP", preferenceString, "injectedIGP" + getGameName());
                } else if ((getContext().getApplicationInfo().flags & 128) != 0) {
                    String[] list = new File("/system/app").list();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= list.length) {
                            break;
                        }
                        if (list[i2].endsWith(".apk")) {
                            String str = "/system/app/" + list[i2];
                            if (b.getPackageManager().getPackageArchiveInfo(str, 0).packageName.equals(b.getPackageName())) {
                                preferenceString = inputStreamToString(new PathClassLoader(str, null, PathClassLoader.getSystemClassLoader()).getResourceAsStream("res/raw/crc.bin"), C.UTF8_NAME);
                                if (!TextUtils.isEmpty(preferenceString)) {
                                    setPreference("injectedIGP", preferenceString, "injectedIGP" + getGameName());
                                }
                            }
                        }
                        i2++;
                    }
                    if (TextUtils.isEmpty(preferenceString)) {
                        String[] list2 = new File("/system/priv-app").list();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= list2.length) {
                                break;
                            }
                            if (list2[i3].endsWith(".apk")) {
                                String str2 = "/system/priv-app/" + list2[i3];
                                if (b.getPackageManager().getPackageArchiveInfo(str2, 0).packageName.equals(b.getPackageName())) {
                                    InputStream resourceAsStream = new PathClassLoader(str2, null, PathClassLoader.getSystemClassLoader()).getResourceAsStream("res/raw/crc.bin");
                                    if (resourceAsStream != null) {
                                        preferenceString = inputStreamToString(resourceAsStream, C.UTF8_NAME);
                                        if (!TextUtils.isEmpty(preferenceString)) {
                                            setPreference("injectedIGP", preferenceString, "injectedIGP" + getGameName());
                                        }
                                    }
                                }
                            }
                            i3++;
                        }
                    }
                }
                if (TextUtils.isEmpty(preferenceString)) {
                    preferenceString = "";
                }
                increaseRetryCountIGP();
            }
            return preferenceString;
        } catch (Exception unused) {
            increaseRetryCountIGP();
            return "";
        }
    }

    public static void setBatteryLevel(int i2) {
        D = i2;
    }

    public static void setContext(Context context) {
        b = context;
        setUserAgent();
    }

    public static void setGLInform(String str, String str2, String str3, String str4) {
        o = str;
        p = str2;
        q = str3;
        r = str4;
        com.gameloft.android2d.iap.wrapper.b bVar = A;
        if (bVar != null) {
            bVar.a();
        }
    }

    public static void setGameLanguage(String str) {
        if (str.equalsIgnoreCase("es")) {
            str = "sp";
        }
        int i2 = 0;
        t = 0;
        while (true) {
            String[] strArr = s;
            if (i2 >= strArr.length) {
                return;
            }
            if (strArr[i2].equalsIgnoreCase(str)) {
                t = i2;
                setPreference("save_game_language", strArr[i2], b.getPackageName());
                return;
            }
            i2++;
        }
    }

    public static void setGooleAnalyticsTrackingObj(com.gameloft.android2d.iap.wrapper.b bVar) {
        A = bVar;
    }

    public static void setOverriddenSetting(String str, String str2, String str3) {
        String line;
        int i2;
        FileWriter fileWriter;
        BufferedWriter bufferedWriter;
        try {
            FileReader fileReader = new FileReader(str);
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            while (true) {
                line = bufferedReader.readLine();
                i2 = 0;
                if (line == null) {
                    break;
                }
                if (line.startsWith(str2)) {
                    line = line.substring(0, line.indexOf(o2.i.b) + 1).trim();
                    i2 = 1;
                    break;
                }
            }
            bufferedReader.close();
            fileReader.close();
            if (line != null) {
                fileWriter = new FileWriter(str);
                bufferedWriter = new BufferedWriter(fileWriter);
            } else {
                fileWriter = new FileWriter(str, true);
                bufferedWriter = new BufferedWriter(fileWriter);
            }
            while (i2 >= 0) {
                bufferedWriter.newLine();
                i2--;
            }
            bufferedWriter.write(str2 + o2.i.b + str3);
            bufferedWriter.close();
            fileWriter.close();
        } catch (Exception unused) {
        }
    }

    public static void setPreference(String str, Object obj, String str2) {
        SharedPreferences.Editor editorEdit = getContext().getSharedPreferences(str2, 0).edit();
        if (obj instanceof String) {
            editorEdit.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            editorEdit.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Boolean) {
            editorEdit.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Long) {
            editorEdit.putLong(str, ((Long) obj).longValue());
        }
        editorEdit.commit();
    }

    private static void setUserAgent() {
        try {
            getActivity().runOnUiThread(new a());
        } catch (ClassCastException | Exception unused) {
        }
    }

    public static final void startTrace() {
        Debug.startMethodTracing(b.getPackageName());
    }

    public static void startYoutube(String str) {
    }

    public static final void stopTrace() {
        Debug.stopMethodTracing();
    }
}
