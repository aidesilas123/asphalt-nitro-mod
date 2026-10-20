###### Class com.mbridge.msdk.foundation.tools.g (com.mbridge.msdk.foundation.tools.g)
.class public Lcom/mbridge/msdk/foundation/tools/g;
.super Ljava/lang/Object;
.source "DomainSameDiTool.java"


# static fields
.field private static volatile a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Z

.field private static f:Z

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g()Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    :goto_20
    return-object v1

    :cond_21
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/w;->z()V

    sget-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->f:Z

    if-nez v0, :cond_3e

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->f:Z

    :cond_3e
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    :goto_49
    return-object v1

    :cond_4a
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h()Z

    move-result v0

    if-nez v0, :cond_58

    sget v0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    if-nez v0, :cond_57

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    return-object v0

    :cond_57
    return-object v1

    :cond_58
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    :try_start_3
    const-string v0, "com.mbridge.msdk.mbsignalcommon.webEnvCheck.WebEnvCheckEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "check"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_27
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ga_id"

    invoke-static {p0, v0, p1}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    const-string p1, "ga_id_limit"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DomainSameDiTool"

    invoke-static {p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    sput-object p0, Lcom/mbridge/msdk/foundation/tools/g;->a:Ljava/lang/String;

    return-void
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    return v0
.end method

.method static synthetic b(I)I
    .registers 1

    sput p0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/g$1;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/tools/g$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v0

    const-string v1, "authority_device_id"

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g()Z

    move-result v0

    if-nez v0, :cond_21

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    :goto_20
    return-object v1

    :cond_21
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->f:Z

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/g;->b(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->f:Z

    :cond_3b
    return-object v1

    :cond_3c
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h()Z

    move-result v0

    if-nez v0, :cond_4a

    sget v0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    if-nez v0, :cond_49

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    return-object v0

    :cond_49
    return-object v1

    :cond_4a
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 5

    const-string v0, "DomainSameDiTool"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v1

    const-string v2, "authority_device_id"

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v0, ""

    return-object v0

    :cond_11
    sget-boolean v1, Lcom/mbridge/msdk/foundation/tools/g;->e:Z

    if-eqz v1, :cond_18

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->c:Ljava/lang/String;

    return-object v0

    :cond_18
    :try_start_18
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_5b

    :try_start_1d
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "limit_ad_tracking"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    const-string v4, "advertising_id"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "amazonId"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/g;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/g;->c:Ljava/lang/String;
    :try_end_51
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1d .. :try_end_51} :catch_52
    .catchall {:try_start_1d .. :try_end_51} :catchall_5b

    goto :goto_63

    :catch_52
    move-exception v1

    :try_start_53
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_5b

    goto :goto_63

    :catchall_5b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_63
    :goto_63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->e:Z

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/mbridge/msdk/foundation/tools/g;->e:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/g;->d()Ljava/lang/String;

    :cond_f
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()I
    .registers 1

    sget v0, Lcom/mbridge/msdk/foundation/tools/g;->g:I

    return v0
.end method
