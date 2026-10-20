###### Class com.tapjoy.s (com.tapjoy.s)
.class public Lcom/tapjoy/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Landroid/content/Context;

.field public d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tapjoy"

    iput-object v0, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/s;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TJInstallReferrerDidSetUp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v1, p0, Lcom/tapjoy/s;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_49

    :try_start_15
    const-string v4, "getInstallReferrer"

    new-array v5, v2, [Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_3f

    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_34

    :try_start_1d
    invoke-virtual {v6, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_49

    :cond_24
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_29

    goto :goto_4a

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Tapjoy"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_49

    :catch_34
    move-exception v1

    :try_start_35
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Tapjoy"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f

    goto :goto_49

    :catch_3f
    move-exception v1

    iget-object v4, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    :goto_49
    move-object v1, v3

    :goto_4a
    if-nez v1, :cond_59

    const-string v1, "TJInstallReferrerDidSetUp"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v1, "Failed to get ReferrerDetails instance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_59
    :try_start_59
    const-string v0, "getInstallReferrer"

    new-array v2, v2, [Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5d} :catch_88

    :try_start_5d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_78

    :try_start_61
    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_68

    goto :goto_82

    :cond_68
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_83

    :catch_6d
    move-exception v0

    :try_start_6e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tapjoy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_77} :catch_78

    goto :goto_82

    :catch_78
    move-exception v0

    :try_start_79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tapjoy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_82
    move-object v0, v3

    :goto_83
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_88

    goto :goto_92

    :catch_88
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_92
    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v1, p0, Lcom/tapjoy/s;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v3, :cond_cf

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter v1

    :try_start_a1
    iget-object v2, v1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v2, v2, Lcom/tapjoy/internal/h2;->d:Lcom/tapjoy/internal/o3;

    invoke-virtual {v2}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a1 .. :try_end_aa} :catchall_cc

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_cf

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v1, v3}, Lcom/tapjoy/internal/d3;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_cf

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v2, "referrer"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    goto :goto_cf

    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0

    :cond_cf
    :goto_cf
    return-void
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 9

    const-string v0, "Tapjoy"

    iget-object v1, p0, Lcom/tapjoy/s;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v2, "startConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_d
    iget-object v1, p0, Lcom/tapjoy/s;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    new-array p1, v3, [Ljava/lang/Object;

    aput-object p2, p1, v5
    :try_end_19
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_d .. :try_end_19} :catch_45
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_3a

    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_31
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_19 .. :try_end_1d} :catch_45

    :try_start_1d
    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-nez p2, :cond_24

    goto :goto_4f

    :cond_24
    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1d .. :try_end_27} :catch_45

    goto :goto_4f

    :catch_28
    move-exception p1

    :try_start_29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_31
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_29 .. :try_end_30} :catch_45

    goto :goto_4f

    :catch_31
    move-exception p1

    :try_start_32
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_32 .. :try_end_39} :catch_45
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_3a

    goto :goto_4f

    :catch_3a
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :catch_45
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .registers 11

    const-string v0, "Tapjoy"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/s;->c:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_e

    goto :goto_73

    :cond_e
    :try_start_e
    const-string v5, "com.android.installreferrer.api.InstallReferrerClient"

    const-string v6, "newBuilder"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_20} :catch_69
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_20} :catch_5e

    :try_start_20
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_34

    :cond_27
    invoke-virtual {v1, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_20 .. :try_end_2b} :catch_69

    goto :goto_35

    :catch_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move-object v1, v4

    :goto_35
    if-nez v1, :cond_38

    goto :goto_73

    :cond_38
    const-string v5, "build"

    new-array v6, v3, [Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2d .. :try_end_3c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3c} :catch_5e

    :try_start_3c
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_40} :catch_55
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3c .. :try_end_40} :catch_69

    :try_start_40
    invoke-virtual {v7, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-nez v5, :cond_47

    goto :goto_73

    :cond_47
    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_4c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_40 .. :try_end_4b} :catch_69

    goto :goto_74

    :catch_4c
    move-exception v1

    :try_start_4d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_54} :catch_55
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4d .. :try_end_54} :catch_69

    goto :goto_73

    :catch_55
    move-exception v1

    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_56 .. :try_end_5d} :catch_69
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5d} :catch_5e

    goto :goto_73

    :catch_5e
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    :catch_69
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_73
    move-object v0, v4

    :goto_74
    iput-object v0, p0, Lcom/tapjoy/s;->b:Ljava/lang/Object;

    if-nez v0, :cond_80

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v0, "Failed to activate InstallReferrerClient. No available InstallReferrrerClient."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    :try_start_80
    const-string v0, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_86
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_80 .. :try_end_86} :catch_92
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_86} :catch_87

    goto :goto_9d

    :catch_87
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_92
    move-exception v0

    iget-object v1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9c
    move-object v0, v4

    :goto_9d
    if-nez v0, :cond_a7

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v0, "InstallReferrerClient setup failed. No available InstallReferrrerStateListener."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a7
    :try_start_a7
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v3

    invoke-static {v1, v2, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b3} :catch_b4

    goto :goto_be

    :catch_b4
    move-exception v1

    iget-object v2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_be
    if-nez v4, :cond_c8

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v0, "InstallReferrerClient setup failed. No available InstallReferrrerStateListener object."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c8
    const-string v1, "com.tapjoy.referrer"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/s;->d:Landroid/content/SharedPreferences;

    const-string v1, "TJInstallReferrerDidSetUp"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_e6

    :try_start_d8
    invoke-virtual {p0, v0, v4}, Lcom/tapjoy/s;->b(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_e6

    :catch_dc
    move-exception p1

    iget-object v0, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e6
    :goto_e6
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string p1, "Tapjoy"

    const/4 v0, 0x0

    if-nez p2, :cond_d

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "Failed to invoke null method"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1b

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "Failed to invoke null method name"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1b
    const/4 v1, 0x0

    if-nez p3, :cond_27

    iget-object p3, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string v2, "Invoking method with null args"

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p3, v1, [Ljava/lang/Object;

    :cond_27
    const-string v2, "onInstallReferrerSetupFinished"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    array-length p2, p3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3b

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "Invalid args"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3b
    aget-object p2, p3, v1

    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_49

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "Invalid args type."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_49
    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_55

    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "onInstallReferrerSetupFinished response code can\'t be null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_76

    const-string p1, "Install referrer service isn\'t available"

    if-eq p2, v2, :cond_70

    const/4 p3, 0x2

    if-eq p2, p3, :cond_68

    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_68
    iget-object p1, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    const-string p2, "Install referrer isn\'t supported on the current Play Store app."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_70
    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_76
    :try_start_76
    invoke-virtual {p0}, Lcom/tapjoy/s;->a()V

    iget-object p2, p0, Lcom/tapjoy/s;->b:Ljava/lang/Object;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7b} :catch_ad

    if-eqz p2, :cond_c7

    :try_start_7d
    const-string p3, "endConnection"

    new-array v1, v1, [Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_a2

    :try_start_81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_85} :catch_99

    :try_start_85
    invoke-virtual {v2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    if-nez p3, :cond_8c

    goto :goto_c7

    :cond_8c
    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8f} :catch_90

    goto :goto_c7

    :catch_90
    move-exception p2

    :try_start_91
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_99

    goto :goto_c7

    :catch_99
    move-exception p2

    :try_start_9a
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a1} :catch_a2

    goto :goto_c7

    :catch_a2
    move-exception p1

    :try_start_a3
    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_ac} :catch_ad

    goto :goto_c7

    :catch_ad
    move-exception p1

    iget-object p2, p0, Lcom/tapjoy/s;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    :cond_b8
    const-string p1, "onInstallReferrerServiceDisconnected"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    iget-object p1, p0, Lcom/tapjoy/s;->c:Landroid/content/Context;

    if-eqz p1, :cond_c7

    invoke-virtual {p0, p1}, Lcom/tapjoy/s;->c(Landroid/content/Context;)V

    :cond_c7
    :goto_c7
    return-object v0
.end method
