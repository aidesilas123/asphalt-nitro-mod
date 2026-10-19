###### Class com.tapjoy.internal.d3 (com.tapjoy.internal.d3)
.class public final Lcom/tapjoy/internal/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/d3;


# instance fields
.field public final b:Lcom/tapjoy/internal/a9;

.field public final c:Lcom/tapjoy/internal/p4;

.field public final d:Lcom/tapjoy/internal/s5;

.field public final e:Landroid/content/Context;

.field public final f:Lcom/tapjoy/internal/h2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tapjoy/internal/h2;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/tapjoy/internal/e7;->a()V

    new-instance v0, Lcom/tapjoy/internal/a9;

    invoke-direct {v0}, Lcom/tapjoy/internal/a9;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    new-instance v1, Lcom/tapjoy/internal/p4;

    invoke-direct {v1}, Lcom/tapjoy/internal/p4;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/internal/d3;->c:Lcom/tapjoy/internal/p4;

    new-instance v2, Lcom/tapjoy/internal/s5;

    invoke-direct {v2}, Lcom/tapjoy/internal/s5;-><init>()V

    iput-object v2, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    const-string v2, "13.3.0/Android"

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->o:Ljava/lang/String;

    const-string v2, "Android"

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->f:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->g:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->d:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->e:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->k:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->l:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/d3;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/tapjoy/internal/f1;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->c:Ljava/lang/String;

    invoke-static {}, Lcom/tapjoy/internal/ca;->a()Lcom/tapjoy/internal/t6;

    move-result-object v2

    const-string v3, "TJC_OPTION_DISABLE_ANDROID_ID_AS_ANALYTICS_ID"

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/c4;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_61

    invoke-static {p1}, Lcom/tapjoy/internal/f1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->r:Ljava/lang/String;

    :cond_61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_81

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tapjoy/internal/a9;->p:Ljava/lang/String;

    :cond_81
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_93

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/internal/a9;->q:Ljava/lang/String;

    :cond_93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/a9;->m:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tapjoy/internal/e5;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tapjoy/internal/r9;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tapjoy/internal/a9;->n:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tapjoy/internal/e5;->c(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/p4;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/tapjoy/internal/e5;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/p4;->b(Ljava/lang/Integer;)V

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c0

    iput-object v0, v1, Lcom/tapjoy/internal/p4;->e:Ljava/lang/String;

    :cond_c0
    invoke-static {v2, p1}, Lcom/tapjoy/internal/d3;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    iput-object p1, v1, Lcom/tapjoy/internal/p4;->f:Ljava/lang/String;

    :cond_cc
    invoke-virtual {p0}, Lcom/tapjoy/internal/d3;->k()V

    iput-object p2, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    invoke-virtual {p0}, Lcom/tapjoy/internal/d3;->i()V

    return-void
.end method

.method public static a(II)I
    .registers 3

    const/4 v0, 0x1

    shl-int p0, v0, p0

    sub-int/2addr p0, v0

    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tapjoy/internal/d3;
    .registers 4

    const-class v0, Lcom/tapjoy/internal/d3;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/d3;->a:Lcom/tapjoy/internal/d3;

    if-nez v1, :cond_13

    new-instance v1, Lcom/tapjoy/internal/d3;

    new-instance v2, Lcom/tapjoy/internal/h2;

    invoke-direct {v2, p0}, Lcom/tapjoy/internal/h2;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/internal/d3;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/h2;)V

    sput-object v1, Lcom/tapjoy/internal/d3;->a:Lcom/tapjoy/internal/d3;

    :cond_13
    sget-object p0, Lcom/tapjoy/internal/d3;->a:Lcom/tapjoy/internal/d3;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x80

    :try_start_2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1b

    const-string p1, "com.tapjoy.appstore"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/tapjoy/internal/y;
    .registers 48

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v1, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->k:Ljava/lang/String;

    iget-object v0, v1, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tapjoy/internal/a9;->l:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    sub-long/2addr v2, v4

    iget-object v4, v1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v4, v4, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2c
    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/b0;

    iget-object v5, v5, Lcom/tapjoy/internal/b0;->e:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gtz v7, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_2c

    :cond_47
    if-eqz v0, :cond_4c

    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/internal/d3;->l()V

    :cond_4c
    new-instance v0, Lcom/tapjoy/internal/y;

    iget-object v2, v1, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    new-instance v15, Lcom/tapjoy/internal/f;

    iget-object v5, v2, Lcom/tapjoy/internal/a9;->c:Ljava/lang/String;

    iget-object v6, v2, Lcom/tapjoy/internal/a9;->d:Ljava/lang/String;

    iget-object v7, v2, Lcom/tapjoy/internal/a9;->e:Ljava/lang/String;

    iget-object v8, v2, Lcom/tapjoy/internal/a9;->f:Ljava/lang/String;

    iget-object v9, v2, Lcom/tapjoy/internal/a9;->g:Ljava/lang/String;

    iget-object v10, v2, Lcom/tapjoy/internal/a9;->h:Ljava/lang/Integer;

    iget-object v11, v2, Lcom/tapjoy/internal/a9;->i:Ljava/lang/Integer;

    iget-object v12, v2, Lcom/tapjoy/internal/a9;->j:Ljava/lang/Integer;

    iget-object v13, v2, Lcom/tapjoy/internal/a9;->k:Ljava/lang/String;

    iget-object v14, v2, Lcom/tapjoy/internal/a9;->l:Ljava/lang/String;

    iget-object v3, v2, Lcom/tapjoy/internal/a9;->m:Ljava/lang/String;

    iget-object v4, v2, Lcom/tapjoy/internal/a9;->n:Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v2, Lcom/tapjoy/internal/a9;->o:Ljava/lang/String;

    move-object/from16 v17, v4

    iget-object v4, v2, Lcom/tapjoy/internal/a9;->p:Ljava/lang/String;

    move-object/from16 v18, v4

    iget-object v4, v2, Lcom/tapjoy/internal/a9;->q:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v2, Lcom/tapjoy/internal/a9;->r:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/internal/l5;->a()Lcom/tapjoy/internal/c1;

    move-result-object v22

    const/4 v2, 0x0

    move-object/from16 v21, v4

    move-object v4, v2

    const/16 v20, 0x0

    move-object v2, v3

    move-object v3, v15

    move-object/from16 v23, v15

    move-object v15, v2

    invoke-direct/range {v3 .. v22}, Lcom/tapjoy/internal/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/c1;)V

    iget-object v2, v1, Lcom/tapjoy/internal/d3;->c:Lcom/tapjoy/internal/p4;

    new-instance v9, Lcom/tapjoy/internal/r5;

    iget-object v4, v2, Lcom/tapjoy/internal/p4;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/tapjoy/internal/p4;->d:Ljava/lang/Integer;

    iget-object v6, v2, Lcom/tapjoy/internal/p4;->e:Ljava/lang/String;

    iget-object v7, v2, Lcom/tapjoy/internal/p4;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tapjoy/internal/l5;->a()Lcom/tapjoy/internal/c1;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/tapjoy/internal/r5;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/c1;)V

    iget-object v2, v1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/tapjoy/internal/p6;

    iget-object v4, v2, Lcom/tapjoy/internal/s5;->c:Ljava/lang/Long;

    iget-object v5, v2, Lcom/tapjoy/internal/s5;->d:Ljava/lang/String;

    iget-object v6, v2, Lcom/tapjoy/internal/s5;->e:Ljava/lang/Integer;

    iget-object v7, v2, Lcom/tapjoy/internal/s5;->f:Ljava/lang/Integer;

    iget-object v8, v2, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    iget-object v10, v2, Lcom/tapjoy/internal/s5;->h:Ljava/lang/Integer;

    iget-object v11, v2, Lcom/tapjoy/internal/s5;->i:Ljava/lang/Long;

    iget-object v12, v2, Lcom/tapjoy/internal/s5;->j:Ljava/lang/Long;

    iget-object v13, v2, Lcom/tapjoy/internal/s5;->l:Ljava/lang/Long;

    iget-object v14, v2, Lcom/tapjoy/internal/s5;->k:Ljava/lang/Long;

    iget-object v15, v2, Lcom/tapjoy/internal/s5;->m:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Lcom/tapjoy/internal/s5;->n:Ljava/lang/Integer;

    move-object/from16 v17, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->o:Ljava/lang/Double;

    move-object/from16 v18, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->p:Ljava/lang/Long;

    move-object/from16 v19, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->q:Ljava/lang/Double;

    move-object/from16 v20, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->r:Ljava/lang/String;

    move-object/from16 v21, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->s:Ljava/lang/Boolean;

    move-object/from16 v22, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->t:Ljava/lang/String;

    move-object/from16 v42, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->u:Ljava/lang/Integer;

    move-object/from16 v43, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    move-object/from16 v44, v9

    iget-object v9, v2, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    invoke-virtual {v2}, Lcom/tapjoy/internal/l5;->a()Lcom/tapjoy/internal/c1;

    move-result-object v46

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v15

    move-object/from16 v36, v0

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    move-object/from16 v39, v20

    move-object/from16 v40, v21

    move-object/from16 v41, v22

    move-object/from16 v45, v9

    invoke-direct/range {v24 .. v46}, Lcom/tapjoy/internal/p6;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/tapjoy/internal/j6;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lcom/tapjoy/internal/j6;Ljava/lang/Boolean;Lcom/tapjoy/internal/c1;)V

    sget-object v0, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v4, v23

    invoke-direct {v2, v4, v5, v3, v0}, Lcom/tapjoy/internal/y;-><init>(Lcom/tapjoy/internal/f;Lcom/tapjoy/internal/r5;Lcom/tapjoy/internal/p6;Lcom/tapjoy/internal/c1;)V

    monitor-exit p0

    return-object v2

    :catchall_11f
    move-exception v0

    monitor-exit p0
    :try_end_121
    .catchall {:try_start_3 .. :try_end_121} :catchall_11f

    throw v0
