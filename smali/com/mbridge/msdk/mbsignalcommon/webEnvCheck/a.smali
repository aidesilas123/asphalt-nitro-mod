###### Class com.mbridge.msdk.mbsignalcommon.webEnvCheck.a (com.mbridge.msdk.mbsignalcommon.webEnvCheck.a)
.class public final Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;
.super Ljava/lang/Object;
.source "MBWebViewChecker.java"


# static fields
.field private static volatile a:Ljava/lang/Boolean;

.field private static volatile b:Landroid/os/Handler;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method static synthetic a()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 1

    sput-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->g(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->c:Ljava/lang/Boolean;

    goto :goto_23

    :cond_1f
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->c:Ljava/lang/Boolean;

    :goto_23
    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->c:Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_88

    :cond_2f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5f

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_4c

    :try_start_3d
    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->c(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    :cond_4c
    :goto_4c
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    if-nez p0, :cond_58

    new-instance p0, Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    :cond_58
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5f
    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_7c

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->b:Landroid/os/Handler;

    if-nez v0, :cond_7c

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->b:Landroid/os/Handler;

    sget-object v0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->b:Landroid/os/Handler;

    new-instance v2, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a$1;

    invoke-direct {v2, p0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7c
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    if-nez p0, :cond_81

    return v1

    :cond_81
    sget-object p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_88
    :goto_88
    return v1
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_1e

    :try_start_9
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_f
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_1b

    :catchall_d
    move-exception p0

    goto :goto_1d

    :catch_f
    move-exception p0

    :try_start_10
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "MBWebViewChecker"

    const-string v1, "destroy webview error"

    invoke-static {v0, v1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_d

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0

    :goto_1d
    throw p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

###### Class com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.AnonymousClass1 (com.mbridge.msdk.mbsignalcommon.webEnvCheck.a$1)
.class final Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a$1;
.super Ljava/lang/Object;
.source "MBWebViewChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_19

    :try_start_6
    iget-object v0, p0, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_19

    :catch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/mbridge/msdk/mbsignalcommon/webEnvCheck/a;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    :cond_19
    :goto_19
    return-void
.end method
