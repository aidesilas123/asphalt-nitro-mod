###### Class com.gameloft.android2d.iap.utils.Device (com.gameloft.android2d.iap.utils.Device)
.class public Lcom/gameloft/android2d/iap/utils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Lcom/gameloft/android2d/iap/utils/a;

.field private static n:Landroid/webkit/WebView;

.field public static o:Landroid/net/wifi/WifiManager;

.field static p:Landroid/net/ConnectivityManager;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;


# instance fields
.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field private w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "eng"

    const-string v2, "en"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fra"

    const-string v2, "fr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "deu"

    const-string v2, "de"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "esl"

    const-string v2, "es"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "spa"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ita"

    const-string v2, "it"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "jpn"

    const-string v2, "jp"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "por"

    const-string v2, "br"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "pt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->a:[[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->b:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->d:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->i:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->j:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->k:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->n:Landroid/webkit/WebView;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->p:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->s:Ljava/lang/String;

    const-string v0, "V007"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->t:Ljava/lang/String;

    const-string v0, "UNLOCK"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->u:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->w:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->InitDeviceValues()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->s:Ljava/lang/String;

    const-string v0, "V007"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->t:Ljava/lang/String;

    const-string v0, "UNLOCK"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->u:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->v:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android2d/iap/utils/Device;->w:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->InitDeviceValues()V

    if-eqz p1, :cond_3e

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    if-eqz p2, :cond_3e

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->m:Lcom/gameloft/android2d/iap/utils/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/a;->e(Z)V

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->m:Lcom/gameloft/android2d/iap/utils/a;

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/a;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/gameloft/android2d/iap/utils/Device;->m:Lcom/gameloft/android2d/iap/utils/a;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/gameloft/android2d/iap/utils/a;->c(I)V

    :cond_3e
    return-void
.end method

.method public static InitDeviceValues()V
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->p:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->p:Landroid/net/ConnectivityManager;

    :cond_12
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v1, v2, :cond_34

    if-eq v1, v3, :cond_31

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2e

    const-string v1, "SIM_ERROR_UNKNOWN"

    goto :goto_36

    :cond_2e
    const-string v1, "SIM_PUK_REQUIRED"

    goto :goto_36

    :cond_31
    const-string v1, "SIM_PIN_REQUIRED"

    goto :goto_36

    :cond_34
    const-string v1, "SIM_ABSENT"

    :goto_36
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->b:Ljava/lang/String;

    if-nez v2, :cond_48

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "HDIDFV"

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/utils/Device;->b:Ljava/lang/String;

    :cond_48
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    if-nez v2, :cond_52

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    :cond_52
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_60

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    :cond_60
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    if-nez v2, :cond_6a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    :cond_6a
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_78

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    :cond_78
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    if-nez v2, :cond_82

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :cond_82
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_90

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :cond_90
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    if-nez v2, :cond_9a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    :cond_9a
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a8

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    :cond_a8
    sget-object v1, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    if-nez v1, :cond_ba

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v1

    if-eq v1, v3, :cond_ba

    const-string v1, "IMEI"

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    :cond_ba
    sget-object v1, Lcom/gameloft/android2d/iap/utils/Device;->i:Ljava/lang/String;

    if-eqz v1, :cond_c6

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cc

    :cond_c6
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->i:Ljava/lang/String;

    :cond_cc
    sget-object v1, Lcom/gameloft/android2d/iap/utils/Device;->j:Ljava/lang/String;

    if-nez v1, :cond_d6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->j:Ljava/lang/String;

    :cond_d6
    sget-object v1, Lcom/gameloft/android2d/iap/utils/Device;->k:Ljava/lang/String;

    if-nez v1, :cond_e0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->k:Ljava/lang/String;

    :cond_e0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/android2d/iap/utils/Device;->l:Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :try_start_ea
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/Device;->getLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->q:Ljava/lang/String;
    :try_end_f4
    .catch Ljava/util/MissingResourceException; {:try_start_ea .. :try_end_f4} :catch_f5

    goto :goto_fe

    :catch_f5
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->a:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->q:Ljava/lang/String;

    :goto_fe
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->IsUseWPIAP()Z

    move-result v0

    if-nez v0, :cond_11d

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getSDPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->r:Ljava/lang/String;

    :try_start_10a
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/Device$a;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/utils/Device$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_10a .. :try_end_118} :catch_119

    goto :goto_11d

    :catch_119
    const-string v0, "GL_EMU_001"

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->d:Ljava/lang/String;

    :cond_11d
    :goto_11d
    new-instance v0, Lcom/gameloft/android2d/iap/utils/a;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/utils/a;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->m:Lcom/gameloft/android2d/iap/utils/a;

    return-void
.end method

.method public static IsWifiEnable()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->o:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/utils/Device;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 1

    const-string v0, "IMEI"

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "hdidfv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getDeviceIMEI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->a:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v3, v2, v1

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_17

    aget-object p0, v2, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    const-string p0, "en"

    return-object p0
.end method

.method public static getLineNumber()Ljava/lang/String;
    .registers 1

    const-string v0, "00"

    return-object v0
.end method

.method private static getSDPath()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "removed"

    if-eq v0, v1, :cond_24

    const-string v1, "unmounted"

    if-eq v0, v1, :cond_24

    const-string v1, "bad_removal"

    if-ne v0, v1, :cond_11

    goto :goto_24

    :cond_11
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, ".gameloft"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    :goto_24
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSimOperator1()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->p:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_12

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->p:Landroid/net/ConnectivityManager;

    :cond_12
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "SIM_ERROR_UNKNOWN"

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    move-object v1, v3

    goto :goto_37

    :cond_2f
    const-string v1, "SIM_PUK_REQUIRED"

    goto :goto_37

    :cond_32
    const-string v1, "SIM_PIN_REQUIRED"

    goto :goto_37

    :cond_35
    const-string v1, "SIM_ABSENT"

    :goto_37
    sget-object v2, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    if-nez v2, :cond_41

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :cond_41
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4f

    sput-object v1, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :cond_4f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_57

    sput-object v3, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :cond_57
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->t0:Ljava/lang/String;

    if-eqz v0, :cond_68

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    return-object v0

    :cond_68
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static hasConnectivity()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_10

    return v0

    :cond_10
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1b

    :catch_1b
    return v0
.end method

.method public static resetDeviceInfo()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->i:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->j:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/gameloft/android2d/iap/utils/a;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->m:Lcom/gameloft/android2d/iap/utils/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/utils/Device;->l:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->j:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SIM_ERROR_UNKNOWN"

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->e:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SIM_ERROR_UNKNOWN"

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->f:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->k:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SIM_ERROR_UNKNOWN"

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->g:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SIM_ERROR_UNKNOWN"

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/gameloft/android2d/iap/utils/Device;->h:Ljava/lang/String;

    :goto_b
    return-object v0
.end method
