###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.ResLoader (com.gameloft.android.ANMP.GloftAGHM.GLUtils.ResLoader)
.class Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/ResLoader;
.super Ljava/lang/Object;
.source "ResLoader.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(I)[B
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 4

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/ResLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return-object v0
.end method

.method private static getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/ResLoader;->trimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_4
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_13

    if-eqz p0, :cond_13

    return-object p0

    :catch_13
    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLength(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/ResLoader;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_e

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_e

    return v0

    :catch_e
    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private static trimName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ".//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1b

    :cond_e
    const-string v0, "./"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