.end method

.method public final c(JD)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->p:Lcom/tapjoy/internal/b3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->q:Lcom/tapjoy/internal/r3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->p:Ljava/lang/Long;

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/s5;->q:Ljava/lang/Double;

    monitor-exit p0

    return-void

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public final d(JJ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->j:Lcom/tapjoy/internal/b3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->l:Lcom/tapjoy/internal/b3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->j:Ljava/lang/Long;

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/s5;->l:Ljava/lang/Long;

    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final e(Ljava/lang/Integer;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->s:Lcom/tapjoy/internal/u1;

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/u1;->b(I)V

    goto :goto_15

    :cond_12
    invoke-virtual {v0}, Lcom/tapjoy/internal/p9;->a()V

    :goto_15
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->u:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_27

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    xor-int/2addr v0, v1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->u:Ljava/lang/Integer;

    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw p1
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->d:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->d:Ljava/lang/String;

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public final g(Ljava/lang/String;D)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->m:Lcom/tapjoy/internal/o3;

    invoke-virtual {v1}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->n:Lcom/tapjoy/internal/u1;

    invoke-virtual {p1}, Lcom/tapjoy/internal/u1;->c()I

    move-result p1

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->n:Lcom/tapjoy/internal/u1;

    iget-object p1, p1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->o:Lcom/tapjoy/internal/r3;

    iget-object v1, p1, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object p1, p1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_a0

    if-eqz p1, :cond_3e

    :try_start_39
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3d} :catch_3e
    .catchall {:try_start_39 .. :try_end_3d} :catchall_a0

    goto :goto_40

    :catch_3e
    :cond_3e
    const-wide/16 v3, 0x0

    :goto_40
    add-double/2addr p2, v3

    :try_start_41
    iget-object p1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p1, p1, Lcom/tapjoy/internal/h2;->o:Lcom/tapjoy/internal/r3;

    iget-object p1, p1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_8e

    :cond_52
    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->m:Lcom/tapjoy/internal/o3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->n:Lcom/tapjoy/internal/u1;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->o:Lcom/tapjoy/internal/r3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->p:Lcom/tapjoy/internal/b3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->q:Lcom/tapjoy/internal/r3;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->m:Ljava/lang/String;

    iput-object v3, v0, Lcom/tapjoy/internal/s5;->p:Ljava/lang/Long;

    iput-object v3, v0, Lcom/tapjoy/internal/s5;->q:Ljava/lang/Double;

    :goto_8e
    iget-object p1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/s5;->n:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/s5;->o:Ljava/lang/Double;

    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_41 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method public final h(Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->w:Lcom/tapjoy/internal/c;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/c;->b(Z)V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/p6;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    monitor-exit p0

    return v0

    :catchall_28
    move-exception p1

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public final i()V
    .registers 15

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->c:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    const-string v2, " 13.3.0/Android"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/a9;->o:Ljava/lang/String;

    :cond_1a
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/h2;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->d:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    invoke-virtual {v1}, Lcom/tapjoy/internal/h2;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/s5;->c:Ljava/lang/Long;

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/u1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/u1;->c()I

    move-result v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/s5;->e:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lcom/tapjoy/internal/d3;->a(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->h:Lcom/tapjoy/internal/u1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/u1;->c()I

    move-result v0

    if-lez v0, :cond_69

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->h:Ljava/lang/Integer;

    :cond_69
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->i:Lcom/tapjoy/internal/b3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7f

    iget-object v4, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/tapjoy/internal/s5;->i:Ljava/lang/Long;

    :cond_7f
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->j:Lcom/tapjoy/internal/b3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_93

    iget-object v4, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/tapjoy/internal/s5;->j:Ljava/lang/Long;

    :cond_93
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->k:Lcom/tapjoy/internal/b3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a7

    iget-object v4, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/tapjoy/internal/s5;->k:Ljava/lang/Long;

    :cond_a7
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->l:Lcom/tapjoy/internal/b3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_bb

    iget-object v4, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/tapjoy/internal/s5;->l:Ljava/lang/Long;

    :cond_bb
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->m:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c9

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->m:Ljava/lang/String;

    :cond_c9
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->n:Lcom/tapjoy/internal/u1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/u1;->c()I

    move-result v0

    if-lez v0, :cond_db

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->n:Ljava/lang/Integer;

    :cond_db
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->o:Lcom/tapjoy/internal/r3;

    iget-object v1, v0, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object v0, v0, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_f1

    :try_start_ec
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_f0
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_f0} :catch_f1

    goto :goto_f2

    :catch_f1
    :cond_f1
    move-wide v0, v5

    :goto_f2
    cmpl-double v7, v0, v5

    if-eqz v7, :cond_fe

    iget-object v7, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v7, Lcom/tapjoy/internal/s5;->o:Ljava/lang/Double;

    :cond_fe
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->p:Lcom/tapjoy/internal/b3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/b3;->c()J

    move-result-wide v0

    cmp-long v7, v0, v2

    if-lez v7, :cond_112

    iget-object v2, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/s5;->p:Ljava/lang/Long;

    :cond_112
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->q:Lcom/tapjoy/internal/r3;

    iget-object v1, v0, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object v0, v0, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_125

    :try_start_120
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_124
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_124} :catch_125

    goto :goto_126

    :catch_125
    :cond_125
    move-wide v0, v5

    :goto_126
    cmpl-double v2, v0, v5

    if-eqz v2, :cond_132

    iget-object v2, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/s5;->q:Ljava/lang/Double;

    :cond_132
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->g:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "bytes == null"

    const/4 v3, 0x2

    const/4 v5, -0x1

    if-eqz v0, :cond_1d8

    :try_start_141
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1c3

    new-instance v6, Lcom/tapjoy/internal/n;

    invoke-direct {v6}, Lcom/tapjoy/internal/n;-><init>()V

    array-length v7, v0

    invoke-virtual {v6, v0, v7}, Lcom/tapjoy/internal/n;->e([BI)Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v6, Lcom/tapjoy/internal/z7;

    invoke-direct {v6, v0}, Lcom/tapjoy/internal/z7;-><init>(Lcom/tapjoy/internal/n;)V

    invoke-static {}, Lcom/tapjoy/internal/i3;->a()Lcom/tapjoy/internal/j6;

    move-result-object v0

    invoke-virtual {v6}, Lcom/tapjoy/internal/z7;->d()J

    move-result-wide v7

    move-object v9, v4

    move-object v10, v9

    :goto_160
    invoke-virtual {v6}, Lcom/tapjoy/internal/z7;->g()I

    move-result v11

    if-eq v11, v5, :cond_198

    if-eq v11, v1, :cond_18c

    iget v12, v6, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v12}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v13

    if-nez v10, :cond_17e

    new-instance v9, Lcom/tapjoy/internal/n;

    invoke-direct {v9}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v10, Lcom/tapjoy/internal/w5;

    invoke-direct {v10, v9}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V
    :try_end_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_141 .. :try_end_17e} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_17e} :catch_1c9

    :cond_17e
    :try_start_17e
    invoke-static {v12}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v12

    invoke-virtual {v12, v10, v11, v13}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_185} :catch_186
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17e .. :try_end_185} :catch_1d1

    goto :goto_160

    :catch_186
    :try_start_186
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18c
    sget-object v11, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-virtual {v11, v6}, Lcom/tapjoy/internal/s;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tapjoy/internal/b0;

    invoke-virtual {v0, v11}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_160

    :cond_198
    invoke-virtual {v6, v7, v8}, Lcom/tapjoy/internal/z7;->c(J)V

    new-instance v6, Lcom/tapjoy/internal/s0;

    if-eqz v9, :cond_1ad

    invoke-virtual {v9}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v7

    new-instance v8, Lcom/tapjoy/internal/c1;

    invoke-virtual {v7}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_1af

    :cond_1ad
    sget-object v8, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_1af
    invoke-direct {v6, v0, v8}, Lcom/tapjoy/internal/s0;-><init>(Lcom/tapjoy/internal/j6;Lcom/tapjoy/internal/c1;)V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    iget-object v6, v6, Lcom/tapjoy/internal/s0;->d:Ljava/util/List;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1d8

    :cond_1c3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_186 .. :try_end_1c9} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_186 .. :try_end_1c9} :catch_1c9

    :catch_1c9
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->g:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p9;->a()V

    goto :goto_1d8

    :catch_1d1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->g:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p9;->a()V

    :cond_1d8
    :goto_1d8
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v6, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v6, v6, Lcom/tapjoy/internal/h2;->r:Lcom/tapjoy/internal/o3;

    invoke-virtual {v6}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/tapjoy/internal/s5;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->s:Lcom/tapjoy/internal/u1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/u1;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v6, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    if-eq v0, v5, :cond_1fd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1fe

    :cond_1fd
    move-object v0, v4

    :goto_1fe
    iput-object v0, v6, Lcom/tapjoy/internal/s5;->u:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a5

    :try_start_20a
    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_290

    new-instance v2, Lcom/tapjoy/internal/n;

    invoke-direct {v2}, Lcom/tapjoy/internal/n;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/tapjoy/internal/n;->e([BI)Lcom/tapjoy/internal/n;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/z7;

    invoke-direct {v2, v0}, Lcom/tapjoy/internal/z7;-><init>(Lcom/tapjoy/internal/n;)V

    invoke-static {}, Lcom/tapjoy/internal/i3;->a()Lcom/tapjoy/internal/j6;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tapjoy/internal/z7;->d()J

    move-result-wide v6

    move-object v3, v4

    move-object v8, v3

    :goto_229
    invoke-virtual {v2}, Lcom/tapjoy/internal/z7;->g()I

    move-result v9

    if-eq v9, v5, :cond_265

    if-eq v9, v1, :cond_255

    iget v10, v2, Lcom/tapjoy/internal/z7;->h:I

    invoke-static {v10}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/tapjoy/internal/q7;->d(Lcom/tapjoy/internal/z7;)Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_247

    new-instance v3, Lcom/tapjoy/internal/n;

    invoke-direct {v3}, Lcom/tapjoy/internal/n;-><init>()V

    new-instance v8, Lcom/tapjoy/internal/w5;

    invoke-direct {v8, v3}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V
    :try_end_247
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20a .. :try_end_247} :catch_29e
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_247} :catch_296

    :cond_247
    :try_start_247
    invoke-static {v10}, Lcom/tapjoy/internal/s1;->a(I)Lcom/tapjoy/internal/q7;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v11}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V
    :try_end_24e
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24e} :catch_24f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_247 .. :try_end_24e} :catch_29e

    goto :goto_229

    :catch_24f
    :try_start_24f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_255
    invoke-virtual {v2}, Lcom/tapjoy/internal/z7;->a()J

    move-result-wide v9

    iget-object v11, v2, Lcom/tapjoy/internal/z7;->a:Lcom/tapjoy/internal/d0;

    check-cast v11, Lcom/tapjoy/internal/n;

    invoke-virtual {v11, v9, v10}, Lcom/tapjoy/internal/n;->j(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/AbstractList;->add(Ljava/lang/Object;)Z

    goto :goto_229

    :cond_265
    invoke-virtual {v2, v6, v7}, Lcom/tapjoy/internal/z7;->c(J)V

    new-instance v1, Lcom/tapjoy/internal/k2;

    if-eqz v3, :cond_27a

    invoke-virtual {v3}, Lcom/tapjoy/internal/n;->d()Lcom/tapjoy/internal/n;

    move-result-object v2

    new-instance v3, Lcom/tapjoy/internal/c1;

    invoke-virtual {v2}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/c1;-><init>([B)V

    goto :goto_27c

    :cond_27a
    sget-object v3, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    :goto_27c
    invoke-direct {v1, v0, v3}, Lcom/tapjoy/internal/k2;-><init>(Ljava/util/AbstractList;Lcom/tapjoy/internal/c1;)V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-virtual {v0}, Ljava/util/AbstractList;->clear()V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    iget-object v1, v1, Lcom/tapjoy/internal/k2;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2a5

    :cond_290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_296
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24f .. :try_end_296} :catch_29e
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_296} :catch_296

    :catch_296
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p9;->a()V

    goto :goto_2a5

    :catch_29e
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/p9;->a()V

    :cond_2a5
    :goto_2a5
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->v:Lcom/tapjoy/internal/c;

    iget-object v2, v1, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v0, :cond_2cf

    iget-object v2, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v0, v2, Lcom/tapjoy/internal/s5;->r:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v2, Lcom/tapjoy/internal/s5;->s:Ljava/lang/Boolean;

    goto :goto_2d5

    :cond_2cf
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v4, v0, Lcom/tapjoy/internal/s5;->r:Ljava/lang/String;

    iput-object v4, v0, Lcom/tapjoy/internal/s5;->s:Ljava/lang/Boolean;

    :goto_2d5
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->w:Lcom/tapjoy/internal/c;

    iget-object v2, v1, Lcom/tapjoy/internal/p9;->a:Landroid/content/SharedPreferences;

    iget-object v1, v1, Lcom/tapjoy/internal/p9;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->r:Lcom/tapjoy/internal/o3;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->t:Ljava/lang/String;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1a

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v0, 0x1

    :goto_1b
    xor-int/2addr v0, v1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object p1, v0, Lcom/tapjoy/internal/s5;->t:Ljava/lang/String;

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final k()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v1, Lcom/tapjoy/internal/t;->e:Lcom/tapjoy/internal/c8;

    iget-object v1, v1, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/app/Activity;

    move-result-object v1

    :cond_2b
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_46

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_46
    iget-object v1, p0, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/a9;->h:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/tapjoy/internal/a9;->i:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->b:Lcom/tapjoy/internal/a9;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/a9;->j:Ljava/lang/Integer;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_64} :catch_67
    .catchall {:try_start_1 .. :try_end_64} :catchall_65

    goto :goto_67

    :catchall_65
    move-exception v0

    goto :goto_69

    :catch_67
    :goto_67
    :try_start_67
    monitor-exit p0

    return-void

    :goto_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_65

    throw v0
