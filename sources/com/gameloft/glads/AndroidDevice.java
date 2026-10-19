package com.gameloft.glads;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.CalendarContract;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import androidx.core.content.ContextCompat;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.security.CertificateUtil;
import com.kidoz.sdk.api.players.web_player.WebPreferenceConstants;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidDevice {
    public static boolean AddCalendarEvent(String str) {
        try {
            if (str.endsWith(CertificateUtil.DELIMITER)) {
                str = str.substring(0, str.length() - 1);
            }
            JSONObject jSONObject = new JSONObject(str);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
            Date date = simpleDateFormat.parse(jSONObject.getString("begintime"));
            Date date2 = simpleDateFormat.parse(jSONObject.getString("endtime"));
            String string = jSONObject.getString("title");
            Utils.GetContext().startActivity(new Intent("android.intent.action.INSERT").setData(CalendarContract.Events.CONTENT_URI).putExtra("beginTime", date.getTime()).putExtra(SDKConstants.PARAM_END_TIME, date2.getTime()).putExtra("title", string).putExtra("description", jSONObject.getString("description")).putExtra("eventLocation", jSONObject.getString(WebPreferenceConstants.LOCATION)).putExtra("availability", 0));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static float GetDIPScaleFactor() {
        return 160.0f / GetDisplayMetrics().densityDpi;
    }

    private static DisplayMetrics GetDisplayMetrics() {
        Display defaultDisplay = ((WindowManager) Utils.GetContext().getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics;
    }

    public static float GetLogicalDensity() {
        DisplayMetrics displayMetricsGetDisplayMetrics = GetDisplayMetrics();
        return Build.VERSION.SDK_INT >= 24 ? displayMetricsGetDisplayMetrics.xdpi / 160.0f : displayMetricsGetDisplayMetrics.density;
    }

    public static float GetScreenXDPI() {
        return GetDisplayMetrics().xdpi;
    }

    public static float GetScreenYDPI() {
        return GetDisplayMetrics().ydpi;
    }

    public static boolean HasStoragePermission() {
        return ContextCompat.checkSelfPermission(Utils.GetContext(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    public static void RequestStoragePermission() {
        Utils.GetActivity().startActivity(new Intent(Utils.GetActivity(), (Class<?>) RequestPermissionActivity.class));
    }

    public static void SaveScreenshot(String str) {
        try {
            byte[] bArrDecode = Base64.decode(str, 0);
            long jCurrentTimeMillis = System.currentTimeMillis();
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM), "GLCode_" + jCurrentTimeMillis + ".png");
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArrDecode);
            fileOutputStream.close();
            Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
            intent.setData(Uri.fromFile(file));
            Utils.GetContext().sendBroadcast(intent);
        } catch (Exception unused) {
        }
    }
}
