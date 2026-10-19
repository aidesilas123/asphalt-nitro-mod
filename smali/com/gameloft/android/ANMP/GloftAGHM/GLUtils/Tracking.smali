###### Class com.gameloft.android.ANMP.GloftAGHM.GLUtils.Tracking (com.gameloft.android.ANMP.GloftAGHM.GLUtils.Tracking)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;
.super Ljava/lang/Object;
.source "Tracking.java"


# static fields
.field private static a:Ljava/lang/String; = "AGHM"

.field private static b:Ljava/lang/String; = "1.8.0a"

.field private static c:Ljava/lang/String; = "2.1"

.field private static d:I = 0x5dc

.field private static e:I = 0x0

.field private static f:Ljava/lang/String; = "https://201205igp.gameloft.com/redir/hdloading.php?game=#GAME#&country=#COUNTRY#&lg=#LANG#&ver=#IGP_VERSION#&device=#DEVICE#&f=#FIRMWARE#&hdidfv=#HDIDFV#&g_ver=#VERSION#&line_number=#LINE_NUMBER#&google_adid=#GOOGLE_ADID#&google_optout=#GOOGLE_OPTOUT#"

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static j:Ljava/lang/String;

.field static k:Ljava/lang/String;

.field static l:Ljava/lang/String;

.field static m:Ljava/lang/String;

.field private static final n:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->n:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->n:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->buildURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->clearFlags()V

    return-void
.end method

.method static synthetic access$400()I
    .registers 1

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->d:I

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static buildURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Encrypter;->crypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->j:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getGoogleAdIdStatus()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->g:Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->a:Ljava/lang/String;

    const-string v4, "#GAME#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->j:Ljava/lang/String;

    const-string v4, "#COUNTRY#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->i:Ljava/lang/String;

    const-string v4, "#LANG#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->b:Ljava/lang/String;

    const-string v4, "#VERSION#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->k:Ljava/lang/String;

    const-string v4, "#DEVICE#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->l:Ljava/lang/String;

    const-string v4, "#FIRMWARE#"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "#HDIDFV#"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->c:Ljava/lang/String;

    const-string v3, "#IGP_VERSION#"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "#LINE_NUMBER#"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#GOOGLE_ADID#"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#GOOGLE_OPTOUT#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static clearFlags()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->e:I

    return-void
.end method

.method public static init()V
    .registers 2

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getHDIDFV()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->g:Ljava/lang/String;

    const-string v0, "null"

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->k:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->l:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->getLineNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->m:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Device;->initGoogleAdId()V

    return-void
.end method

.method public static onLaunchGame()V
    .registers 2

    const/4 v0, 0x2

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->onLaunchGame(ILjava/lang/String;)V

    return-void
.end method

.method public static onLaunchGame(I)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->onLaunchGame(ILjava/lang/String;)V

    return-void
.end method

.method public static onLaunchGame(ILjava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;

    invoke-direct {v1, p1, p0}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking$a;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method

.method public static setFlag(I)V
    .registers 2

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->e:I

    or-int/2addr p0, v0

    sput p0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->e:I

    return-void
.end method

.method public static testFlags(I)Z
    .registers 2

    sget v0, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/Tracking;->e:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
