###### Class com.gameloft.android2d.iap.wrapper.Utils (com.gameloft.android2d.iap.wrapper.Utils)
.class public Lcom/gameloft/android2d/iap/wrapper/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static A:Lcom/gameloft/android2d/iap/wrapper/b; = null

.field private static B:Ljava/lang/String; = null

.field private static C:Ljava/lang/String; = null

.field public static D:I = 0x0

.field public static E:[Ljava/lang/String; = null

.field public static F:Ljava/lang/String; = null

.field public static a:Z = true

.field private static b:Landroid/content/Context; = null

.field public static c:Ljava/lang/String; = ""

.field public static d:Ljava/lang/String; = null

.field protected static e:Ljava/lang/String; = ""

.field protected static f:Ljava/lang/String; = ""

.field public static g:Ljava/lang/String; = null

.field public static h:J = 0x0L

.field public static i:Ljava/lang/String; = "glot_log.txt"

.field public static j:Ljava/lang/String; = null

.field public static k:Ljava/lang/String; = null

.field public static l:Ljava/lang/String; = null

.field public static m:Ljava/lang/String; = null

.field public static n:Ljava/lang/String; = null

.field public static o:Ljava/lang/String; = ""

.field public static p:Ljava/lang/String; = ""

.field public static q:Ljava/lang/String; = ""

.field public static r:Ljava/lang/String; = ""

.field public static final s:[Ljava/lang/String;

.field public static t:I

.field public static u:Ljava/util/Hashtable;

.field public static v:D

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    const-string v0, "EN"

    const-string v1, "DE"

    const-string v2, "FR"

    const-string v3, "IT"

    const-string v4, "SP"

    const-string v5, "BR"

    const-string v6, "PT"

    const-string v7, "JP"

    const-string v8, "CN"

    const-string v9, "KR"

    const-string v10, "RU"

    const-string v11, "TR"

    const-string v12, "PL"

    const-string v13, "CZ"

    const-string v14, "NL"

    const-string v15, "TH"

    const-string v16, "VI"

    const-string v17, "AR"

    const-string v18, "ID"

    const-string v19, "ZT"

    const-string v20, "SC"

    const-string v21, "ZH"

    const-string v22, "ES_LATAM"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->s:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->t:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->u:Ljava/util/Hashtable;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->v:D

    const/4 v0, -0x1

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->w:I

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->x:I

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->y:I

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->z:I

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->D:I

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getValue()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->F:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckConnectionType()I
    .registers 7

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v0, :cond_56

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_56

    :cond_b
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-eqz v0, :cond_36

    if-eq v0, v4, :cond_37

    if-eq v0, v3, :cond_34

    if-eq v0, v2, :cond_32

    if-eq v0, v5, :cond_30

    const/16 v4, 0x9

    goto :goto_37

    :cond_30
    const/4 v4, 0x4

    goto :goto_37

    :cond_32
    const/4 v4, 0x2

    goto :goto_37

    :cond_34
    const/4 v4, 0x5

    goto :goto_37

    :cond_36
    const/4 v4, 0x3

    :cond_37
    :goto_37
    if-ne v4, v5, :cond_50

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_50

    :pswitch_4b
    const/16 v2, 0x8

    goto :goto_51

    :pswitch_4e
    const/4 v2, 0x6

    goto :goto_51

    :cond_50
    :goto_50
    move v2, v4

    :goto_51
    :pswitch_51
    if-ne v2, v1, :cond_54

    goto :goto_55

    :cond_54
    move v5, v2

    :goto_55
    return v5

    :cond_56
    :goto_56
    const/4 v0, 0x0

    return v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4e
        :pswitch_51
        :pswitch_4e
        :pswitch_51
        :pswitch_51
        :pswitch_4e
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_4e
        :pswitch_51
        :pswitch_4b
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method private static CheckInjectedValues()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, ""

    const-string v1, "injectedValues"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->canCheckInjectedValues()Z

    move-result v3

    if-eqz v3, :cond_ce

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->readNIH()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_c4

    :cond_49
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/app"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_56
    array-length v6, v3

    if-ge v5, v6, :cond_c4

    aget-object v6, v3, v5

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v8, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    new-instance v2, Ldalvik/system/PathClassLoader;

    const/4 v3, 0x0

    invoke-static {}, Ldalvik/system/PathClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v6, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "res/raw/nih.bin"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c4

    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    :cond_c4
    :goto_c4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cb

    move-object v2, v0

    :cond_cb
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountValues()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_ce} :catch_cf

    :cond_ce
    return-object v2

    :catch_cf
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountValues()V

    return-object v0
.end method

.method public static DES_Encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    const-string p1, "DES"

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "DES/ECB/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p1, p0

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2a

    array-length p1, p0

    div-int/lit8 p1, p1, 0x8

    goto :goto_2e

    :cond_2a
    array-length p1, p0

    div-int/lit8 p1, p1, 0x8

    add-int/2addr p1, v1

    :goto_2e
    mul-int/lit8 p1, p1, 0x8

    new-array v1, p1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_34
    if-ge v3, p1, :cond_3b

    aput-byte v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_3b
    array-length p1, p0

    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    const/4 p0, 0x0

    return-object p0
.end method

.method public static DecryptValuesContent()V
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->readContentFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->getInstance()Lcom/gameloft/android2d/iap/wrapper/DefReader;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->F:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(\\r?\\n|\\r)+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_17
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_31

    aget-object v2, v1, v0

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_31
    return-void
.end method

.method public static GLOT_getQADebug()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "GlotDebug"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v0

    :cond_13
    new-instance v2, Ljava/io/File;

    const-string v3, "QADEBUG.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    return-object v0

    :cond_21
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_30

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_43} :catch_43

    :catch_43
    return-object v0
