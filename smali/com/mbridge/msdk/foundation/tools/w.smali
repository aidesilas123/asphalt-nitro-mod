###### Class com.mbridge.msdk.foundation.tools.w (com.mbridge.msdk.foundation.tools.w)
.class public final Lcom/mbridge/msdk/foundation/tools/w;
.super Lcom/mbridge/msdk/foundation/tools/g;
.source "SameDiTool.java"


# static fields
.field private static a:I = -0x1

.field private static b:I = -0x1

.field private static volatile c:I = -0x1

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:Ljava/lang/String; = ""

.field private static h:I = 0x0

.field private static i:Ljava/lang/String; = ""

.field private static j:Ljava/lang/String; = ""

.field private static k:I = -0x1

.field private static l:Ljava/lang/String; = ""

.field private static m:I = 0x0

.field private static n:Ljava/lang/String; = ""

.field private static o:Ljava/lang/String; = null

.field private static p:I = 0x0

.field private static q:I = -0x1

.field private static r:I = -0x1

.field private static s:Ljava/lang/Object; = null

.field private static t:I = 0x0

.field private static u:I = 0x0

.field private static v:I = -0x1

.field private static w:Ljava/lang/String; = ""

.field private static x:Ljava/lang/String; = ""

.field private static y:Ljava/lang/String; = ""

