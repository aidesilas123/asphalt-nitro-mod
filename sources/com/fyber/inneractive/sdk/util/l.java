package com.fyber.inneractive.sdk.util;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.gameloft.adsmanager.JavaUtils;
import com.json.o2;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class l {
    public static Application a;

    public static class a {
        public static Map<String, String> a = new HashMap();
    }

    public static int a(float f2) {
        return (int) (TypedValue.applyDimension(1, f2, IAConfigManager.M.v.a().getResources().getDisplayMetrics()) + 0.5f);
    }

    public static int a(int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) IAConfigManager.M.v.a().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return Math.round((i * displayMetrics.density) + 0.5f);
    }

    public static int a(Context context) {
        Window window;
        Rect rect = new Rect();
        if ((context instanceof Activity) && (window = ((Activity) context).getWindow()) != null) {
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
        }
        return rect.top;
    }

    public static int a(Context context, int i) {
        Window window;
        View viewFindViewById = (!(context instanceof Activity) || (window = ((Activity) context).getWindow()) == null) ? null : window.findViewById(R.id.content);
        if (viewFindViewById != null) {
            return viewFindViewById.getTop() - i;
        }
        return 0;
    }

    public static Application a() {
        return a;
    }

    public static String a(String str, Collection<Integer> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next()));
        }
        return b(str, arrayList);
    }

    public static void a(View view, int i, int i2) {
        if (view == null || view.getLayoutParams() == null) {
            return;
        }
        view.getLayoutParams().width = b(i);
        view.getLayoutParams().height = b(i2);
    }

    public static void a(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean a(String str, Context context, byte[] bArr) {
        FileOutputStream fileOutputStreamOpenFileOutput;
        try {
            fileOutputStreamOpenFileOutput = context.openFileOutput(str, 0);
        } catch (Throwable unused) {
            fileOutputStreamOpenFileOutput = null;
        }
        try {
            fileOutputStreamOpenFileOutput.write(bArr);
            fileOutputStreamOpenFileOutput.flush();
            return true;
        } catch (Throwable unused2) {
            try {
                IAlog.a("writeFileWithContext failed writing %s", str);
                q.a(fileOutputStreamOpenFileOutput);
                return false;
            } finally {
                q.a(fileOutputStreamOpenFileOutput);
            }
        }
    }

    public static boolean a(String... strArr) {
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= strArr.length) {
                return true;
            }
            try {
                Class.forName(strArr[i]);
            } catch (ClassNotFoundException unused) {
                z = false;
            }
            if (!z) {
                return false;
            }
            i++;
        }
    }

    public static int b(int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) IAConfigManager.M.v.a().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return (int) ((i * displayMetrics.density) + 0.5f);
    }

    public static String b() {
        try {
            return Environment.getExternalStorageState();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String b(Context context) {
        if (context == null) {
            return "";
        }
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr.length <= 0) {
                return "";
            }
            Signature signature = signatureArr[0];
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(signature.toByteArray());
            byte[] bArrDigest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & 255);
                if (hexString.length() == 1) {
                    sb.append("0");
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String b(String str, Collection<String> collection) {
        return Build.VERSION.SDK_INT >= 26 ? com.applovin.impl.mediation.d.q.a(str, collection) : TextUtils.join(str, collection);
    }

    public static boolean b(String str) {
        try {
            return a.checkCallingOrSelfPermission(str) == 0;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int c() {
        Application application = a;
        int i = (application == null || application.getResources() == null || application.getResources().getConfiguration() == null) ? 1 : application.getResources().getConfiguration().orientation;
        try {
            if (Settings.System.getInt(application.getContentResolver(), "accelerometer_rotation", 0) != 1) {
                i = 1;
            }
        } catch (Throwable th) {
            IAlog.a("failed getOrientation. returning portrait orientation", th, new Object[0]);
        }
        Object[] objArr = new Object[1];
        objArr[0] = i == 1 ? o2.h.D : o2.h.C;
        IAlog.a("The device orientation: %s", objArr);
        return i;
    }

    public static int c(int i) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) IAConfigManager.M.v.a().getSystemService("window");
        if (windowManager == null) {
            return i;
        }
        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        return (int) ((i / displayMetrics.density) + 0.5f);
    }

    public static String c(String str) {
        String string = (String) ((HashMap) a.a).get(str);
        if (TextUtils.isEmpty(string)) {
            IAlog.a("Assets cache: reading file: %s", str);
            try {
                InputStream inputStreamOpen = a.getAssets().open(str, 3);
                StringBuffer stringBuffer = new StringBuffer();
                byte[] bArr = new byte[4096];
                for (int i = 0; i != -1; i = inputStreamOpen.read(bArr)) {
                    stringBuffer.append(new String(bArr, 0, i));
                }
                inputStreamOpen.close();
                string = stringBuffer.toString();
                IAlog.a("Assets cache: success - %s", str);
            } catch (IOException e2) {
                IAlog.a("Assets cache: Could not read response from file", new Object[0]);
                q.b(e2);
            }
            if (!TextUtils.isEmpty(string)) {
                ((HashMap) a.a).put(str, string);
            }
        } else {
            IAlog.a("Assets cache: returning cached assets for %s", str);
        }
        return string;
    }

    public static int d() {
        int i;
        WindowManager windowManager;
        Display defaultDisplay;
        if (a == null || (windowManager = (WindowManager) IAConfigManager.M.v.a().getSystemService("window")) == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            i = -1;
        } else {
            Point point = new Point();
            defaultDisplay.getSize(point);
            i = point.y;
        }
        if (i != -1) {
            return i;
        }
        try {
            DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
            if (displayMetrics != null) {
                i = displayMetrics.heightPixels;
            }
        } catch (Throwable unused) {
        }
        if (i == -1) {
            return 480;
        }
        return i;
    }

    @SuppressLint({"NewApi"})
    public static Drawable d(int i) {
        return Build.VERSION.SDK_INT >= 21 ? IAConfigManager.M.v.a().getDrawable(i) : IAConfigManager.M.v.a().getResources().getDrawable(i);
    }

    public static int e() {
        int i;
        WindowManager windowManager;
        Display defaultDisplay;
        if (a == null || (windowManager = (WindowManager) IAConfigManager.M.v.a().getSystemService("window")) == null || (defaultDisplay = windowManager.getDefaultDisplay()) == null) {
            i = -1;
        } else {
            Point point = new Point();
            defaultDisplay.getSize(point);
            i = point.x;
        }
        if (i != -1) {
            return i;
        }
        try {
            DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
            if (displayMetrics != null) {
                i = displayMetrics.widthPixels;
            }
        } catch (Throwable unused) {
        }
        return i == -1 ? JavaUtils.Constants.BANNER_WIDTH_DP : i;
    }

    public static String f() {
        IAConfigManager iAConfigManager;
        int i = 0;
        while (true) {
            iAConfigManager = IAConfigManager.M;
            if (iAConfigManager.y.c.compareAndSet(true, true) || i >= 25) {
                break;
            }
            IAlog.a("UserAgentProvider | waiting on user agent", new Object[0]);
            try {
                Thread.sleep(100L);
            } catch (InterruptedException unused) {
            }
            i++;
        }
        return iAConfigManager.y.a();
    }
}