.end method

.method public static GenerateLinkPrivacyPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public static GenerateLinkRating()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static GenerateLinkTermOfUse(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public static GenerateLinkUpdateNewVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method private static GetBarrels()[I
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_32

    :try_start_6
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    if-ge v3, v0, :cond_22

    array-length v0, v2

    :cond_22
    const/4 v3, 0x0

    :goto_23
    if-ge v3, v0, :cond_30

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    aput v4, v1, v3
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :catch_30
    :cond_30
    return-object v1

    nop

    :array_32
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static GetTSSecond()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static HasSim()Z
    .registers 5

    const-string v0, "SIM_READY"

    const-string v1, "SIM_ERROR_UNKNOWN"

    const/4 v2, 0x1

    :try_start_5
    sget-object v3, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-eq v3, v2, :cond_29

    const/4 v4, 0x2

    if-eq v3, v4, :cond_26

    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    const/4 v4, 0x5

    if-eq v3, v4, :cond_21

    goto :goto_2d

    :cond_21
    move-object v1, v0

    goto :goto_2d

    :cond_23
    const-string v1, "SIM_PUK_REQUIRED"

    goto :goto_2d

    :cond_26
    const-string v1, "SIM_PIN_REQUIRED"

    goto :goto_2d

    :cond_29
    const-string v1, "SIM_ABSENT"
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2c

    goto :goto_2d

    :catch_2c
    nop

    :cond_2d
    :goto_2d
    if-ne v1, v0, :cond_30

    return v2

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public static HasVibrator()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-lt v0, v2, :cond_17

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    :cond_17
    return v1
.end method

.method public static LoadColorProfile()Ljava/util/Vector;
    .registers 15

    const-string v0, "-"

    const-string v1, " "

    const/4 v2, 0x0

    :try_start_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "color_profile"

    const-string v5, "raw"

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    move-object v9, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_4d
    :goto_4d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e5

    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v7, :cond_7d

    const-string v12, "begin"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_63

    goto :goto_4d

    :cond_63
    const-string v12, "end"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    if-eqz v8, :cond_6f

    goto/16 :goto_e5

    :cond_6f
    const/4 v7, 0x0

    goto :goto_4d

    :cond_71
    const/4 v10, 0x0

    :goto_72
    array-length v12, v11

    if-ge v10, v12, :cond_4d

    aget-object v12, v11, v10

    invoke-virtual {v9, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_72

    :cond_7d
    array-length v10, v11

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-ne v10, v14, :cond_ac

    aget-object v10, v11, v3

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    aget-object v7, v11, v13

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_aa

    const/4 v7, 0x1

    const/4 v8, 0x1

    goto :goto_4d

    :cond_aa
    const/4 v7, 0x1

    goto :goto_4d

    :cond_ac
    array-length v10, v11

    const/16 v14, 0xf

    if-le v10, v14, :cond_4d

    aget-object v10, v11, v3

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    aget-object v10, v11, v12

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/4 v10, 0x0

    :goto_cf
    const/16 v12, 0xd

    if-ge v10, v12, :cond_dd

    add-int/lit8 v12, v10, 0x3

    aget-object v12, v11, v12

    invoke-virtual {v9, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_cf

    :cond_dd
    aget-object v10, v11, v13

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4d

    :cond_e5
    :goto_e5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e8} :catch_e9

    return-object v9

    :catch_e9
    return-object v2
.end method

.method private static LoadServices(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->u:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result p0

    if-lez p0, :cond_10

    return-void

    :cond_10
    const/4 p0, 0x0

    :try_start_11
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAllValuesContentFile()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :goto_19
    :try_start_19
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->parseJadProperty(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2c} :catch_2d

    goto :goto_19

    :catch_2d
    :cond_2d
    return-void
.end method

.method public static SetValuesNIH()V
    .registers 7

    const-string v0, "_"

    const-string v1, ":"

    :try_start_4
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->CheckInjectedValues()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_13

    :cond_10
    :goto_10
    const/4 v4, 0x1

    goto/16 :goto_a8

    :cond_13
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->getInstance()Lcom/gameloft/android2d/iap/wrapper/DefReader;

    move-result-object v3

    sget-object v6, Lcom/gameloft/android2d/iap/wrapper/a;->d:Ljava/lang/String;

    invoke-virtual {v3, v2, v6}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    sput-object v3, Lcom/gameloft/android2d/iap/wrapper/Utils;->j:Ljava/lang/String;

    aget-object v3, v2, v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    sput-object v3, Lcom/gameloft/android2d/iap/wrapper/Utils;->k:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDynamicProdictID()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->l:Ljava/lang/String;

    aget-object v0, v0, v5

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "MIDlet-Version"

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "GAME_PLATFORM"

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "GAME_SHOP"

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->n:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8

    goto/16 :goto_10

    :cond_a8
    :goto_a8
    if-eqz v4, :cond_b6

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android2d/iap/wrapper/Utils$c;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/wrapper/Utils$c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b6} :catch_b6

    :catch_b6
    :cond_b6
    return-void
.end method

.method public static canCheckInjectedIGP()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedIGP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retryNumIGP"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_20

    return v1

    :cond_20
    return v2
.end method

.method public static canCheckInjectedSerialKey()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedIGP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retryNumSerialKey"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_20

    return v1

    :cond_20
    return v2
.end method

.method public static canCheckInjectedValues()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "retryNumValues"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    return v2
.end method

.method public static checkAvailableSpace(Ljava/lang/String;Landroid/content/Context;)J
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_1d
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getSDPath()Ljava/lang/String;

    move-result-object p1

    if-ne p0, p1, :cond_2b

    new-instance v0, Ljava/io/File;

    const-string p0, "/sdcard/"

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_2b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_39
    new-instance p0, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long p0, p0

    mul-long v0, v0, p0

    const-wide/32 p0, 0x100000

    div-long/2addr v0, p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-wide v0

    :catch_53
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static checkNewVersionInstalled()V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedIGP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "versionInstalled"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/a;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_95

    :cond_3c
    sget-object v3, Lcom/gameloft/android2d/iap/wrapper/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "retryNumIGP"

    invoke-static {v5, v3, v4}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "retryNumSerialKey"

    invoke-static {v4, v0, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/a;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method

.method public static deleteInternalFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static existInternalFile(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public static generateNoteOnSD(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->i:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->generateNoteOnSD(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static generateNoteOnSD(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->i:Ljava/lang/String;

    :try_start_a
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "GlotDebug"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->i:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public static getAllValuesContentFile()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->DecryptValuesContent()V

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getAndroidId()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    :cond_9
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2b

    :cond_22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xf

    if-lt v2, v3, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_76

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_76

    :cond_e
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/app/Activity;

    goto :goto_21

    :cond_15
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_76

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    :goto_21
    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->e:Z

    if-nez v1, :cond_31

    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->f:Z

    if-nez v1, :cond_31

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_31
    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->e:Z

    if-nez v1, :cond_53

    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->f:Z

    if-nez v1, :cond_53

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4a

    return-object v0

    :cond_4a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_53
    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->f:Z

    if-eqz v1, :cond_5c

    const-string v1, "res/raw/hdv.bin"

    invoke-static {p0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->LoadServices(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5c
    sget-boolean v1, Lcom/gameloft/android2d/iap/wrapper/a;->e:Z

    if-eqz v1, :cond_65

    const-string v1, "META-INF/services/Game"

    invoke-static {p0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->LoadServices(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_65
    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->u:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->u:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_76
    :goto_76
    return-object v0
.end method

.method public static final getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_2e2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2e2

    :cond_e
    sget-boolean v0, Lcom/gameloft/android2d/iap/wrapper/a;->e:Z

    if-nez v0, :cond_1e

    sget-boolean v0, Lcom/gameloft/android2d/iap/wrapper/a;->f:Z

    if-nez v0, :cond_1e

    const-string v0, "-"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.locale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_33
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_42

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p0

    :cond_42
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.device.manufacturer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_51

    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object p0

    :cond_51
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.device.firmware"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_60

    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object p0

    :cond_60
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "microedition.inch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_80

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->v:D

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_80
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "microedition.widthreal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->w:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "microedition.heightreal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_bc

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->x:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_bc
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "microedition.width"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_da

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->y:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_da
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "microedition.height"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->z:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "microedition.screen.virtual"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v2, "true"

    if-nez v0, :cond_107

    return-object v2

    :cond_107
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "conectivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2d6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_121

    goto/16 :goto_2d6

    :cond_121
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "type.connectivity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_141

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->CheckConnectionType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_141
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "injectedserialkey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_152

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getInjectedSerialKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_152
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "injectedigp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_163

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getInjectedIGP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_163
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceuptimemillis"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_174

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDeviceUpTimeMillis()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_174
    const-string v0, "clock"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_190

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClock()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_190
    const-string v0, "timemillis"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1ac

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClockMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1ac
    const-string v0, "timenano"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClockNano()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1c8
    const-string v0, "getAvailableSpace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->checkAvailableSpace(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1f4
    const-string v0, "gameversionletter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1ff

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/a;->h:Ljava/lang/String;

    return-object p0

    :cond_1ff
    const-string v0, "microedition.locale.country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_210

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDeviceCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_210
    const-string v0, "microedition.locale.simcountry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_221

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getSimCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_221
    const-string v0, "microedition.locale.usercountry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_232

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getUserCountryInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_232
    sget-boolean v0, Lcom/gameloft/android2d/iap/wrapper/a;->c:Z

    if-eqz v0, :cond_2ab

    const-string v0, "IAP-GameCodeIGP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_243

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDynamicIGPCODE()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_243
    const-string v0, "GAME-GGI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a6

    const-string v0, "GGI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_254

    goto :goto_2a6

    :cond_254
    const-string v0, "GAME-PLATFORM-ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a1

    const-string v0, "PlatformID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a1

    const-string v0, "IAP-PhoneModel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26d

    goto :goto_2a1

    :cond_26d
    const-string v0, "URL-SUPPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27a

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getUrlSupport()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27a
    const-string v0, "URL-OPERATOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_287

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getUrlOperator()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_287
    const-string v0, "URL-TEMPLATE-GAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_294

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getUrlTemplateGame()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_294
    const-string v0, "URL-UPDATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2ab

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getUrlUpdate()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a1
    :goto_2a1
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDynamicPlatformID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2a6
    :goto_2a6
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDynamicGGICode()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2ab
    const-string v0, "hasVibrator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const-string v1, "false"

    if-nez v0, :cond_2bd

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->HasVibrator()Z

    move-result p0

    if-eqz p0, :cond_2bc

    return-object v2

    :cond_2bc
    return-object v1

    :cond_2bd
    const-string v0, "hasSim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2cd

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->HasSim()Z

    move-result p0

    if-eqz p0, :cond_2cc

    return-object v2

    :cond_2cc
    return-object v1

    :cond_2cd
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d6
    :goto_2d6
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->hasConnectivity()Z

    move-result p0

    if-eqz p0, :cond_2df

    const-string p0, "on"

    return-object p0

    :cond_2df
    const-string p0, "off"

    return-object p0

    :cond_2e2
    :goto_2e2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBatteryLevel()I
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->D:I

    return v0
.end method

.method public static getCPUPartInfo()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    :try_start_d
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_36

    const-string v2, "CPU part"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    const-string v0, "0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    const-string v0, ""

    return-object v0
.end method

.method public static getClock()F
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClock()F

    move-result v0

    return v0
.end method

.method public static getClockMillis()J
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClockMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getClockNano()J
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->getClockNano()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getConfig_HDIDFV_UPDATE()I
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/wrapper/a;->a:I

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentLocalTimeMillis()J
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getDevceFirmware()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceCarrier()Ljava/lang/String;
    .registers 3

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_24

    if-eqz v2, :cond_24

    return-object v1

    :catch_24
    :cond_24
    return-object v0
.end method

.method public static getDeviceCountry()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v0, :cond_1c

    :try_start_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1b

    if-eqz v1, :cond_1c

    return-object v0

    :catch_1b
    nop

    :cond_1c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2d

    return-object v0

    :cond_2d
    const-string v0, "XX"

    return-object v0
.end method

.method public static getDeviceLanguage()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    :try_start_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    const-string v0, "XX"

    return-object v0
.end method

.method public static getDeviceLocale()Ljava/lang/String;
    .registers 1

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    :try_start_11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    const-string v0, "XX"

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceRegion()Ljava/lang/String;
    .registers 4

    const-string v0, "_"

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    :try_start_29
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_47} :catch_48

    return-object v0

    :catch_48
    const-string v0, "XX_XX"

    return-object v0
.end method

.method public static getDeviceUpTimeMillis()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceVolume()I
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public static getDynamicClientID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->n:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->SetValuesNIH()V

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static getDynamicGGICode()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->SetValuesNIH()V

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static getDynamicIGPCODE()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->SetValuesNIH()V

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static getDynamicPlatformID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->SetValuesNIH()V

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static getDynamicProdictID()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "GAME-PRODUCT-ID"

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getElapseRealtime()J
    .registers 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeRam()F
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static getGLExtensions()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->r:Ljava/lang/String;

    return-object v0
.end method

.method public static getGLVendor()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static getGLVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getGPUModel()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static getGameLanguage()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->s:[Ljava/lang/String;

    sget v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->t:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getGameLanguageIndex()I
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->t:I

    return v0
.end method

.method public static getGameName()Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.gameloft.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return-object v0

    :cond_10
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized getHDIDFV()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/gameloft/android2d/iap/wrapper/Utils;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getHDIDFV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object v1

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getHDIDFV(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/gameloft/android2d/iap/wrapper/Utils;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/gameloft/android2d/iap/wrapper/a;->a:I

    if-eqz v1, :cond_9f

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_a3

    monitor-exit v0

    return-object p0

    :cond_15
    :try_start_15
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->init(Landroid/content/Context;)V

    :cond_1e
    const-string p0, "HDIDFV"

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_a3

    :try_start_26
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_41

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_3d
    .catchall {:try_start_26 .. :try_end_3c} :catchall_a3

    goto :goto_41

    :catch_3d
    :try_start_3d
    const-string p0, ""

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    :cond_41
    :goto_41
    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_55

    const-string p0, "HDIDFVVersion"

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_3d .. :try_end_53} :catchall_a3

    monitor-exit v0

    return-object p0

    :cond_55
    :try_start_55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/a;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "generator"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getHDIDFV()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    sget p0, Lcom/gameloft/android2d/iap/wrapper/a;->a:I

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getHDIDFVVersion()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_93

    const-string p0, "HDIDFV"

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "HDIDFVVersion"

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9f

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_9d
    .catchall {:try_start_55 .. :try_end_9d} :catchall_a3

    monitor-exit v0

    return-object p0

    :cond_9f
    :try_start_9f
    const-string p0, ""
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_a3

    monitor-exit v0

    return-object p0

    :catchall_a3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getHDIDFVForPushNotification()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    return-object v0

    :cond_f
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->init(Landroid/content/Context;)V

    :cond_1c
    const-string v1, "HDIDFV"

    invoke-static {v1}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    :try_start_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_38} :catch_39

    goto :goto_3b

    :catch_39
    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    :cond_3b
    :goto_3b
    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "HDIDFVVersion"

    if-nez v2, :cond_4e

    invoke-static {v3}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->getSharedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    return-object v0

    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gameloft/android2d/iap/wrapper/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "generator"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getHDIDFV()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    sget v2, Lcom/gameloft/android2d/iap/wrapper/a;->a:I

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/HDIDFV;->getHDIDFVVersion()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_88

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/wrapper/AESEncrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/gameloft/android2d/iap/wrapper/DataSharing;->setSharedValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_92

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    :cond_92
    return-object v0
.end method

.method public static getHDIDFVVersion()Ljava/lang/String;
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/wrapper/a;->a:I

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->f:Ljava/lang/String;

    return-object v0

    :cond_f
    const-string v0, ""

    return-object v0
.end method

.method public static getHttpsResponse(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->h:J

    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const/16 v2, 0xc8

    const/4 v3, -0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eqz p0, :cond_86

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v6, "close"

    invoke-virtual {p0, v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    sget-object v6, Lcom/gameloft/android2d/iap/wrapper/Utils;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serialkey"

    const-string v6, "raw"

    invoke-static {v0, v6}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getResourceAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v6, "x-gl-d"

    invoke-virtual {p0, v6, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    const-string v0, "x-android-os-build-model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-up-gl-subno"

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getLineNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-up-gl-imei"

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getHDIDFV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v2, :cond_6a

    const-string p0, ""

    return-object p0

    :cond_6a
    monitor-enter p0
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6b} :catch_f2
    .catchall {:try_start_8 .. :try_end_6b} :catchall_f0

    :try_start_6b
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_83

    :try_start_70
    new-array v2, v4, [B

    const/4 v6, 0x0

    :cond_73
    :goto_73
    if-eq v6, v3, :cond_7f

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v3, :cond_73

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_73

    :cond_7f
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_f2
    .catchall {:try_start_70 .. :try_end_82} :catchall_f0

    goto :goto_e8

    :catchall_83
    move-exception v0

    :try_start_84
    monitor-exit p0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw v0

    :cond_86
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v6, "close"

    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    sget-object v6, Lcom/gameloft/android2d/iap/wrapper/Utils;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serialkey"

    const-string v6, "raw"

    invoke-static {v0, v6}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getResourceAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ae

    const-string v6, "x-gl-d"

    invoke-virtual {p0, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ae
    const-string v0, "x-android-os-build-model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-up-gl-subno"

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getLineNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-up-gl-imei"

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getHDIDFV()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v2, :cond_d0

    const-string p0, ""

    return-object p0

    :cond_d0
    monitor-enter p0
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_d1} :catch_f2
    .catchall {:try_start_85 .. :try_end_d1} :catchall_f0

    :try_start_d1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_ed

    :try_start_d6
    new-array v2, v4, [B

    const/4 v6, 0x0

    :cond_d9
    :goto_d9
    if-eq v6, v3, :cond_e5

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v3, :cond_d9

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d9

    :cond_e5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_e8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_ec} :catch_f2
    .catchall {:try_start_d6 .. :try_end_ec} :catchall_f0

    return-object p0

    :catchall_ed
    move-exception v0

    :try_start_ee
    monitor-exit p0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw v0
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f0} :catch_f2
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    :catchall_f0
    move-exception p0

    throw p0

    :catch_f2
    const-string p0, ""

    return-object p0
.end method

.method public static getInjectedIGP()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->retrieveSavedInjectedIGP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2c

    :try_start_15
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->getInstance()Lcom/gameloft/android2d/iap/wrapper/DefReader;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "GAME-IGP-CODE"

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getAppProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/gameloft/android2d/iap/wrapper/DefReader;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_29} :catch_2a

    goto :goto_2c

    :catch_2a
    sput-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    :cond_2c
    :goto_2c
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    sput-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    :cond_36
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    return-object v0
.end method

.method public static getInjectedIGPValue()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->B:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public static getInjectedSerialKey()Ljava/lang/String;
    .registers 14

    const-string v0, "injectedIGP"

    const-string v1, "injectedSerialKey"

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_15e

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_156

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->canCheckInjectedSerialKey()Z

    move-result v4

    if-eqz v4, :cond_156

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->readSerialKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_153

    new-instance v4, Ljava/io/File;

    const-string v5, "/system/app"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_52
    array-length v7, v4
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_53} :catch_159

    const-string v8, "UTF-8"

    const-string v9, "res/raw/serialkey.txt"

    const/4 v10, 0x0

    const-string v11, ".apk"

    if-ge v6, v7, :cond_c2

    :try_start_5c
    aget-object v7, v4, v6

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/app/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v6

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v7, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v13, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bf

    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ldalvik/system/PathClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v4, v7, v10, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v4, v9}, Ldalvik/system/PathClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_c2

    invoke-static {v4, v8}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c2

    :cond_bf
    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_c2
    :goto_c2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_153

    new-instance v4, Ljava/io/File;

    const-string v6, "/system/priv-app"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    :goto_d4
    array-length v7, v4

    if-ge v6, v7, :cond_153

    aget-object v7, v4, v6

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/priv-app/"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v6

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v7, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v13, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13a

    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ldalvik/system/PathClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v7, v10, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v4, v9}, Ldalvik/system/PathClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_153

    invoke-static {v4, v8}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_153

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_153

    :cond_13a
    add-int/lit8 v6, v6, 0x1

    goto :goto_d4

    :cond_13d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_153
    :goto_153
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountSerialKey()V

    :cond_156
    sput-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_158} :catch_159

    goto :goto_15e

    :catch_159
    sput-object v3, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountSerialKey()V

    :cond_15e
    :goto_15e
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_168

    sput-object v3, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    :cond_168
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    return-object v0
.end method

.method public static getInjectedSerialKeyValue()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->C:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public static getLineNumber()Ljava/lang/String;
    .registers 1

    const-string v0, "00"

    return-object v0
.end method

.method public static getMaxAvailableRam()F
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_12
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_19

    goto :goto_44

    :cond_19
    const-string v4, "MemTotal: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "kB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v0, v3

    :goto_44
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4a} :catch_4a

    :catch_4a
    return v0
.end method

.method public static getMaxCPUSpeed()F
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2c} :catch_2c

    :catch_2c
    return v0
.end method

.method public static getMetaDataValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_23

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNetworkCountryIso()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return-object v0
.end method

.method public static getNetworkOperator()Ljava/lang/String;
    .registers 5

    const-string v0, "SIM_ERROR_UNKNOWN"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_24

    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    move-object v3, v0

    goto :goto_26

    :cond_1e
    const-string v3, "SIM_PUK_REQUIRED"

    goto :goto_26

    :cond_21
    const-string v3, "SIM_PIN_REQUIRED"

    goto :goto_26

    :cond_24
    const-string v3, "SIM_ABSENT"

    :goto_26
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2c

    move-object v0, v3

    goto :goto_2d

    :catch_2c
    nop

    :cond_2d
    :goto_2d
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object v0, v1

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static getNumCPUCores()I
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/gameloft/android2d/iap/wrapper/Utils$b;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/wrapper/Utils$b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    :catch_12
    const/4 v0, 0x1

    return v0
.end method

.method public static getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_26
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object v1

    :catch_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOverriddenSettingBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getOverriddenSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_15

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public static getPreferenceBoolean(Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    return p0

    :catch_e
    return v0
.end method

.method public static getPreferenceHashTable(Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 3

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/util/Hashtable;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPreferenceLong(Ljava/lang/String;JLjava/lang/String;)J
    .registers 6

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getPreferenceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_d
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2a

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "res_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_68

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_68

    return-object v0

    :cond_68
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :try_start_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_83} :catch_84

    return-object p0

    :catch_84
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResourceAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, p1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    sget-object p1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    :goto_23
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2e

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    goto :goto_23

    :cond_2e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_31
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_31} :catch_31

    :catch_31
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSHA1(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_14
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSMSDemoLatamUrl()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getSerialKey()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialkey"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :try_start_14
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_30} :catch_31

    return-object v0

    :catch_31
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSimCountry()Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_17

    if-lez v1, :cond_17

    return-object v0

    :catch_17
    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method public static getTopViewGroup()Landroid/view/ViewGroup;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getTopViewGroup(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .registers 4

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_26

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_26
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public static getUpdateNewVersion(IIZ)Ljava/lang/String;
    .registers 3

    const-string p0, ""

    return-object p0
.end method

.method public static getUpdateNewVersion(Z)Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public static getUrlOperator()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUrlSupport()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUrlTemplateGame()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUrlUpdate()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    return-object v0
.end method

.method public static getUserCountryInfo()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_57

    :try_start_11
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1e

    if-lez v2, :cond_1e

    return-object v1

    :catch_1e
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2b

    if-lez v1, :cond_2b

    return-object v0

    :catch_2b
    :cond_2b
    :try_start_2b
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_43} :catch_46

    if-lez v1, :cond_46

    return-object v0

    :catch_46
    :cond_46
    :try_start_46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_54} :catch_90

    if-lez v1, :cond_90

    return-object v0

    :cond_57
    :try_start_57
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_64

    if-lez v1, :cond_64

    return-object v0

    :catch_64
    :cond_64
    :try_start_64
    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7c} :catch_7f

    if-lez v1, :cond_7f

    return-object v0

    :catch_7f
    :cond_7f
    :try_start_7f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8d} :catch_90

    if-lez v1, :cond_90

    return-object v0

    :catch_90
    :cond_90
    const-string v0, ""

    return-object v0
.end method

.method private static getValue()Ljava/lang/String;
    .registers 8

    const/16 v0, 0x9

    new-array v1, v0, [B

    new-array v2, v0, [B

    fill-array-data v2, :array_22

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v0, :cond_1b

    add-int/lit8 v5, v4, 0x1

    rsub-int/lit8 v6, v5, 0x9

    aget-byte v6, v2, v6

    const/16 v7, 0x23

    add-int/2addr v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v4

    move v4, v5

    goto :goto_b

    :cond_1b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    nop

    :array_22
    .array-data 1
        0x16t
        0x16t
        0x31t
        0x43t
        0x29t
        0x4at
        0x24t
        0x16t
        0xet
    .end array-data
.end method

.method public static getValueOfParameterContentFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2c

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    aget-object v1, p0, v0

    aget-object p0, p0, v0

    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    sget-object v2, Lcom/gameloft/android2d/iap/wrapper/Utils;->E:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasConnectivity()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

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

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1e

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :catch_1e
    :cond_1e
    return v0
.end method

.method public static hasGLSignature()Z
    .registers 10

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->GetBarrels()[I

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_36

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_11
    array-length v7, v0

    if-ge v5, v7, :cond_35

    if-nez v5, :cond_1c

    aget v7, v3, v1

    mul-int/lit8 v7, v7, 0x2

    aput v7, v3, v1

    :cond_1c
    aget v7, v0, v5

    aget v8, v3, v1

    const v9, 0x186a0

    mul-int v8, v8, v9

    aget v9, v3, v4

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    if-ne v7, v8, :cond_2d

    return v1

    :cond_2d
    aget v7, v0, v5

    if-lez v7, :cond_32

    const/4 v6, 0x0

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_35
    return v6

    :array_36
    .array-data 4
        0x41cf
        0x7e5
    .end array-data
.end method

.method public static increaseRetryCountIGP()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedIGP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "retryNumIGP"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static increaseRetryCountSerialKey()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedIGP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "retryNumSerialKey"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static increaseRetryCountValues()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "injectedValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "retryNumValues"

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceInt(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private static inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static isAirplaneModeOn()Z
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public static isConnectedMobile()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

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

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_24

    if-nez v1, :cond_24

    const/4 v0, 0x1

    :catch_24
    :cond_24
    return v0
.end method

.method public static isConnectedWifi()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

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

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_25

    if-ne v1, v3, :cond_25

    const/4 v0, 0x1

    :catch_25
    :cond_25
    return v0
.end method

.method public static isDeviceRooted()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isRooted()Z
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/NativeUtils;->CheckRoot()Z

    move-result v0

    return v0
.end method

.method public static openFileInputStream(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method

.method public static openSettings()V
    .registers 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public static openWifiSettings()V
    .registers 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public static openWirelessSettings()V
    .registers 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method private static parse(Ljava/net/URL;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_3a
    .catchall {:try_start_1 .. :try_end_5} :catchall_2b

    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_3b
    .catchall {:try_start_5 .. :try_end_11} :catchall_26

    const/4 v0, 0x1

    :goto_12
    :try_start_12
    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->parseLine(Ljava/io/BufferedReader;I)I

    move-result v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_24
    .catchall {:try_start_12 .. :try_end_16} :catchall_22

    if-ltz v0, :cond_19

    goto :goto_12

    :cond_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_43

    :goto_1e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_21} :catch_43

    goto :goto_43

    :catchall_22
    move-exception v0

    goto :goto_2f

    :catch_24
    move-object v0, v1

    goto :goto_3b

    :catchall_26
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2f

    :catchall_2b
    move-exception p0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    :goto_2f
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_34
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    throw v0

    :catch_3a
    move-object p0, v0

    :catch_3b
    :goto_3b
    if-eqz v0, :cond_40

    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_43

    :cond_40
    if-eqz p0, :cond_43

    goto :goto_1e

    :catch_43
    :cond_43
    :goto_43
    return-void
.end method

.method private static parseJadProperty(Ljava/lang/String;)V
    .registers 4

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_20

    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->u:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method private static parseLine(Ljava/io/BufferedReader;I)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->parseJadProperty(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static readCRC()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "crc"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :goto_2d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_2d

    :cond_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_3b

    :catch_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readContentFile()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hdv"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :goto_2d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_2d

    :cond_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_3b

    :catch_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readNIH()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nih"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :goto_2d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_2d

    :cond_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_3b

    :catch_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readSerialKey()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "serialkey"

    const-string v3, "raw"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_29
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    :goto_2d
    const/4 v3, -0x1

    if-eq v2, v3, :cond_38

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_2d

    :cond_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3b} :catch_3b

    :catch_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static release()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    return-void
.end method

.method public static removePreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

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

.method private static retrieveSavedInjectedIGP()Ljava/lang/String;
    .registers 13

    const-string v0, ""

    const-string v1, "injectedIGP"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getPreferenceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_157

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->canCheckInjectedIGP()Z

    move-result v3

    if-eqz v3, :cond_157

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->readCRC()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_14d

    :cond_49
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_14d

    new-instance v3, Ljava/io/File;

    const-string v4, "/system/app"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_64
    array-length v6, v3
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_65} :catch_158

    const-string v7, "UTF-8"

    const-string v8, "res/raw/crc.bin"

    const/4 v9, 0x0

    const-string v10, ".apk"

    if-ge v5, v6, :cond_d2

    :try_start_6e
    aget-object v6, v3, v5

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cf

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/app/"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v5

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v6, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v12, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cf

    new-instance v2, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ldalvik/system/PathClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v6, v9, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, v8}, Ldalvik/system/PathClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v7}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d2

    :cond_cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    :cond_d2
    :goto_d2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14d

    new-instance v3, Ljava/io/File;

    const-string v5, "/system/priv-app"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    :goto_e4
    array-length v6, v3

    if-ge v5, v6, :cond_14d

    aget-object v6, v3, v5

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/system/priv-app/"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v3, v5

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v6, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v12, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14a

    new-instance v3, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ldalvik/system/PathClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v6, v9, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3, v8}, Ldalvik/system/PathClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_14d

    invoke-static {v3, v7}, Lcom/gameloft/android2d/iap/wrapper/Utils;->inputStreamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_14d

    :cond_14a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e4

    :cond_14d
    :goto_14d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_154

    move-object v2, v0

    :cond_154
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountIGP()V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_157} :catch_158

    :cond_157
    return-object v2

    :catch_158
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->increaseRetryCountIGP()V

    return-object v0
.end method

.method public static setBatteryLevel(I)V
    .registers 1

    sput p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->D:I

    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setUserAgent()V

    return-void
.end method

.method public static setGLInform(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->o:Ljava/lang/String;

    sput-object p1, Lcom/gameloft/android2d/iap/wrapper/Utils;->p:Ljava/lang/String;

    sput-object p2, Lcom/gameloft/android2d/iap/wrapper/Utils;->q:Ljava/lang/String;

    sput-object p3, Lcom/gameloft/android2d/iap/wrapper/Utils;->r:Ljava/lang/String;

    sget-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->A:Lcom/gameloft/android2d/iap/wrapper/b;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/gameloft/android2d/iap/wrapper/b;->a()V

    :cond_f
    return-void
.end method

.method public static setGameLanguage(Ljava/lang/String;)V
    .registers 4

    const-string v0, "es"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "sp"

    :cond_a
    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->t:I

    :goto_d
    sget-object v1, Lcom/gameloft/android2d/iap/wrapper/Utils;->s:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    sput v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->t:I

    aget-object p0, v1, v0

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "save_game_language"

    invoke-static {v1, p0, v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2d

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2d
    :goto_2d
    return-void
.end method

.method public static setGooleAnalyticsTrackingObj(Lcom/gameloft/android2d/iap/wrapper/b;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/wrapper/Utils;->A:Lcom/gameloft/android2d/iap/wrapper/b;

    return-void
.end method

.method public static setOverriddenSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_68

    const-string v3, "="

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_28

    :try_start_14
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    :cond_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    if-eqz v2, :cond_3b

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_45

    :cond_3b
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :goto_45
    if-ltz v4, :cond_4d

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v4, v4, -0x1

    goto :goto_45

    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_68} :catch_68

    :catch_68
    return-void
.end method

.method public static setPreference(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_17

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_40

    :cond_17
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_25

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_40

    :cond_25
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_33

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_40

    :cond_33
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_40

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_40
    :goto_40
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setUserAgent()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android2d/iap/wrapper/Utils$a;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/wrapper/Utils$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_12} :catch_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method public static final startTrace()V
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    return-void
.end method

.method public static startYoutube(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static final stopTrace()V
    .registers 0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.wrapper.Utils.a (com.gameloft.android2d.iap.wrapper.Utils$a)
.class Lcom/gameloft/android2d/iap/wrapper/Utils$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/wrapper/Utils;->setUserAgent()V
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
    .registers 2

    :try_start_0
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->d:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    const-string v0, "GL_EMU_001"

    sput-object v0, Lcom/gameloft/android2d/iap/wrapper/Utils;->d:Ljava/lang/String;

    :goto_11
    return-void
.end method

###### Class com.gameloft.android2d.iap.wrapper.Utils.b (com.gameloft.android2d.iap.wrapper.Utils$b)
.class Lcom/gameloft/android2d/iap/wrapper/Utils$b;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/wrapper/Utils;->getNumCPUCores()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cpu[0-9]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

###### Class com.gameloft.android2d.iap.wrapper.Utils.c (com.gameloft.android2d.iap.wrapper.Utils$c)
.class Lcom/gameloft/android2d/iap/wrapper/Utils$c;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/wrapper/Utils;->SetValuesNIH()V
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
    .registers 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;

    invoke-direct {v2, p0}, Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;-><init>(Lcom/gameloft/android2d/iap/wrapper/Utils$c;)V

    const-string v3, "OK"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.wrapper.Utils.c.a (com.gameloft.android2d.iap.wrapper.Utils$c$a)
.class Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/wrapper/Utils$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/wrapper/Utils$c;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/wrapper/Utils$c;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/wrapper/Utils$c$a;->a:Lcom/gameloft/android2d/iap/wrapper/Utils$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