.end method

.method public final l()V
    .registers 7

    iget-object v0, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->g:Lcom/tapjoy/internal/j6;

    sget-object v1, Lcom/tapjoy/internal/c1;->b:Lcom/tapjoy/internal/c1;

    const-string v2, "unknownFields == null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "pushes"

    invoke-static {v2, v0}, Lcom/tapjoy/internal/i3;->a(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/tapjoy/internal/n;

    invoke-direct {v2}, Lcom/tapjoy/internal/n;-><init>()V

    :try_start_16
    new-instance v3, Lcom/tapjoy/internal/w5;

    invoke-direct {v3, v2}, Lcom/tapjoy/internal/w5;-><init>(Lcom/tapjoy/internal/n;)V

    sget-object v4, Lcom/tapjoy/internal/b0;->c:Lcom/tapjoy/internal/s;

    invoke-virtual {v4}, Lcom/tapjoy/internal/q7;->c()Lcom/tapjoy/internal/q7;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5, v0}, Lcom/tapjoy/internal/q7;->e(Lcom/tapjoy/internal/w5;ILjava/lang/Object;)V

    invoke-virtual {v3, v1}, Lcom/tapjoy/internal/w5;->b(Lcom/tapjoy/internal/c1;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_28} :catch_39

    invoke-virtual {v2}, Lcom/tapjoy/internal/n;->k()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->g:Lcom/tapjoy/internal/o3;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    return-void

    :catch_39
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final m()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->h:Lcom/tapjoy/internal/u1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/u1;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->h:Lcom/tapjoy/internal/u1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/u1;->b(I)V

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->h:Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->k:Lcom/tapjoy/internal/b3;

    if-eqz v0, :cond_33

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tapjoy/internal/b3;->b(J)V

    goto :goto_36

    :cond_33
    invoke-virtual {v1}, Lcom/tapjoy/internal/p9;->a()V

    :goto_36
    iget-object v1, p0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v0, v1, Lcom/tapjoy/internal/s5;->k:Ljava/lang/Long;

    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method
