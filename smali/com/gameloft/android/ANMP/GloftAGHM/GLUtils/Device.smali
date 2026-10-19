###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final a:[[Ljava/lang/String;

.field private static b:Landroid/telephony/TelephonyManager;

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

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I

.field private static q:Landroid/webkit/WebView;

.field public static r:Landroid/net/wifi/WifiManager;

.field static s:Landroid/net/ConnectivityManager;

.field private static t:I

.field private static u:Ljava/lang/String;

.field private static v:[B


# instance fields
.field private final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v0, 0x9

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "eng"

    const-string v2, "en"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fra"

    const-string v3, "fr"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "deu"

    const-string v4, "de"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "esl"

    const-string v4, "es"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "spa"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "ita"

    const-string v4, "it"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "jpn"

    const-string v4, "jp"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "por"

    const-string v4, "br"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v0, v5

    const-string v4, "pt"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->a:[[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->c:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->i:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->k:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->o:Ljava/lang/String;

    const/4 v1, -0x1

    sput v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->q:Landroid/webkit/WebView;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    new-array v0, v3, [B

    aput-byte v2, v0, v2

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->v:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4"

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->w:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->y:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->InitDeviceValues()V

    return-void
.end method

.method private static InitDeviceValues()V
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->initGoogleAdId()V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->s:Landroid/net/ConnectivityManager;

    :cond_15
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->setDeviceInfo()V

    :try_start_18
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSimState()Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1d

    goto :goto_1f

    :catch_1d
    const-string v0, "SIM_ERROR_UNKNOWN"

    :goto_1f
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->c:Ljava/lang/String;

    if-nez v1, :cond_29

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->c:Ljava/lang/String;

    :cond_29
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    if-nez v1, :cond_33

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    :cond_33
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_43

    :cond_41
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    :cond_43
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    :cond_4d
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5d

    :cond_5b
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    :cond_5d
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_6d

    :try_start_62
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6a} :catch_6b

    goto :goto_6d

    :catch_6b
    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;

    :cond_6d
    :goto_6d
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;

    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7d

    :cond_7b
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->g:Ljava/lang/String;

    :cond_7d
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;

    if-nez v1, :cond_90

    :try_start_81
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_8d} :catch_8e

    goto :goto_90

    :catch_8e
    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;

    :cond_90
    :goto_90
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;

    if-eqz v1, :cond_9e

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a0

    :cond_9e
    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->h:Ljava/lang/String;

    :cond_a0
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->i:Ljava/lang/String;

    if-eqz v0, :cond_ac

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    :cond_ac
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->i:Ljava/lang/String;

    :cond_b2
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;

    if-nez v0, :cond_b9

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getNetworkCountryIso()Ljava/lang/String;

    :cond_b9
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->k:Ljava/lang/String;

    if-nez v0, :cond_ca

    :try_start_bd
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->k:Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c5} :catch_c6

    goto :goto_ca

    :catch_c6
    const-string v0, ""

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->k:Ljava/lang/String;

    :cond_ca
    :goto_ca
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->l:Z

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->createUniqueCode()I

    move-result v0

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->t:I

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->createUniqueCodeV2()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->u:Ljava/lang/String;

    :try_start_de
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d:Ljava/lang/String;

    if-nez v0, :cond_ea

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$b;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$b;-><init>()V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_ea
    .catch Ljava/lang/ClassCastException; {:try_start_de .. :try_end_ea} :catch_ea

    :catch_ea
    :cond_ea
    return-void
.end method

.method public static IsWifiEnable()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->r:Landroid/net/wifi/WifiManager;

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

.method public static ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method public static a()[B
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->c:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->v:[B

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$002(I)I
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    return p0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->o:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Landroid/webkit/WebView;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->q:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->q:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static b()[B
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->v:[B

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static c()[B
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->i:Ljava/lang/String;

    if-nez v0, :cond_7

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->v:[B

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static createUniqueCode()I
    .registers 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x40c15c8000000000L    # 8889.0

    mul-double v0, v0, v2

    const-wide v2, 0x40915c0000000000L    # 1111.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static createUniqueCodeV2()Ljava/lang/String;
    .registers 5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    :goto_e
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-char v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2a
    return-object v2
.end method

.method public static d()[B
    .registers 1

    const-string v0, "1.8.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized d1()Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_8e

    if-nez v1, :cond_c

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_c
    :try_start_c
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_16

    const-string v2, "unknown"
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_8e

    if-eq v1, v2, :cond_16

    monitor-exit v0

    return-object v1

    :cond_16
    :try_start_16
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.serialno"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_44

    const-string v2, "unknown"
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_40} :catch_44
    .catchall {:try_start_16 .. :try_end_40} :catchall_8e

    if-eq v1, v2, :cond_44

    monitor-exit v0

    return-object v1

    :catch_44
    :cond_44
    :try_start_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDFolder"

    const-string v3, "/sdcard/Android/data/com.gameloft.android.ANMP.GloftAGHM/files"

    const-string v4, "MainActivityPrefs"

    invoke-static {v2, v3, v4}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8c

    :cond_6b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->WriteFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7e
    .catchall {:try_start_44 .. :try_end_7e} :catchall_8e

    :try_start_7e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {v3}, Ljava/io/File;->setReadOnly()Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8c} :catch_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_8e

    :catch_8c
    :cond_8c
    monitor-exit v0

    return-object v2

    :catchall_8e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static e(I)V
    .registers 1

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->t:I

    return-void
.end method

.method public static f()[B
    .registers 1

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_8

    :cond_8
    return-object v1
.end method

.method public static getDemoCode()Ljava/lang/String;
    .registers 1

    const-string v0, "AGHM"

    return-object v0
.end method

.method public static getDevice()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceFirmware()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceIMEI()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .registers 3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->IsWifiEnable()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d1()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGLDID()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hdidfv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGoogleAdId()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_b

    return-object v1

    :cond_b
    const/4 v0, 0x0

    const-string v2, "isUnderage"

    const-string v3, "isUnderagePref"

    invoke-static {v2, v0, v3}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AGEAGEAGE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    return-object v1

    :cond_2d
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getGoogleAdIdStatus()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    return v0
.end method

.method public static declared-synchronized getHDIDFV()Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_8c

    monitor-exit v0

    return-object v1

    :cond_f
    :try_start_f
    const-string v1, ""

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    const-string v1, "HDIDFV"

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_8c

    :try_start_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_31} :catch_32
    .catchall {:try_start_1b .. :try_end_31} :catchall_8c

    goto :goto_36

    :catch_32
    :try_start_32
    const-string v1, ""

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    :cond_36
    :goto_36
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    const-string v1, "HDIDFVVersion"

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_32 .. :try_end_48} :catchall_8c

    monitor-exit v0

    return-object v1

    :cond_4a
    :try_start_4a
    const-string v1, "generator"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/hdidfv/HDIDFV;->getHDIDFV()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    const-string v1, "HEI"

    const-string v2, "8200"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/gameloft/android/hdidfv/HDIDFV;->getHDIDFVVersion()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-string v1, "HDIDFV"

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HDIDFVVersion"

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_88

    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->m:Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_4a .. :try_end_86} :catchall_8c

    monitor-exit v0

    return-object v1

    :cond_88
    :try_start_88
    const-string v1, ""
    :try_end_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_8c

    monitor-exit v0

    return-object v1

    :catchall_8c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getHDIDFVVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->n:Ljava/lang/String;

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method public static getHostName()[B
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->a:[[Ljava/lang/String;

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

    const-string v0, ""

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    return-object v1

    :cond_1f
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_29} :catch_2d

    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    return-object v0

    :catch_2d
    :cond_2d
    :goto_2d
    return-object v1
.end method

.method public static getNetworkCountryIso()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;

    if-nez v0, :cond_13

    :try_start_4
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->setDeviceInfo()V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_10

    goto :goto_13

    :catch_10
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;

    :cond_13
    :goto_13
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    const-string v1, "SIM_ERROR_UNKNOWN"

    if-nez v0, :cond_1a

    :try_start_6
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->setDeviceInfo()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSimState()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_17

    move-object v1, v0

    goto :goto_1a

    :catch_17
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    :cond_1a
    :goto_1a
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    :cond_28
    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    :cond_2a
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperatorName()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    const-string v1, "SIM_ERROR_UNKNOWN"

    if-nez v0, :cond_1e

    :try_start_6
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->setDeviceInfo()V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getSimState()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1b

    move-object v1, v0

    goto :goto_1e

    :catch_1b
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    :cond_1e
    :goto_1e
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_2c
    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    :cond_2e
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneDevice()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneManufacturer()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneModel()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneProduct()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->ValidateStringforURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerial()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getSerialNo()Ljava/lang/String;
    .registers 7

    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.serialno"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_35

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_35

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    return-object v1

    :catch_35
    :cond_35
    :goto_35
    return-object v0
.end method

.method public static getSimState()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    const-string v0, "SIM_ERROR_UNKNOWN"

    goto :goto_1a

    :cond_12
    const-string v0, "SIM_PUK_REQUIRED"

    goto :goto_1a

    :cond_15
    const-string v0, "SIM_PIN_REQUIRED"

    goto :goto_1a

    :cond_18
    const-string v0, "SIM_ABSENT"

    :goto_1a
    return-object v0
.end method

.method public static getSystemUpTimeMillis()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUniqueCode()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->t:I

    return v0
.end method

.method public static getUniqueCodeV2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->InitDeviceValues()V

    return-void
.end method

.method public static initGoogleAdId()V
    .registers 2

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x3

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$a;

    invoke-direct {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$a;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_10
    return-void
.end method

.method public static isSimReady()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->setDeviceInfo()V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static resetGoogleAdIdStatus()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->p:I

    return-void
.end method

.method public static retrieveCPUSerial()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_56

    :try_start_10
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1f
    :goto_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "serial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f

    const/4 v4, 0x1

    aget-object v5, v1, v4

    const-string v6, "0"

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    aget-object v3, v1, v4

    goto :goto_1f

    :cond_51
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_54} :catch_55

    goto :goto_56

    :catch_55
    move-object v3, v2

    :cond_56
    :goto_56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5e

    :cond_5d
    move-object v2, v3

    :goto_5e
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static retrieveDeviceCarrier()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    :cond_19
    move-object v1, v0

    :goto_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    return-object v0
.end method

.method public static retrieveDeviceCountry()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_33

    :try_start_8
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_1a

    :catch_19
    move-object v0, v1

    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    :try_start_20
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    :cond_33
    move-object v0, v1

    :cond_34
    :goto_34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    :try_start_3a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-object v0, v1

    :cond_44
    :goto_44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v1, v0

    :goto_4c
    return-object v1
.end method

.method public static retrieveDeviceLanguage()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    :cond_1b
    move-object v1, v0

    :goto_1c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :try_start_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    move-object v1, v0

    :cond_2c
    :goto_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    move-object v0, v1

    :goto_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt_BR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "br"

    :cond_46
    return-object v0
.end method

.method public static retrieveDeviceRegion()Ljava/lang/String;
    .registers 5

    const-string v0, "_"

    const-string v1, ""

    :try_start_4
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    :cond_33
    move-object v2, v1

    :goto_34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    :try_start_3a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move-object v2, v1

    :cond_5a
    :goto_5a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    move-object v1, v2

    :goto_62
    return-object v1
.end method

.method public static setDeviceInfo()V
    .registers 2

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_16

    :try_start_4
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_13

    goto :goto_16

    :catch_13
    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->b:Landroid/telephony/TelephonyManager;

    :cond_16
    :goto_16
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.a (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device$a)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$a;
.super Ljava/lang/Thread;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->initGoogleAdId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    goto :goto_19

    :cond_15
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    :goto_19
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;
    :try_end_20
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_2 .. :try_end_20} :catch_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_30

    :catch_21
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_30

    :catch_29
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$002(I)I

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$102(Ljava/lang/String;)Ljava/lang/String;

    :goto_30
    return-void
.end method

###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device.b (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Device$b)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device$b;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->InitDeviceValues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$202(Landroid/webkit/WebView;)Landroid/webkit/WebView;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$200()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$302(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$202(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_25

    :catch_20
    const-string v0, "GL_EMU_001"

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->access$302(Ljava/lang/String;)Ljava/lang/String;

    :goto_25
    return-void
.end method
