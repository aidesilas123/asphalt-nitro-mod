###### Class com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils (com.gameloft.android.ANMP.GloftAGHM.PackageUtils.AndroidUtils)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$b;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;

.field private static c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AreNotificationsEnabled()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static DeleteFile(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public static Device_GetDefaultScreenOrientation()I
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->P()I

    move-result v0

    return v0
.end method

.method public static DisableUserLocation()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->DisableUserLocation()V

    return-void
.end method

.method public static EnableUserLocation()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->EnableUserLocation()V

    return-void
.end method

.method public static ExitApplication(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->N(Z)V

    return-void
.end method

.method public static GenericUnzipArchive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->genericUnzipArchive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static GetActivity()Landroid/app/Activity;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static GetAndroidID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetApkPath()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_8
    const-string v1, "com.gameloft.android.ANMP.GloftAGHM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_15
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0
.end method

.method public static GetAssetAsString(Ljava/lang/String;)[B
    .registers 4

    :try_start_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_d
    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static GetAssetManager()Landroid/content/res/AssetManager;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static GetBrowserBookmarks(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->GetBrowserBookmarks(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetBrowserHistory(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->GetBrowserHistory(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetCPUSerial()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->retrieveCPUSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetCarrierAgent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->retrieveDeviceCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetCountry()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->retrieveDeviceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDefaultIGP()Ljava/lang/String;
    .registers 1

    const-string v0, "AGHM"

    return-object v0
.end method

.method public static GetDeviceIMEI()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->isPermissionEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_20

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    :goto_1c
    if-nez v1, :cond_1f

    goto :goto_20

    :cond_1f
    move-object v0, v1

    :catch_20
    :goto_20
    return-object v0
.end method

.method public static GetDeviceLanguage()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->retrieveDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceManufacturer()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getPhoneManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDeviceModel()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetDiskFreeSpace(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getFreeSpace(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetDiskTotalSpace()I
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getTotalSpace()I

    move-result v0

    return v0
.end method

.method public static GetFirmware()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getDeviceFirmware()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetGameName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getGameName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetGoogleAdId()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getGoogleAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetGoogleAdIdStatus()I
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getGoogleAdIdStatus()I

    move-result v0

    return v0
.end method

.method public static GetHDIDFV()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetInjectedIGP()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getInjectedIGP(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetInjectedSerialKey()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getInjectedSerialKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastMemoryWarning()I
    .registers 3

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    return v0
.end method

.method public static GetMacAddress()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMetaDataValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetPhoneDevice()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getPhoneDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPhoneProduct()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getPhoneProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPreferenceBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceBoolean(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static GetPreferenceInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceInt(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GetPreferenceLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p2, p3, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceLong(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static GetPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetSerial()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetSystemUpTimeMillis()J
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSystemUpTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetUserAgent()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetVKeyboardText()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->GetVirtualKeyboardText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetXDpi()F
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    return v0
.end method

.method public static GetYDpi()F
    .registers 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    return v0
.end method

.method public static HideKeyboard()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->HideKeyboard()V

    return-void
.end method

.method public static HttpExecuteAsync(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$b;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    goto :goto_15

    :catchall_f
    move-exception p0

    goto :goto_16

    :catch_11
    move-exception p0

    :try_start_12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_f

    :goto_15
    return-void

    :goto_16
    throw p0
.end method

.method public static IsKeyboardVisible()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->isKeyboardVisible()Z

    move-result v0

    return v0
.end method

.method public static IsMusicActive()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public static IsSimReady()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->isSimReady()Z

    move-result v0

    return v0
.end method

.method public static IsVideoCompleted()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static LaunchBrowser(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_26

    :cond_a
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_22

    const/4 p0, 0x1

    return p0

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    :goto_26
    return v0
.end method

.method public static LaunchVideoPlayer(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static LaunchWifiSettings()Z
    .registers 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    const/4 v0, 0x1

    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static MinimizeApplication()V
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->U()V

    return-void
.end method

.method public static RemoveDirectoryRecursively(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->removeDirectoryRecursively(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static RemovePreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->removePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static RetrieveDataPath()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, ""

    return-object v0

    :cond_e
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RetrieveObbPath()Ljava/lang/String;
    .registers 1

    const-string v0, "NA"

    return-object v0
.end method

.method public static RetrieveSDCardPath()Ljava/lang/String;
    .registers 1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RetrieveSavePath()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static RetrieveTempPath()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static SavePreferenceBool(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static SavePreferenceInt(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static SavePreferenceLong(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static SavePreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static SetActivityRef(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setActivity(Landroid/app/Activity;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->init()V

    :cond_11
    return-void
.end method

.method public static SetKeepScreenOn(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->W(Z)V

    return-void
.end method

.method public static SetOrientation(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    invoke-virtual {v0, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->X(Z)V

    return-void
.end method

.method public static SetVKeyboardText(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->SetKeyboardText(Ljava/lang/String;)V

    return-void
.end method

.method public static ShowCannotGoBack()V
    .registers 1

    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->showCantGoBackPopup(I)V

    return-void
.end method

.method public static ShowGameDialog(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->d:Z

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->e:Z

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_11
    sget-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->d:Z

    if-nez p0, :cond_1d

    const-wide/16 p0, 0x1f4

    :try_start_17
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_11

    :catch_1b
    nop

    goto :goto_11

    :cond_1d
    sget-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->e:Z

    return p0
.end method

.method public static ShowKeyboard(Ljava/lang/String;IIII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/VirtualKeyboard;->ShowKeyboard(Ljava/lang/String;IIII)V

    return-void
.end method

.method public static ShowToastMessage(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->ShowToastMessage(Ljava/lang/String;I)V

    return-void
.end method

.method public static ShowWelcomeScreen(I)V
    .registers 1

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->d:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->e:Z

    return p0
.end method

.method public static getUserLocationAccuracy()F
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getUserLocationAccuracy()F

    move-result v0

    return v0
.end method

.method public static getUserLocationLatitude()D
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getUserLocationLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUserLocationLongitude()D
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getUserLocationLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getUserLocationStatus()I
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getUserLocationStatus()I

    move-result v0

    return v0
.end method

.method public static getUserLocationTime()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/LocationPlugin;->getUserLocationTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initBatteryInfo()V
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;->SetInitialBatteryState(Landroid/content/Context;)V

    return-void
.end method

.method public static initCheckConnectionType()I
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;->CheckConnectionType(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static isPermissionEnabled(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static onPause()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnPause()V

    return-void
.end method

.method public static onPostNativePause()V
    .registers 0

    return-void
.end method

.method public static onPostNativeResume()V
    .registers 4

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static onPreNativePause()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->b:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsNetworkStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->c:Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/UtilsBatteryStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static onPreNativeResume()V
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/AndroidUtils;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/JNIBridge;->NativeOnResume()V

    return-void
.end method

.method public static retrieveBarrels()[I
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->retrieveBarrels()[I

    move-result-object v0

    return-object v0
.end method
