package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.applovin.sdk.AppLovinEventParameters;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushBuilder;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders.PushTheme;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.MainActivity;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.iid.FirebaseInstanceId;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class SimplifiedAndroidUtils {
    public static boolean a;
    private static boolean b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f2849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f2850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f2851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f2852g;
    public static String h;
    public static String i;
    static SimplifiedAndroidUtils j;
    public static com.gameloft.android.ANMP.GloftAGHM.PushNotification.a k;
    public static Bundle l;
    public static WeakReference<Activity> m;
    static final String[] n = {"none", "adm", AppMeasurement.FCM_ORIGIN};
    static final boolean o;
    private static BroadcastReceiver p;
    static final String q;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            RemoteImageManager.GetIrisService(SUtils.getApplicationContext());
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            SimplifiedAndroidUtils.nativeSendPNData(intent.getStringExtra("get_broadcast_push"));
        }
    }

    static {
        o = Build.VERSION.SDK_INT < 8;
        p = null;
        q = Environment.getExternalStorageDirectory() + "/Android/data/com.gameloft.android.ANMP.GloftAGHM";
    }

    public static void AddEndpointRecordToDB(String str) {
        if (k == null) {
            com.gameloft.android.ANMP.GloftAGHM.PushNotification.a aVar = new com.gameloft.android.ANMP.GloftAGHM.PushNotification.a(SUtils.getApplicationContext());
            k = aVar;
            aVar.c();
        }
        if (k == null || isEmptyOrNull(str)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", "1");
        contentValues.put(NotificationCompat.CATEGORY_TRANSPORT, AppMeasurement.FCM_ORIGIN);
        contentValues.put("registration_id", str);
        k.d(contentValues);
        BackupDatabase();
    }

    public static void AddGroupIDToPreferences(Context context, int i2) {
        List listGetListGroupIDFromPreferences = GetListGroupIDFromPreferences(context);
        if (listGetListGroupIDFromPreferences == null) {
            listGetListGroupIDFromPreferences = new ArrayList();
        }
        boolean z = false;
        StringBuilder sb = new StringBuilder();
        String str = "";
        sb.append("");
        sb.append(i2);
        String string = sb.toString();
        Iterator it = listGetListGroupIDFromPreferences.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (((String) it.next()).equals(string)) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        listGetListGroupIDFromPreferences.add(string);
        Iterator it2 = listGetListGroupIDFromPreferences.iterator();
        while (it2.hasNext()) {
            str = str + ((String) it2.next()) + "|";
        }
        SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
        editorEdit.putString("PN_GroupId", str);
        editorEdit.commit();
    }

    private static void AddPNMessageIDToPreferences(String str, String str2) {
        List listGetPNMessageIdForType = GetPNMessageIdForType(str2);
        if (listGetPNMessageIdForType == null) {
            listGetPNMessageIdForType = new ArrayList();
        }
        listGetPNMessageIdForType.add(str);
        Iterator it = listGetPNMessageIdForType.iterator();
        String str3 = "";
        while (it.hasNext()) {
            str3 = str3 + ((String) it.next()) + "|";
        }
        String str4 = "LocalPNType_" + str2;
        SharedPreferences.Editor editorEdit = Prefs.get(SUtils.getApplicationContext()).edit();
        editorEdit.putString(str4, str3);
        editorEdit.commit();
    }

    private static void AddPNRecordToDB(Bundle bundle, String str, String str2) {
        String string = bundle.getString("creation_time");
        String string2 = bundle.getString("schedule_time");
        String string3 = bundle.getString("type");
        String string4 = bundle.getString("body");
        if (k == null) {
            com.gameloft.android.ANMP.GloftAGHM.PushNotification.a aVar = new com.gameloft.android.ANMP.GloftAGHM.PushNotification.a(SUtils.getApplicationContext());
            k = aVar;
            aVar.c();
        }
        if (k == null || isEmptyOrNull(string) || isEmptyOrNull(string2) || isEmptyOrNull(str) || isEmptyOrNull(string3) || isEmptyOrNull(string4) || isEmptyOrNull(str2)) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("pn_alarm_id", str2);
        contentValues.put("creation_time", string);
        contentValues.put("schedule_time", string2);
        contentValues.put("message_group", str);
        contentValues.put("type", string3);
        contentValues.put("message_content", string4);
        k.a(contentValues);
        BackupDatabase();
    }

    public static void BackupDatabase() {
        try {
            File file = new File(getSDFolder());
            if (!file.exists()) {
                file.mkdirs();
            }
            if (!file.exists()) {
                return;
            }
            File file2 = new File("/data/data/com.gameloft.android.ANMP.GloftAGHM/databases/PN.db");
            if (!file2.exists()) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(file2);
            FileOutputStream fileOutputStream = new FileOutputStream(getSDFolder() + "/PN.db");
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i2);
            }
        } catch (IOException unused) {
        }
    }

    private static void ClearGroup(Context context, int i2) {
        String str = "LocalPNType_" + Integer.toString(i2);
        SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
        editorEdit.putString(str, null);
        editorEdit.commit();
        GetPNMessageIdForType(Integer.toString(i2));
    }

    private static void ClearStack(Context context, int i2) {
        if (context != null) {
            String strConcat = "PN_stackID_".concat(Integer.toString(i2 + 32));
            SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
            editorEdit.putInt(strConcat, 1);
            editorEdit.commit();
            ClearStackMessages(context, i2);
        }
    }

    private static void ClearStackMessages(Context context, int i2) {
        SharedPreferences.Editor editorEdit = Prefs.get(context).edit();
        int i3 = 0;
        while (i3 < 33) {
            String strConcat = "PN_stackMSG_".concat(Integer.toString(i2 + 32));
            StringBuilder sb = new StringBuilder();
            sb.append("_");
            i3++;
            sb.append(Integer.toString(i3));
            editorEdit.putString(strConcat.concat(sb.toString()), null);
        }
        editorEdit.commit();
    }

    public static int DeleteMessageGroup(int i2) {
        List<String> listGetPNMessageIdForType;
        int i3 = i2 + 101;
        if (GetPNMessageIdForType(Integer.toString(i3)) != null) {
            listGetPNMessageIdForType = GetPNMessageIdForType(Integer.toString(i3));
        } else {
            i3 = i2 + 201;
            if (GetPNMessageIdForType(Integer.toString(i3)) != null) {
                listGetPNMessageIdForType = GetPNMessageIdForType(Integer.toString(i3));
            } else {
                i3 = i2;
                listGetPNMessageIdForType = GetPNMessageIdForType(Integer.toString(i2));
            }
        }
        if (listGetPNMessageIdForType == null) {
            return 1;
        }
        for (String str : listGetPNMessageIdForType) {
            if (isEmptyOrNull(str) || !str.startsWith("PN_LID_")) {
                return 1;
            }
            LocalPushManager.CancelAlarm(SUtils.getActivity(), str);
        }
        ClearGroup(SUtils.getApplicationContext(), i3);
        ClearStack(SUtils.getApplicationContext(), i3);
        com.gameloft.android.ANMP.GloftAGHM.PushNotification.a aVar = k;
        if (aVar == null) {
            return 0;
        }
        aVar.b("message_group", Integer.toString(i3));
        BackupDatabase();
        return 0;
    }

    public static int GetDeviceToken(int i2) {
        if (!isEmptyOrNull(GetRegistrationID())) {
            nativeSendRegistrationData(GetRegistrationID());
            AddEndpointRecordToDB(GetRegistrationID());
            return 0;
        }
        if (!n[i2].equals(AppMeasurement.FCM_ORIGIN)) {
            return 1;
        }
        getFCMRegistrationId();
        return 0;
    }

    public static List<String> GetListGroupIDFromPreferences(Context context) {
        String string = Prefs.get(context).getString("PN_GroupId", null);
        if (string == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    private static List<String> GetPNMessageIdForType(String str) {
        String string = Prefs.get(SUtils.getApplicationContext()).getString("LocalPNType_" + str, null);
        if (string == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(string, "|");
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    public static String GetRegistrationID() {
        String strM = FirebaseInstanceId.getInstance().m();
        return !isEmptyOrNull(strM) ? strM : "";
    }

    public static void Init(Activity activity) {
        m = new WeakReference<>(activity);
        if (j == null) {
            j = new SimplifiedAndroidUtils();
        }
        LocalPushManager.Init();
        Prefs.init(SUtils.getApplicationContext());
        new a().start();
        initTheme(SUtils.getApplicationContext());
        b = true;
        initWithIntent(m.get().getIntent(), SUtils.getApplicationContext());
        IntentFilter intentFilter = new IntentFilter("com.gameloft.android.ANMP.GloftAGHM_pushbroadcast");
        p = new b();
        m.get().registerReceiver(p, intentFilter);
        if (k == null) {
            com.gameloft.android.ANMP.GloftAGHM.PushNotification.a aVar = new com.gameloft.android.ANMP.GloftAGHM.PushNotification.a(SUtils.getApplicationContext());
            k = aVar;
            aVar.c();
            BackupDatabase();
        }
    }

    public static String IsAppLaunchedFromPN() {
        return getMessagePayload(l);
    }

    public static boolean IsDontDisturbEnable() {
        return DontDisturbPolicy.isDontDisturbEnable(SUtils.getApplicationContext());
    }

    static boolean IsDontDisturbeTime() {
        return DontDisturbPolicy.isDontDisturbeTime(SUtils.getApplicationContext());
    }

    public static boolean IsEnable() {
        return Prefs.isEnabled(SUtils.getApplicationContext());
    }

    public static void LaunchAppFromPN(Context context, Intent intent) {
        try {
            Intent intent2 = new Intent();
            intent2.setClassName("com.gameloft.android.ANMP.GloftAGHM", "com.gameloft.android.ANMP.GloftAGHM.MainActivity");
            intent2.setFlags(DriveFile.MODE_READ_ONLY);
            intent2.replaceExtras(intent);
            b = true;
            intent2.setAction("android.intent.action.MAIN");
            intent2.addCategory("android.intent.category.LAUNCHER");
            initWithIntent(intent, context);
            context.startActivity(intent2);
        } catch (Exception unused) {
        }
    }

    public static void LaunchPNClearStack(Context context, Intent intent) {
        int i2;
        try {
            Bundle extras = intent.getExtras();
            if (extras == null || (i2 = extras.getInt("pn_group_ID", -1)) <= -1) {
                return;
            }
            ClearStack(context, i2);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int SendMessage(android.os.Bundle r3, java.lang.String r4, int r5) {
        /*
            r0 = 1
            if (r3 == 0) goto L54
            boolean r1 = isEmptyOrNull(r4)
            if (r1 != 0) goto L54
            if (r5 < 0) goto L54
            int r4 = java.lang.Integer.parseInt(r4)     // Catch: java.lang.Exception -> L53
            if (r4 <= 0) goto L54
            r1 = 2073600(0x1fa400, float:2.905732E-39)
            if (r4 >= r1) goto L54
            java.lang.String r1 = "type"
            java.lang.String r1 = r3.getString(r1)
            boolean r2 = isEmptyOrNull(r1)
            if (r2 != 0) goto L37
            java.lang.String r2 = "launch"
            boolean r2 = r1.equals(r2)
            if (r2 == 0) goto L2d
            int r5 = r5 + 101
            goto L37
        L2d:
            java.lang.String r2 = "info"
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L37
            int r5 = r5 + 201
        L37:
            java.lang.String r1 = java.lang.Integer.toString(r5)
            java.lang.String r2 = "pn_group_ID"
            r3.putString(r2, r1)
            java.lang.String r4 = com.gameloft.android.ANMP.GloftAGHM.PushNotification.LocalPushManager.SetAlarm(r3, r4)
            java.lang.String r1 = java.lang.Integer.toString(r5)
            AddPNMessageIDToPreferences(r4, r1)
            java.lang.String r5 = java.lang.Integer.toString(r5)
            AddPNRecordToDB(r3, r5, r4)
            goto L55
        L53:
            return r0
        L54:
            r4 = 0
        L55:
            boolean r3 = isEmptyOrNull(r4)
            if (r3 == 0) goto L5c
            return r0
        L5c:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils.SendMessage(android.os.Bundle, java.lang.String, int):int");
    }

    public static String SendPushToMyself(Context context, Bundle bundle, String str, String str2, boolean z, int i2) {
        int i3;
        String[] bundleData = getBundleData(bundle);
        if (bundleData == null) {
            return "e";
        }
        String str3 = bundleData[0];
        String str4 = bundleData[1];
        String str5 = bundleData[2];
        if (isEmptyOrNull(str)) {
            str = "1";
        }
        try {
            i3 = Integer.parseInt(str);
        } catch (Exception unused) {
            i3 = 0;
        }
        if (i3 <= 0) {
            return "e";
        }
        SharedPreferences sharedPreferences = Prefs.get(context);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        String string = null;
        String string2 = null;
        for (String str6 : bundle.keySet()) {
            if (str6.equals("infopush")) {
                string = bundle.getString("infopush");
            } else if (str6.equals("per_of_day")) {
                string2 = bundle.getString("per_of_day");
            }
        }
        if (string != null && string2 != null) {
            if (!sharedPreferences.contains("info_" + string)) {
                editorEdit.putInt("info_" + string, Integer.parseInt(string2));
                editorEdit.putInt("count_" + string, 0);
                editorEdit.commit();
            }
        }
        if (i3 > 2073600) {
            return "e";
        }
        String string3 = bundle.getString("type");
        if (!isEmptyOrNull(string3)) {
            if (string3.equals("launch")) {
                i2 += 101;
            } else if (string3.equals("info")) {
                i2 += 201;
            }
        }
        bundle.putString("pn_group_ID", Integer.toString(i2));
        bundle.putString("creation_time", LocalPushManager.GetExpirationTime("0"));
        bundle.putString("schedule_time", LocalPushManager.GetExpirationTime(Integer.toString(i3)));
        String strSetAlarm = LocalPushManager.SetAlarm(bundle, i3);
        AddPNMessageIDToPreferences(strSetAlarm, Integer.toString(i2));
        AddGroupIDToPreferences(context, i2);
        return strSetAlarm;
    }

    public static void SetDontDisturbEnable(boolean z) {
        DontDisturbPolicy.setDontDisturbEnable(SUtils.getApplicationContext(), z);
    }

    public static void SetEnable(Context context, boolean z) {
        Prefs.setEnabled(context, z);
    }

    public static void SetEnable(boolean z) {
        SetEnable(SUtils.getApplicationContext(), z);
    }

    public static void ShowAppDetailsSettings() {
        if (Build.VERSION.SDK_INT >= 9) {
            try {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.setData(Uri.parse("package:com.gameloft.android.ANMP.GloftAGHM"));
                SUtils.getActivity().startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                SUtils.getActivity().startActivity(new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS"));
            }
        }
    }

    public static String decodeString(String str) {
        try {
            return URLDecoder.decode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    static String encodeString(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    public static void generateNotification(Context context, String str, String str2, String str3, Intent intent, Bundle bundle) {
        int i2;
        String[] strArr;
        String str4;
        String str5;
        Intent intent2;
        int i3;
        int i4;
        int i5;
        String str6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        String string = bundle != null ? bundle.getString("pn_group_ID") : null;
        if (isEmptyOrNull(string)) {
            i2 = -1;
        } else {
            try {
                i2 = Integer.parseInt(string);
            } catch (Exception unused) {
                i2 = -1;
            }
        }
        SharedPreferences sharedPreferences = Prefs.get(context);
        String str7 = "_";
        if ((str3.equals("launch") || str3.equals("info")) && Build.VERSION.SDK_INT >= 11) {
            int i6 = i2 == -1 ? str3.equals("launch") ? 100 : 200 : str3.equals("launch") ? 101 : 201;
            int i7 = i6 + 32;
            int i8 = sharedPreferences.getInt("PN_stackID_".concat(Integer.toString(i7)), 1);
            if (i8 == 0) {
                i8 = 31;
            }
            strArr = new String[i8];
            str4 = "PN_stackID_";
            int i9 = i8 - 1;
            strArr[i9] = str;
            int i10 = i8;
            int i11 = 0;
            while (i11 < i9) {
                int i12 = i9;
                String strConcat = "PN_stackMSG_".concat(Integer.toString(i7));
                int i13 = i7;
                StringBuilder sb = new StringBuilder();
                sb.append(str7);
                int i14 = i11 + 1;
                sb.append(Integer.toString(i14));
                strArr[i11] = sharedPreferences.getString(strConcat.concat(sb.toString()), "");
                i11 = i14;
                i9 = i12;
                i7 = i13;
                str7 = str7;
            }
            int i15 = i7;
            str5 = str7;
            Intent intent3 = new Intent(context, (Class<?>) DeletePushService.class);
            intent3.putExtra("pn_group_ID", i6);
            intent.putExtra("pn_group_ID", i6);
            intent2 = intent3;
            i3 = i10;
            i4 = i15;
        } else {
            str5 = "_";
            str4 = "PN_stackID_";
            i4 = sharedPreferences.getInt("notificationID", 0);
            i3 = 0;
            strArr = null;
            intent2 = null;
        }
        initTheme(context);
        intent.putExtra("pn_lib_intent", true);
        PushBuilder builder = PushBuilder.getBuilder(context);
        builder.k(str2);
        builder.f(str);
        builder.j(jCurrentTimeMillis);
        builder.b(true);
        if (i3 > 1) {
            builder.h(i3);
        }
        if (strArr != null) {
            builder.i(strArr);
        }
        if (intent2 != null) {
            builder.e(PendingIntent.getService(context, i4, intent2, 67108864));
        }
        if (str3.equals("play") || str3.equals("launch") || str3.equals("info")) {
            builder.d(PendingIntent.getService(context, i4, intent, 67108864));
        } else {
            builder.d(PendingIntent.getActivity(context, i4, intent, 67108864));
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            String string2 = context.getString(R.string.app_name);
            if (isEmptyOrNull(string2.toString())) {
                string2 = "Asphalt Nitro Mobile Freemium GPlay";
            }
            String string3 = context.getString(R.string.app_name);
            String str8 = isEmptyOrNull(string3) ? "Asphalt Nitro Mobile Freemium GPlay" : string3;
            NotificationChannel notificationChannel = new NotificationChannel("com.gameloft.android.ANMP.GloftAGHM_channel_01", string2, 4);
            notificationChannel.setDescription(str8);
            notificationChannel.enableLights(true);
            notificationChannel.enableVibration(true);
            builder.c("com.gameloft.android.ANMP.GloftAGHM_channel_01");
            if (i3 > 1) {
                builder.g(i3);
            }
            if (DontDisturbPolicy.isDontDisturbeTime(context)) {
                i5 = i3;
                str6 = "notificationID";
                NotificationChannel notificationChannel2 = new NotificationChannel("com.gameloft.android.ANMP.GloftAGHM_silent", string2, 2);
                notificationChannel2.setDescription(str8);
                builder.c("com.gameloft.android.ANMP.GloftAGHM_silent");
                notificationManager.createNotificationChannel(notificationChannel2);
            } else if (!f2850e || h == null) {
                i5 = i3;
                str6 = "notificationID";
                notificationManager.createNotificationChannel(notificationChannel);
            } else {
                try {
                    str6 = "notificationID";
                    try {
                    } catch (Exception e2) {
                        e = e2;
                        i5 = i3;
                    }
                } catch (Exception e3) {
                    e = e3;
                    i5 = i3;
                    str6 = "notificationID";
                }
                try {
                    if (context.getResources().getIdentifier(h, "raw", context.getPackageName()) > 0) {
                        Uri uri = Uri.parse("android.resource://" + context.getPackageName() + "/raw/" + h);
                        AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setContentType(4).setUsage(4).build();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("com.gameloft.android.ANMP.GloftAGHM");
                        sb2.append(h);
                        String string4 = sb2.toString();
                        NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup("com.gameloft.android.ANMP.GloftAGHM_custom_sounds", string2);
                        i5 = i3;
                        NotificationChannel notificationChannel3 = new NotificationChannel(string4, string2, 4);
                        notificationManager.createNotificationChannelGroup(notificationChannelGroup);
                        notificationChannel3.setDescription(str8);
                        notificationChannel3.enableLights(true);
                        notificationChannel3.enableVibration(true);
                        notificationChannel3.setSound(uri, audioAttributesBuild);
                        notificationChannel3.setGroup("com.gameloft.android.ANMP.GloftAGHM_custom_sounds");
                        builder.c(string4);
                        notificationManager.createNotificationChannel(notificationChannel3);
                    } else {
                        i5 = i3;
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                } catch (Exception e4) {
                    e = e4;
                    e.printStackTrace();
                }
            }
        } else {
            i5 = i3;
            str6 = "notificationID";
        }
        Notification notificationA = builder.a();
        int i16 = Build.VERSION.SDK_INT;
        if (i16 > 25) {
            notificationManager.createNotificationChannel(getChannel());
        }
        notificationManager.notify(i4, notificationA);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if ((str3.equals("launch") || str3.equals("info")) && i16 >= 11) {
            editorEdit.putString("PN_stackMSG_".concat(Integer.toString(i4)).concat(str5 + Integer.toString(i5 % 32)), str);
            editorEdit.putInt(str4.concat(Integer.toString(i4)), (i5 + 1) % 32);
        } else {
            editorEdit.putInt(str6, (i4 + 1) % 32);
        }
        editorEdit.commit();
    }

    private static String[] getBundleData(Bundle bundle) {
        String str = new String();
        String str2 = new String();
        String str3 = new String();
        String[] strArr = new String[3];
        if (bundle == null) {
            return null;
        }
        for (String str4 : bundle.keySet()) {
            if (str4.equals("body")) {
                str2 = bundle.getString("body");
            } else if (str4.equals(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER)) {
                str = bundle.getString(AppLovinEventParameters.USER_ACCOUNT_IDENTIFIER);
            } else if (!isEmptyOrNull(str4) && bundle.getString(str4) != null) {
                str3 = str3 + "&X_" + str4 + o2.i.b + encodeString(bundle.getString(str4));
            }
        }
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
        return strArr;
    }

    public static NotificationChannel getChannel() {
        NotificationChannel notificationChannel = new NotificationChannel("GL_Channel", "Gameloft", 2);
        notificationChannel.setDescription("Gameloft");
        notificationChannel.enableLights(true);
        notificationChannel.setLightColor(SupportMenu.CATEGORY_MASK);
        notificationChannel.setShowBadge(true);
        notificationChannel.enableVibration(true);
        notificationChannel.setVibrationPattern(new long[]{100, 200, 300, 400, 500, 400, 300, 200, 400});
        return notificationChannel;
    }

    public static void getFCMRegistrationId() {
        try {
            FirebaseInstanceId.getInstance().m();
        } catch (Exception unused) {
        }
    }

    public static Intent getLaunchIntent(Context context, String str, String str2, String str3, Bundle bundle) {
        if (!str2.equals("url") && !str2.equals("igpcode")) {
            if (!str2.equals("play") && !str2.equals("launch")) {
                Intent intent = new Intent(context, (Class<?>) DeletePushService.class);
                if (bundle == null) {
                    return intent;
                }
                intent.putExtra("pn_data_bundle", bundle);
                return intent;
            }
            Intent intent2 = new Intent(context, (Class<?>) LaunchPushService.class);
            if (bundle != null) {
                intent2.putExtra("pn_data_bundle", bundle);
            }
            if (str2.equals("play")) {
                intent2.putExtra("pn_goto_multiplayer", true);
            }
            return intent2;
        }
        if (!isEmptyOrNull(str3)) {
            try {
                if (str2.equals("igpcode")) {
                    String str4 = str3 + "&hdidfv=" + Device.getHDIDFV();
                    Locale locale = Locale.getDefault();
                    str3 = (((((str4 + "&ver=1.8.0a") + "&d=" + encodeString(Build.MODEL)) + "&f=" + encodeString(Device.getDeviceFirmware())) + "&game_ver=1.8.0a") + "&country=" + encodeString(locale.getCountry())) + "&lg=" + encodeString(locale.getLanguage());
                }
                Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(str3));
                intent3.setFlags(DriveFile.MODE_READ_ONLY);
                return intent3;
            } catch (Exception unused) {
            }
        }
        Intent intent4 = new Intent();
        intent4.setFlags(DriveFile.MODE_READ_ONLY);
        return intent4;
    }

    public static String getMessagePayload(Bundle bundle) {
        String string;
        if (bundle != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (String str : bundle.keySet()) {
                    if (str.equals("pn_launch_game")) {
                        bundle.getInt(str);
                    }
                    jSONObject.put(str, bundle.get(str));
                }
                string = jSONObject.toString();
            } catch (Exception unused) {
                string = "";
            }
        } else {
            string = "";
        }
        l = null;
        return string;
    }

    private static String getSDFolder() {
        return "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files";
    }

    static void initTheme(Context context) {
        PushTheme.init(context);
    }

    static void initWithIntent(Intent intent, Context context) {
        if (intent != null) {
            Bundle extras = intent.getExtras();
            if (intent.getData() != null && !intent.getDataString().isEmpty() && intent.getAction().equals("android.intent.action.VIEW")) {
                ((MainActivity) m.get()).k = intent;
                a = true;
            }
            if (extras == null || !extras.getBoolean("pn_lib_intent", false)) {
                return;
            }
            c = extras.getBoolean("pn_goto_multiplayer", false);
            l = new Bundle();
            Bundle bundle = extras.getBundle("pn_data_bundle");
            if (bundle != null) {
                l.putAll(bundle);
            }
            l.putInt("pn_launch_game", b ? 1 : 0);
            l.putInt("pn_goto_multiplayer", c ? 1 : 0);
            a = true;
            extras.remove("pn_goto_multiplayer");
            extras.remove("pn_data_bundle");
            int i2 = extras.getInt("pn_group_ID", -1);
            if (i2 > -1) {
                ClearStack(SUtils.getApplicationContext(), i2);
            }
        }
    }

    private static boolean isEmptyOrNull(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isTypeBlock(String str) {
        return false;
    }

    public static native void nativeInit();

    public static native void nativeResetPNDataTracking();

    public static native void nativeSendPNData(String str);

    public static native void nativeSendPNDataToTracking(int i2, String str);

    public static native void nativeSendRegistrationData(String str);

    public static void setTokenReady() {
    }
}
