###### Class com.json.u2 (com.ironsource.u2)
.class public Lcom/ironsource/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/u2$d;
    }
.end annotation


# static fields
.field public static l:Ljava/lang/String; = ""


# instance fields
.field private final a:Lcom/ironsource/e5;

.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/u2;->b:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/u2;->g:Ljava/lang/Thread$UncaughtExceptionHandler;

    const-string v1, " "

    iput-object v1, p0, Lcom/ironsource/u2;->i:Ljava/lang/String;

    const-string v1, "https://outcome-crash-report.supersonicads.com/reporter"

    iput-object v1, p0, Lcom/ironsource/u2;->h:Ljava/lang/String;

    new-instance v1, Lcom/ironsource/t2;

    invoke-direct {v1, v0}, Lcom/ironsource/t2;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/u2$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/u2;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/ironsource/u2;)Lcom/ironsource/e5;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    return-object p0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "none"

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    :try_start_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_12} :catch_5c

    const/16 v2, 0x17

    const-string v3, "cellular"

    const-string v4, "wifi"

    if-lt v1, v2, :cond_35

    :try_start_1a
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_25

    return-object v0

    :cond_25
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    return-object v4

    :cond_2d
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5b

    return-object v3

    :cond_35
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_5b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return-object v4

    :cond_4e
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MOBILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_58} :catch_5c

    if-eqz p1, :cond_5b

    return-object v3

    :cond_5b
    return-object v0

    :catch_5c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static d()Lcom/ironsource/u2;
    .registers 1

    sget-object v0, Lcom/ironsource/u2$d;->a:Lcom/ironsource/u2;

    return-object v0
.end method

.method static synthetic d(Lcom/ironsource/u2;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u2;->c:Ljava/lang/String;

    return-object p1
.end method

.method private e(Landroid/content/Context;Ljava/util/HashSet;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ironsource/u2;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/u2;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13e

    const/4 v1, 0x0

    const-string v2, "CRep"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/u2;->c:Ljava/lang/String;

    const-string v3, "String1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/u2;->d:Ljava/lang/String;

    const-string v4, "sId"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/b3;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ironsource/j4;

    invoke-virtual {v5}, Lcom/ironsource/j4;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/ironsource/j4;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/ironsource/j4;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_50
    const-string v10, "crashDate"

    invoke-virtual {v9, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "stacktraceCrash"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "crashType"

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "CrashReporterVersion"

    const-string v6, "1.0.5"

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "SDKVersion"

    const-string v6, "7.7.0"

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceLanguage"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6, p1}, Lcom/ironsource/e5;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appVersion"

    invoke-static {p1, v8}, Lcom/ironsource/k0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceOSVersion"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6}, Lcom/ironsource/e5;->o()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "network"

    invoke-virtual {v9, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceApiLevel"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6}, Lcom/ironsource/e5;->k()I

    move-result v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "deviceModel"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6}, Lcom/ironsource/e5;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceOS"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6}, Lcom/ironsource/e5;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "advertisingId"

    invoke-virtual {v9, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceOEM"

    iget-object v6, p0, Lcom/ironsource/u2;->a:Lcom/ironsource/e5;

    invoke-interface {v6}, Lcom/ironsource/e5;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "systemProperties"

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "bundleId"

    invoke-virtual {v9, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/ironsource/u2;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e6

    iget-object v5, p0, Lcom/ironsource/u2;->e:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "isLimitAdTrackingEnabled"

    invoke-virtual {v9, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_e6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_117

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_117

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f7
    :goto_f7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_116

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_103} :catch_11a

    :try_start_103
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f7

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_110} :catch_111

    goto :goto_f7

    :catch_111
    move-exception v7

    :try_start_112
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f7

    :cond_116
    move-object v9, v5

    :cond_117
    iput-object v9, p0, Lcom/ironsource/u2;->b:Lorg/json/JSONObject;
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_119} :catch_11a

    goto :goto_11b

    :catch_11a
    nop

    :goto_11b
    iget-object v5, p0, Lcom/ironsource/u2;->b:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-nez v5, :cond_12c

    const-string v5, "ISCrashReport"

    const-string v6, " Is Empty"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    :cond_12c
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/ironsource/u2$c;

    invoke-direct {v6, p0}, Lcom/ironsource/u2$c;-><init>(Lcom/ironsource/u2;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/ironsource/b3;->a()V

    goto/16 :goto_2f

    :cond_13e
    return-void
.end method

.method static synthetic f(Lcom/ironsource/u2;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u2;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/u2;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/u2;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/ironsource/u2;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u2;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ironsource/u2;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/u2;->b:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/u2;->f:Landroid/content/Context;

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    if-eqz p1, :cond_49

    const-string v0, "automation_log"

    const-string v1, "init ISCrashReporter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ironsource/u2;->f:Landroid/content/Context;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    iput-object p4, p0, Lcom/ironsource/u2;->i:Ljava/lang/String;

    :cond_13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1b

    iput-object p3, p0, Lcom/ironsource/u2;->h:Ljava/lang/String;

    :cond_1b
    iput-object p6, p0, Lcom/ironsource/u2;->d:Ljava/lang/String;

    if-eqz p5, :cond_39

    new-instance p3, Lcom/ironsource/a;

    invoke-direct {p3, p7}, Lcom/ironsource/a;-><init>(I)V

    invoke-virtual {p3, p8}, Lcom/ironsource/a;->a(Z)Lcom/ironsource/a;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/ironsource/a;->b(Z)Lcom/ironsource/a;

    move-result-object p3

    new-instance p4, Lcom/ironsource/u2$a;

    invoke-direct {p4, p0}, Lcom/ironsource/u2$a;-><init>(Lcom/ironsource/u2;)V

    invoke-virtual {p3, p4}, Lcom/ironsource/a;->a(Lcom/ironsource/sb;)Lcom/ironsource/a;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :cond_39
    invoke-direct {p0, p1, p2}, Lcom/ironsource/u2;->e(Landroid/content/Context;Ljava/util/HashSet;)V

    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/ironsource/u2$b;

    invoke-direct {p3, p0, p1, p6}, Lcom/ironsource/u2$b;-><init>(Lcom/ironsource/u2;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_49
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.5"

    return-object v0
.end method

.method j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/u2;->i:Ljava/lang/String;

    return-object v0
.end method
