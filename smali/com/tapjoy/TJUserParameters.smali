###### Class com.tapjoy.TJUserParameters (com.tapjoy.TJUserParameters)
.class public Lcom/tapjoy/TJUserParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/TJUserParameters;


# instance fields
.field public b:Landroid/content/Context;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Lcom/tapjoy/TJSegment;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJUserParameters;->c:I

    iput v0, p0, Lcom/tapjoy/TJUserParameters;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJUserParameters;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJUserParameters;->a:Lcom/tapjoy/TJUserParameters;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tapjoy/TJUserParameters;

    invoke-direct {v0}, Lcom/tapjoy/TJUserParameters;-><init>()V

    sput-object v0, Lcom/tapjoy/TJUserParameters;->a:Lcom/tapjoy/TJUserParameters;

    :cond_b
    sget-object v0, Lcom/tapjoy/TJUserParameters;->a:Lcom/tapjoy/TJUserParameters;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/tapjoy/TJUserParameters;->c:I

    const/4 v2, 0x1

    const-string v3, ""

    const/4 v4, 0x0

    if-gtz v1, :cond_f

    goto/16 :goto_81

    :cond_f
    invoke-virtual {p0}, Lcom/tapjoy/TJUserParameters;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tapjoy/TJUserParameters;->c()I

    move-result v5

    iget v6, p0, Lcom/tapjoy/TJUserParameters;->c:I

    iput v6, p0, Lcom/tapjoy/TJUserParameters;->d:I

    iget-object v6, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v6, :cond_3a

    :try_start_1f
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;
    :try_end_31
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    if-eqz v1, :cond_44

    iget-object v6, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_44
    iget v1, p0, Lcom/tapjoy/TJUserParameters;->c:I

    if-eq v5, v1, :cond_81

    :cond_48
    iget-object v1, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    const-string v4, "tjcPrefrences"

    if-eqz v1, :cond_63

    iget v5, p0, Lcom/tapjoy/TJUserParameters;->d:I

    if-gtz v5, :cond_53

    goto :goto_63

    :cond_53
    new-instance v5, Lcom/tapjoy/v;

    invoke-direct {v5, v1, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p0, Lcom/tapjoy/TJUserParameters;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v6, "pref_max_level_cache"

    invoke-virtual {v5, v6, v1}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_63
    :goto_63
    iget-object v1, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_72

    goto :goto_80

    :cond_72
    new-instance v1, Lcom/tapjoy/v;

    iget-object v5, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    invoke-direct {v1, v5, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    const-string v5, "pref_app_version"

    invoke-virtual {v1, v5, v4}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_80
    :goto_80
    const/4 v4, 0x1

    :cond_81
    :goto_81
    if-eqz v4, :cond_99

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tapjoy/TJUserParameters;->c:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "max_level"

    invoke-static {v0, v3, v1, v2}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_99
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/TJUserParameters;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/tapjoy/TJUserParameters;->c:I

    return v0
.end method

.method public e()Lcom/tapjoy/TJSegment;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    if-nez v0, :cond_6

    sget-object v0, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    :cond_6
    return-object v0
.end method

.method public declared-synchronized f(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    if-eqz p1, :cond_c9

    :try_start_3
    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-nez v0, :cond_c9

    iput-object p1, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object p1

    new-instance v0, Lcom/tapjoy/v;

    iget-object v1, p1, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, p1, Lcom/tapjoy/TJUserParameters;->c:I

    const/4 v2, -0x1

    if-gtz v1, :cond_2b

    const-string v1, "pref_max_level"

    invoke-virtual {v0, v1}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "pref_max_level"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/tapjoy/TJUserParameters;->c:I

    :cond_2b
    iget v1, p1, Lcom/tapjoy/TJUserParameters;->d:I

    if-gtz v1, :cond_3f

    const-string v1, "pref_max_level_cache"

    invoke-virtual {v0, v1}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "pref_max_level_cache"

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lcom/tapjoy/TJUserParameters;->d:I

    :cond_3f
    iget-object v1, p1, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    if-nez v1, :cond_54

    const-string v1, "pref_app_version"

    invoke-virtual {v0, v1}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "pref_app_version"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/tapjoy/TJUserParameters;->e:Ljava/lang/String;

    :cond_54
    iget-object v1, p1, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    if-nez v1, :cond_72

    const-string v1, "pref_user_segment"

    invoke-virtual {v0, v1}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-object v1, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    invoke-virtual {v1}, Lcom/tapjoy/TJSegment;->e()I

    move-result v1

    const-string v2, "pref_user_segment"

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJSegment;->valueOf(I)Lcom/tapjoy/TJSegment;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    :cond_72
    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object p1

    iget-object v0, p1, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v0, :cond_91

    iget v1, p1, Lcom/tapjoy/TJUserParameters;->c:I

    if-gtz v1, :cond_7f

    goto :goto_91

    :cond_7f
    new-instance v1, Lcom/tapjoy/v;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget p1, p1, Lcom/tapjoy/TJUserParameters;->c:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_max_level"

    invoke-virtual {v1, v0, p1}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_91
    :goto_91
    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object p1

    iget-object v0, p1, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v0, :cond_c9

    iget-object v1, p1, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    if-nez v1, :cond_9e

    goto :goto_c9

    :cond_9e
    sget-object v2, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    if-ne v1, v2, :cond_af

    new-instance p1, Lcom/tapjoy/v;

    const-string v1, "tjcPrefrences"

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "pref_user_segment"

    invoke-virtual {p1, v0}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_c9

    :cond_af
    new-instance v1, Lcom/tapjoy/v;

    const-string v2, "tjcPrefrences"

    invoke-direct {v1, v0, v2}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    invoke-virtual {p1}, Lcom/tapjoy/TJSegment;->e()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pref_user_segment"

    invoke-virtual {v1, v0, p1}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c5
    .catchall {:try_start_3 .. :try_end_c5} :catchall_c6

    goto :goto_c9

    :catchall_c6
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_c9
    :goto_c9
    monitor-exit p0

    return-void
.end method

.method public g(I)V
    .registers 4

    if-gtz p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/tapjoy/TJUserParameters;->c:I

    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v0, :cond_1e

    if-gtz p1, :cond_c

    goto :goto_1e

    :cond_c
    new-instance p1, Lcom/tapjoy/v;

    const-string v1, "tjcPrefrences"

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, p0, Lcom/tapjoy/TJUserParameters;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pref_max_level"

    invoke-virtual {p1, v1, v0}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public h(Lcom/tapjoy/TJSegment;)V
    .registers 6

    iput-object p1, p0, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->b:Landroid/content/Context;

    if-eqz v0, :cond_2c

    if-nez p1, :cond_9

    goto :goto_2c

    :cond_9
    sget-object v1, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    const-string v2, "pref_user_segment"

    const-string v3, "tjcPrefrences"

    if-ne p1, v1, :cond_1a

    new-instance p1, Lcom/tapjoy/v;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_2c

    :cond_1a
    new-instance p1, Lcom/tapjoy/v;

    invoke-direct {p1, v0, v3}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    invoke-virtual {v0}, Lcom/tapjoy/TJSegment;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    :goto_2c
    return-void
.end method
