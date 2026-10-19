package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
public class PermissionPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private static Activity a;
    private static int b;
    private static int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f2825d;

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        /* JADX INFO: renamed from: com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0213a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0213a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                boolean unused = PermissionPlugin.f2825d = true;
            }
        }

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(PermissionPlugin.a);
            builder.setTitle(this.a).setMessage(this.b).setCancelable(false).setPositiveButton(R.string.UTILS_SKB_OK, new DialogInterfaceOnClickListenerC0213a());
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
        }
    }

    class b implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;
        final /* synthetic */ boolean c;

        class a implements DialogInterface.OnClickListener {
            a() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int unused = PermissionPlugin.c = 1;
            }
        }

        /* JADX INFO: renamed from: com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionPlugin$b$b, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0214b implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0214b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int unused = PermissionPlugin.c = 3;
                try {
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.parse("package:com.gameloft.android.ANMP.GloftAGHM"));
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                    PermissionPlugin.a.startActivity(intent);
                } catch (Exception unused2) {
                    Intent intent2 = new Intent("android.settings.APPLICATION_SETTINGS");
                    intent2.setFlags(DriveFile.MODE_READ_ONLY);
                    PermissionPlugin.a.startActivity(intent2);
                }
            }
        }

        class c implements DialogInterface.OnClickListener {
            c() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                int unused = PermissionPlugin.c = 2;
            }
        }

        b(String str, String str2, boolean z) {
            this.a = str;
            this.b = str2;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            AlertDialog.Builder builder = new AlertDialog.Builder(PermissionPlugin.a);
            builder.setTitle(this.a).setMessage(this.b).setCancelable(false).setNegativeButton(R.string.UTILS_SKB_CANCEL, new a());
            if (this.c) {
                builder.setPositiveButton(R.string.UTILS_SKB_OPEN_SETTINGS, new DialogInterfaceOnClickListenerC0214b());
            } else {
                builder.setPositiveButton(R.string.UTILS_SKB_RETRY, new c());
            }
            AlertDialog alertDialogCreate = builder.create();
            alertDialogCreate.setCancelable(false);
            alertDialogCreate.setCanceledOnTouchOutside(false);
            alertDialogCreate.show();
        }
    }

    public static String GetAliasOfPermission(String str) {
        return str.equals("android.permission.GET_ACCOUNTS") ? "Contacts" : str.equals("android.permission.ACCESS_COARSE_LOCATION") ? "Location" : str.equals("android.permission.SEND_SMS") ? "Sms" : str.equals("android.permission.RECORD_AUDIO") ? "Microphone" : str.equals("android.permission.READ_PHONE_STATE") ? "Phone" : str.equals("android.permission.POST_NOTIFICATIONS") ? "Notification" : "Storage";
    }

    public static boolean IsFirstTimeAskingForPermission(String str) {
        try {
            String strGetAliasOfPermission = GetAliasOfPermission(str);
            StringBuilder sb = new StringBuilder();
            sb.append("firstTimeAskingFor_");
            sb.append(strGetAliasOfPermission);
            return SUtils.getPreferenceInt(sb.toString(), -1, "permissions") == -1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static boolean IsNeverAskAgainTicked(String str) {
        boolean z = !ActivityCompat.shouldShowRequestPermissionRationale(a, str);
        if (IsFirstTimeAskingForPermission(str)) {
            return false;
        }
        return z;
    }

    public static void SetAskedForPermission(String str) {
        try {
            String str2 = "firstTimeAskingFor_" + GetAliasOfPermission(str);
            if (SUtils.getPreferenceInt(str2, -1, "permissions") == -1) {
                SUtils.setPreference(str2, 1, "permissions");
            } else if (SUtils.getPreferenceInt(str2, 0, "permissions") != 0) {
                SUtils.setPreference(str2, 0, "permissions");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private static int askSystemForPermission(String str) {
        b = 0;
        Intent intent = new Intent();
        intent.setClassName("com.gameloft.android.ANMP.GloftAGHM", "com.gameloft.android.ANMP.GloftAGHM.PackageUtils.PermissionActivity");
        intent.putExtra("permissionType", str);
        a.startActivityForResult(intent, 700);
        while (true) {
            int i = b;
            if (i != 0) {
                return i;
            }
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
            }
        }
    }

    public static boolean isContactsPermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.GET_ACCOUNTS");
    }

    public static boolean isLocationPermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.ACCESS_COARSE_LOCATION");
    }

    public static boolean isMicrophonePermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.RECORD_AUDIO");
    }

    public static boolean isNotificationPermissionEnabled() {
        return AndroidUtils.AreNotificationsEnabled();
    }

    public static boolean isPhonePermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.READ_PHONE_STATE");
    }

    public static boolean isSMSPermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.SEND_SMS");
    }

    public static boolean isStoragePermissionEnabled() {
        return AndroidUtils.isPermissionEnabled("android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public static int requestContactsPermission(boolean z) {
        return requestPermission("android.permission.GET_ACCOUNTS", R.string.request_contacts_permission_title, R.string.request_contacts_permission_message, R.string.request_contacts_permission_deny_all_message, R.string.request_contacts_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestLocationPermission(boolean z) {
        return requestPermission("android.permission.ACCESS_COARSE_LOCATION", R.string.request_location_permission_title, R.string.request_location_permission_message, R.string.request_location_permission_deny_all_message, R.string.request_location_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestMicrophonePermission(boolean z) {
        return requestPermission("android.permission.RECORD_AUDIO", R.string.request_mic_permission_title, R.string.request_mic_permission_message, R.string.request_mic_permission_deny_all_message, R.string.request_mic_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestNotificationPermission(boolean z) {
        System.out.println("Tamaaa teesting requestNotificationPermission");
        return requestPermission("android.permission.POST_NOTIFICATIONS", R.string.request_notification_permission_title, R.string.request_notification_permission_message, R.string.request_notification_permission_deny_all_message, R.string.request_notification_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestPermission(String str, int i, int i2, int i3, int i4, boolean z, int i5) {
        return requestPermission(str, a.getString(i), a.getString(i2), a.getString(i3), a.getString(i4), z, a.getString(i5));
    }

    public static int requestPermission(String str, String str2, String str3, String str4, String str5, boolean z, String str6) {
        b = 0;
        if (ContextCompat.checkSelfPermission(SUtils.getApplicationContext(), str) == 0) {
            return 1;
        }
        boolean zIsNeverAskAgainTicked = IsNeverAskAgainTicked(str);
        SetAskedForPermission(str);
        if (zIsNeverAskAgainTicked) {
            if (z) {
                showPermissionsMessage(str6, str4, zIsNeverAskAgainTicked);
            }
            return 0;
        }
        showExplanationMessage(str2, str5);
        boolean z2 = false;
        int i = 1;
        while (!z2) {
            c = 0;
            if (askSystemForPermission(str) == 2) {
                c = 0;
                boolean z3 = !ActivityCompat.shouldShowRequestPermissionRationale(a, str);
                showPermissionsMessage(str6, z3 ? str4 : str3, z3);
                int i2 = c;
                if (i2 == 1) {
                    z2 = true;
                    i = 0;
                }
                if (i2 == 2) {
                    z2 = false;
                }
                if (i2 == 3) {
                    z2 = true;
                    i = 0;
                }
            } else {
                z2 = true;
            }
        }
        return i;
    }

    public static int requestPhonePermission(boolean z) {
        return requestPermission("android.permission.READ_PHONE_STATE", R.string.request_phone_permission_title, R.string.request_phone_permission_message, R.string.request_phone_permission_deny_all_message, R.string.request_phone_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestSMSPermission(boolean z) {
        return requestPermission("android.permission.SEND_SMS", R.string.request_sms_permission_title, R.string.request_sms_permission_message, R.string.request_sms_permission_deny_all_message, R.string.request_sms_permission_explanation, z, R.string.PERMISSION_ERROR_TITLE);
    }

    public static int requestStoragePermission(boolean z) {
        return 1;
    }

    private static void showExplanationMessage(String str, String str2) {
        f2825d = false;
        a.runOnUiThread(new a(str, str2));
        while (!f2825d) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    public static void showPermissionsMessage(int i, int i2, boolean z) {
        showPermissionsMessage(a.getString(i), a.getString(i2), z);
    }

    private static void showPermissionsMessage(String str, String str2, boolean z) {
        a.runOnUiThread(new b(str, str2, z));
        while (c == 0) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        if (i != 700) {
            return false;
        }
        b = i2;
        return true;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        a = activity;
        b = 0;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
    }
}
