###### Class com.tapjoy.internal.h2 (com.tapjoy.internal.h2)
.class public final Lcom/tapjoy/internal/h2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Lcom/tapjoy/internal/o3;

.field public final d:Lcom/tapjoy/internal/o3;

.field public final e:Lcom/tapjoy/internal/u1;

.field public final f:Lcom/tapjoy/internal/u1;

.field public final g:Lcom/tapjoy/internal/o3;

.field public final h:Lcom/tapjoy/internal/u1;

.field public final i:Lcom/tapjoy/internal/b3;

.field public final j:Lcom/tapjoy/internal/b3;

.field public final k:Lcom/tapjoy/internal/b3;

.field public final l:Lcom/tapjoy/internal/b3;

.field public final m:Lcom/tapjoy/internal/o3;

.field public final n:Lcom/tapjoy/internal/u1;

.field public final o:Lcom/tapjoy/internal/r3;

.field public final p:Lcom/tapjoy/internal/b3;

.field public final q:Lcom/tapjoy/internal/r3;

.field public final r:Lcom/tapjoy/internal/o3;

.field public final s:Lcom/tapjoy/internal/u1;

.field public final t:Lcom/tapjoy/internal/o3;

.field public final u:Lcom/tapjoy/internal/o3;

.field public final v:Lcom/tapjoy/internal/c;

.field public final w:Lcom/tapjoy/internal/c;

.field public final x:Lcom/tapjoy/internal/o3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/h2;->a:Landroid/content/Context;

    const-string v0, "fiverocks"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v2, "sdk"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->c:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v2, "ir"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->d:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/u1;

    const-string v2, "fql"

    invoke-direct {v0, p1, v2, v1}, Lcom/tapjoy/internal/u1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->e:Lcom/tapjoy/internal/u1;

    new-instance v0, Lcom/tapjoy/internal/u1;

    const-string v2, "fq"

    invoke-direct {v0, p1, v2, v1}, Lcom/tapjoy/internal/u1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->f:Lcom/tapjoy/internal/u1;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v2, "push"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->g:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/u1;

    const-string v2, "ss"

    invoke-direct {v0, p1, v2, v1}, Lcom/tapjoy/internal/u1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->h:Lcom/tapjoy/internal/u1;

    new-instance v0, Lcom/tapjoy/internal/b3;

    const-string v2, "std"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/b3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->i:Lcom/tapjoy/internal/b3;

    new-instance v0, Lcom/tapjoy/internal/b3;

    const-string v2, "slt"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/b3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->j:Lcom/tapjoy/internal/b3;

    new-instance v0, Lcom/tapjoy/internal/b3;

    const-string v2, "sst"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/b3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->k:Lcom/tapjoy/internal/b3;

    new-instance v0, Lcom/tapjoy/internal/b3;

    const-string v2, "sld"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/b3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->l:Lcom/tapjoy/internal/b3;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v2, "ptc"

    invoke-direct {v0, p1, v2}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->m:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/u1;

    const-string v2, "pc"

    invoke-direct {v0, p1, v2, v1}, Lcom/tapjoy/internal/u1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->n:Lcom/tapjoy/internal/u1;

    new-instance v0, Lcom/tapjoy/internal/r3;

    const-string v1, "ptp"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/r3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->o:Lcom/tapjoy/internal/r3;

    new-instance v0, Lcom/tapjoy/internal/b3;

    const-string v1, "lpt"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/b3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->p:Lcom/tapjoy/internal/b3;

    new-instance v0, Lcom/tapjoy/internal/r3;

    const-string v1, "plp"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/r3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->q:Lcom/tapjoy/internal/r3;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "ui"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->r:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/u1;

    const-string v1, "ul"

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/u1;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->s:Lcom/tapjoy/internal/u1;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "utags"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->t:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "idfa"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    new-instance v0, Lcom/tapjoy/internal/c;

    const-string v1, "idfa.optout"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->v:Lcom/tapjoy/internal/c;

    new-instance v0, Lcom/tapjoy/internal/c;

    const-string v1, "push.optout"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/c;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->w:Lcom/tapjoy/internal/c;

    new-instance v0, Lcom/tapjoy/internal/o3;

    const-string v1, "appId"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/o3;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tapjoy/internal/h2;->x:Lcom/tapjoy/internal/o3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    const-string v1, "ir"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    move-object v2, v0

    :cond_12
    return-object v2

    :cond_13
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/tapjoy/internal/h2;->a:Landroid/content/Context;

    const-class v4, Lcom/tapjoy/internal/v1;

    monitor-enter v4

    :try_start_1a
    sget-object v5, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    if-nez v5, :cond_27

    const-string v5, "fiverocks"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    sput-object v3, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    :cond_27
    sget-object v3, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_5a

    monitor-exit v4

    const-string v4, "referrer"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3b

    :try_start_35
    invoke-static {v1}, Lcom/tapjoy/internal/g7;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    nop

    :cond_3b
    :goto_3b
    iget-object v1, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ir"

    if-eqz v0, :cond_47

    move-object v4, v0

    goto :goto_49

    :cond_47
    const-string v4, ""

    :goto_49
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_59

    move-object v2, v0

    :cond_59
    return-object v2

    :catchall_5a
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final b()J
    .registers 8

    iget-object v0, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    const-string v1, "it"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_88

    iget-object v0, p0, Lcom/tapjoy/internal/h2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_19
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_1f} :catch_24

    cmp-long v5, v0, v2

    if-lez v5, :cond_24

    goto :goto_25

    :catch_24
    :cond_24
    move-wide v0, v2

    :goto_25
    cmp-long v5, v0, v2

    if-nez v5, :cond_79

    iget-object v0, p0, Lcom/tapjoy/internal/h2;->a:Landroid/content/Context;

    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    new-instance v1, Ljava/io/File;

    const-class v5, Lcom/tapjoy/internal/v1;

    monitor-enter v5

    :try_start_32
    sget-object v6, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    if-nez v6, :cond_3e

    const-string v6, "fiverocks"

    invoke-virtual {v0, v6, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;

    :cond_3e
    sget-object v0, Lcom/tapjoy/internal/v1;->c:Ljava/io/File;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_76

    monitor-exit v5

    const-string v5, "install"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_79

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tapjoy/internal/h2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_5a
    invoke-virtual {v5, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/tapjoy/internal/r9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_64
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_64} :catch_65

    goto :goto_66

    :catch_65
    const/4 v1, 0x0

    :goto_66
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_79

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_79

    :catchall_76
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "it"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_88
    return-wide v0
.end method