.field private static z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic A()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static B()V
    .registers 5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->i()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mozilla/5.0 (Linux; Android "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Build/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v2, ""

    :cond_36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    goto :goto_49

    :cond_45
    const-string v0, "Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.133 Mobile Safari/535.19"

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    :goto_49
    return-void
.end method

.method private static C()J
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_23

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v0

    :cond_23
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static D()Ljava/lang/String;
    .registers 7

    const-string v0, "SameDiTool"

    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->n:Ljava/lang/String;

    return-object v0

    :cond_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_14
    const-string v4, "com.huawei.system.BuildEx"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getOsBrand"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_2c

    move-object v2, v4

    goto :goto_34

    :catchall_2c
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    :try_start_34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9d

    const-string v4, "harmony"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    const-string v4, "osType"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_a2

    :try_start_47
    const-string v2, "ohos.system.version.SystemVersion"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getVersion"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "version"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_63

    goto :goto_6b

    :catchall_63
    move-exception v2

    :try_start_64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_a2

    :goto_6b
    :try_start_6b
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pure_mode_state"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "pure_state"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_83
    .catchall {:try_start_6b .. :try_end_83} :catchall_84

    goto :goto_8c

    :catchall_84
    move-exception v2

    :try_start_85
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9a

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_9a
    sput-object v1, Lcom/mbridge/msdk/foundation/tools/w;->n:Ljava/lang/String;

    goto :goto_aa

    :cond_9d
    const-string v1, "android"

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/w;->n:Ljava/lang/String;
    :try_end_a1
    .catchall {:try_start_85 .. :try_end_a1} :catchall_a2

    goto :goto_aa

    :catchall_a2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_aa
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-eqz p1, :cond_2c

    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    goto :goto_2c

    :cond_9
    :try_start_9
    sget-boolean p1, Lcom/mbridge/msdk/foundation/same/a;->c:Z

    if-eqz p1, :cond_2c

    const-string p1, "phone"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_18

    return-object v0

    :cond_18
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_22

    move-object v0, p0

    goto :goto_2c

    :catchall_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SameDiTool"

    invoke-static {v1, p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "SameDiTool"

    :try_start_2
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->l:Ljava/lang/String;

    return-object p0

    :cond_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->l:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PKGSource:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/mbridge/msdk/foundation/tools/w;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_36

    goto :goto_3e

    :catch_36
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->s:Ljava/lang/Object;

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/af;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->s:Ljava/lang/Object;

    :cond_a
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->s:Ljava/lang/Object;

    return-object p0
.end method

.method public static c(I)I
    .registers 1

    packed-switch p0, :pswitch_data_e

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_7
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->t:I

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/af;->f(Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->t:I

    :cond_a
    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->t:I

    return p0
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/g;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->n()Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->o(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->j(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->i(Landroid/content/Context;)I

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->h(Landroid/content/Context;)I

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->i()Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->k()Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->g(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->m()Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/same/a;->d:Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/af;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/same/a;->c:Z

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->k(Landroid/content/Context;)I

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->D()Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->d()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_0 .. :try_end_32} :catchall_33

    goto :goto_3d

    :catchall_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SameDiTool"

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_47

    if-nez p0, :cond_1b

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    return-object v0

    :cond_1b
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/af;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    goto :goto_47

    :cond_3e
    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_47

    :catch_41
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    :cond_47
    :goto_47
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static d(I)V
    .registers 1

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->v:I

    return-void
.end method

.method static synthetic e(I)I
    .registers 1

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    if-nez p0, :cond_1d

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->w:Ljava/lang/String;

    return-object p0

    :cond_1d
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/af;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;

    goto :goto_48

    :cond_3f
    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_41} :catch_42

    goto :goto_48

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;

    :cond_48
    :goto_48
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->x:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)I
    .registers 3

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const-string v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/mbridge/msdk/foundation/tools/af;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->q:I

    :cond_d
    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->q:I

    return p0
.end method

.method public static g()I
    .registers 2

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->r:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->d()Z

    move-result v0

    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->r:I

    :cond_b
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->r:I

    return v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string p0, ""

    return-object p0

    :cond_f
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    const-string v0, "en-US"

    if-nez p0, :cond_1c

    return-object v0

    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_68

    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-nez p0, :cond_3a

    return-object v0

    :cond_3a
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_47

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;

    goto :goto_65

    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;

    :goto_65
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;
    :try_end_67
    .catchall {:try_start_1c .. :try_end_67} :catchall_69

    return-object p0

    :cond_68
    :goto_68
    return-object v0

    :catchall_69
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SameDiTool"

    invoke-static {v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;

    :cond_75
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static h()I
    .registers 1

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->u:I

    if-nez v0, :cond_a

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->e()I

    move-result v0

    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->u:I

    :cond_a
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->u:I

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1d

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    if-nez p0, :cond_15

    return v0

    :cond_15
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1b

    return v1

    :cond_1b
    if-ne p0, v0, :cond_1d

    :cond_1d
    :goto_1d
    return v0
.end method

.method public static i(Landroid/content/Context;)I
    .registers 3

    if-nez p0, :cond_5

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->h:I

    return p0

    :cond_5
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->h:I

    if-nez v0, :cond_21

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->h:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0

    :cond_21
    return v0
.end method

.method public static i()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
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

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->g:Ljava/lang/String;

    return-object p0

    :cond_5
    :try_start_5
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->g:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_22

    return-object p0

    :cond_1f
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->g:Ljava/lang/String;

    return-object p0

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static k(Landroid/content/Context;)I
    .registers 2

    if-nez p0, :cond_5

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->m:I

    return p0

    :cond_5
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->m:I

    if-nez v0, :cond_1c

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p0, Lcom/mbridge/msdk/foundation/tools/w;->m:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SameDiTool"

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->m:I

    return p0
.end method

.method public static k()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static l(Landroid/content/Context;)I
    .registers 5

    const-string v0, "width"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    if-nez p0, :cond_13

    return v2

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->n(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    iget p0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_32

    :cond_28
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33

    :goto_32
    return p0

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/w;->q(Landroid/content/Context;)Ljava/lang/String;

    :cond_13
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static m(Landroid/content/Context;)I
    .registers 5

    const-string v0, "height"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_10

    return v2

    :cond_10
    if-nez p0, :cond_13

    return v2

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->n(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_28

    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_32

    :cond_28
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_32} :catch_33

    :goto_32
    return p0

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method

.method public static m()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_other"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/w$4;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/tools/w$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->j:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_0 .. :try_end_26} :catchall_27

    return-object v0

    :catchall_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->o()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->e:Ljava/lang/String;

    :cond_2c
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_23

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_26

    :cond_23
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_26
    const-string p0, "height"

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "width"

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_3d

    goto :goto_47

    :catch_3d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_47
    return-object v0
.end method

.method public static o()I
    .registers 1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->f:Ljava/lang/String;

    return-object p0

    :cond_5
    :try_start_5
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->f:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1e} :catch_22

    return-object p0

    :cond_1f
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->f:Ljava/lang/String;

    return-object p0

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static p()I
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static p(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_16

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/g;->a(Landroid/content/Context;)V

    goto :goto_30

    :cond_16
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/w$1;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/tools/w$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const-string v0, "SameDiTool"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-void
.end method

.method public static q()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, ""

    return-object v0

    :cond_f
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "SameDiTool"

    if-eqz v0, :cond_2f

    :try_start_18
    const-string v0, "mbridge_ua"

    const-string v3, ""

    invoke-static {p0, v0, v3}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_3d

    const/4 v0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_ba

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DNT_GUA_ON_UI:Z

    if-nez v0, :cond_ba

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_c9

    if-eqz v0, :cond_b6

    :try_start_4c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_58

    :catchall_58
    :cond_58
    :try_start_58
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_c9

    if-eqz v0, :cond_d1

    :try_start_60
    const-class v0, Landroid/webkit/WebSettings;

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v5

    const-class v7, Landroid/webkit/WebView;

    aput-object v7, v6, v4

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8e
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_c9

    if-eqz v0, :cond_aa

    :try_start_96
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;
    :try_end_a5
    .catchall {:try_start_96 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v0

    :try_start_a7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_aa
    :goto_aa
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->B()V

    goto :goto_d1

    :cond_b6
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->x(Landroid/content/Context;)V

    goto :goto_d1

    :cond_ba
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->B()V

    :cond_c5
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->x(Landroid/content/Context;)V
    :try_end_c8
    .catchall {:try_start_a7 .. :try_end_c8} :catchall_c9

    goto :goto_d1

    :catchall_c9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d1
    :goto_d1
    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->y(Landroid/content/Context;)V

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static r(Landroid/content/Context;)I
    .registers 5

    const-string p0, "SameDiTool"

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v2

    const-string v3, "authority_general_data"

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0

    :cond_1a
    if-nez v1, :cond_1f

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0

    :cond_1f
    sget v2, Lcom/mbridge/msdk/foundation/tools/w;->c:I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_4c

    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    :try_start_24
    new-instance v2, Lcom/mbridge/msdk/foundation/tools/w$3;

    invoke-direct {v2, v1}, Lcom/mbridge/msdk/foundation/tools/w$3;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_44

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3c

    goto :goto_44

    :catchall_3c
    move-exception v1

    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0

    :cond_47
    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->c:I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_49} :catch_4c

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0

    :catch_4c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    sget p0, Lcom/mbridge/msdk/foundation/tools/w;->c:I

    return p0
.end method

.method public static r()Ljava/lang/String;
    .registers 8

    const-string v0, "SameDiTool"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, ""

    return-object v0

    :cond_11
    sget v1, Lcom/mbridge/msdk/foundation/tools/w;->p:I

    const-string v2, "GB"

    if-lez v1, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/mbridge/msdk/foundation/tools/w;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v1, "/proc/meminfo"

    const/4 v3, 0x0

    sput v3, Lcom/mbridge/msdk/foundation/tools/w;->p:I

    const/4 v3, 0x0

    :try_start_2f
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_95
    .catchall {:try_start_2f .. :try_end_34} :catchall_7d

    :try_start_34
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_78
    .catchall {:try_start_34 .. :try_end_3b} :catchall_73

    :try_start_3b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_68

    new-instance v5, Ljava/lang/Float;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v6, 0x49800000    # 1048576.0f

    div-float/2addr v3, v6

    invoke-direct {v5, v3}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    sput v3, Lcom/mbridge/msdk/foundation/tools/w;->p:I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_68} :catch_71
    .catchall {:try_start_3b .. :try_end_68} :catchall_6f

    :cond_68
    :try_start_68
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_ad

    goto :goto_b1

    :catchall_6f
    move-exception v3

    goto :goto_81

    :catch_71
    move-exception v3

    goto :goto_99

    :catchall_73
    move-exception v1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_81

    :catch_78
    move-exception v1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_99

    :catchall_7d
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    :goto_81
    :try_start_81
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_c3

    if-eqz v4, :cond_8f

    :try_start_8a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    nop

    :cond_8f
    :goto_8f
    if-eqz v1, :cond_b1

    :try_start_91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_ad

    goto :goto_b1

    :catch_95
    move-exception v1

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    :goto_99
    :try_start_99
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_c3

    if-eqz v4, :cond_a7

    :try_start_a2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_a7

    :catch_a6
    nop

    :cond_a7
    :goto_a7
    if-eqz v1, :cond_b1

    :try_start_a9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_b1

    :catch_ad
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b1
    :goto_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/mbridge/msdk/foundation/tools/w;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_c3
    move-exception v0

    if-eqz v4, :cond_cb

    :try_start_c6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_cb

    :catch_ca
    nop

    :cond_cb
    :goto_cb
    if-eqz v1, :cond_d5

    :try_start_cd
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d5
    :goto_d5
    throw v0
.end method

.method public static s()Ljava/lang/String;
    .registers 11

    const-string v0, "_"

    const-string v1, ""

    :try_start_4
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/v;->a()J

    move-result-wide v3

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->C()J

    move-result-wide v5

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/w;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app_tki_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_7b

    :try_start_3b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_80

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_78

    :try_start_46
    const-string v10, "1"

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "2"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "3"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "4"

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "5"

    invoke-virtual {v9, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_67} :catch_68

    goto :goto_6c

    :catch_68
    move-exception v1

    :try_start_69
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6c
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_74} :catch_78

    :try_start_74
    invoke-static {v2, v0, v1}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_7b

    goto :goto_7f

    :catch_78
    move-exception v0

    move-object v1, v8

    goto :goto_7c

    :catch_7b
    move-exception v0

    :goto_7c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7f
    move-object v8, v1

    :cond_80
    return-object v8
.end method

.method public static s(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public static t()I
    .registers 11

    const-string v0, "FreeRamSize"

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v8, 0x1b7740

    cmp-long v10, v4, v8

    if-gtz v10, :cond_3a

    sget v4, Lcom/mbridge/msdk/foundation/tools/w;->b:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_76

    :cond_3a
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_56

    const-string v2, "activity"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    :cond_56
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lcom/mbridge/msdk/foundation/tools/w;->b:I

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_2 .. :try_end_6b} :catchall_6c

    goto :goto_76

    :catchall_6c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->b:I

    return v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "SameDiTool"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_11

    return-object v2

    :cond_11
    if-nez p0, :cond_14

    return-object v2

    :cond_14
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "time_12_24"

    invoke-static {p0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_28
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_30
    return-object v2
.end method

.method public static u()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_general_data"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_e

    :cond_e
    return-object v1
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const-string v0, "SameDiTool"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_11

    return-object v2

    :cond_11
    if-nez p0, :cond_14

    return-object v2

    :cond_14
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->o:Ljava/lang/String;

    return-object p0

    :cond_1f
    const-string v1, "/proc/meminfo"

    const/4 v3, 0x0

    :try_start_22
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_8d
    .catchall {:try_start_22 .. :try_end_27} :catchall_70

    :try_start_27
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2e} :catch_6e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_6c

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\s+"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    mul-long v5, v5, v7

    invoke-static {p0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->o:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_4d} :catch_69
    .catchall {:try_start_2e .. :try_end_4d} :catchall_66

    :try_start_4d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_59

    :catch_51
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    :try_start_59
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_65

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_65
    return-object p0

    :catchall_66
    move-exception p0

    move-object v3, v1

    goto :goto_72

    :catch_69
    move-exception p0

    move-object v3, v1

    goto :goto_8f

    :catchall_6c
    move-exception p0

    goto :goto_72

    :catch_6e
    move-exception p0

    goto :goto_8f

    :catchall_70
    move-exception p0

    move-object v4, v3

    :goto_72
    :try_start_72
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_b3

    if-eqz v3, :cond_87

    :try_start_7b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_87

    :catch_7f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    if-eqz v4, :cond_b2

    :try_start_89
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_aa

    goto :goto_b2

    :catch_8d
    move-exception p0

    move-object v4, v3

    :goto_8f
    :try_start_8f
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_b3

    if-eqz v3, :cond_a4

    :try_start_98
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_a4

    :catch_9c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a4
    :goto_a4
    if-eqz v4, :cond_b2

    :try_start_a6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_b2

    :catch_aa
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b2
    :goto_b2
    return-object v2

    :catchall_b3
    move-exception p0

    if-eqz v3, :cond_c2

    :try_start_b6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_c2

    :catch_ba
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c2
    :goto_c2
    if-eqz v4, :cond_d0

    :try_start_c4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_d0

    :catch_c8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d0
    :goto_d0
    throw p0
.end method

.method public static v()I
    .registers 9

    const-string v0, "TotalRamSize"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    sget v1, Lcom/mbridge/msdk/foundation/tools/w;->a:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_63

    :try_start_15
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v2, v6

    if-gtz v8, :cond_3f

    sget v2, Lcom/mbridge/msdk/foundation/tools/w;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_63

    :cond_3f
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->C()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lcom/mbridge/msdk/foundation/tools/w;->a:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_59

    goto :goto_63

    :catchall_59
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameDiTool"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_63
    :goto_63
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->a:I

    return v0
.end method

.method static synthetic v(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/w;->y(Landroid/content/Context;)V

    return-void
.end method

.method public static w()I
    .registers 1

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->k:I

    return v0
.end method

.method private static w(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_general_data"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/w;->y:Ljava/lang/String;

    goto :goto_2e

    :cond_25
    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->y:Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/w;->y:Ljava/lang/String;

    :cond_2e
    :goto_2e
    sget-object p0, Lcom/mbridge/msdk/foundation/tools/w;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static x()I
    .registers 1

    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->v:I

    return v0
.end method

.method private static x(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/w$2;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/tools/w$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public static y()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac$a;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v1

    const-string v2, "v_a_d_p"

    invoke-virtual {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->h()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    sput v1, Lcom/mbridge/msdk/foundation/tools/w;->z:I

    goto :goto_31

    :cond_17
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/af;->i()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    sput v1, Lcom/mbridge/msdk/foundation/tools/w;->z:I

    goto :goto_31

    :cond_21
    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->z:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_25

    goto :goto_31

    :cond_24
    return v0

    :catch_25
    move-exception v1

    sput v0, Lcom/mbridge/msdk/foundation/tools/w;->z:I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameDiTool"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    sget v0, Lcom/mbridge/msdk/foundation/tools/w;->z:I

    return v0
.end method

.method private static y(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "mbridge_ua"

    sget-object v1, Lcom/mbridge/msdk/foundation/tools/w;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_12

    :catchall_8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameDiTool"

    invoke-static {v1, v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method

.method public static z()V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ga_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ga_id_limit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4e

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g;->a(Ljava/lang/String;)V

    :cond_32
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_4e

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g;->a(I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_4e

    :catch_40
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameDiTool"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method
