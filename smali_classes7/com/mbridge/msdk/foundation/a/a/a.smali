###### Class com.mbridge.msdk.foundation.a.a.a (com.mbridge.msdk.foundation.a.a.a)
.class public Lcom/mbridge/msdk/foundation/a/a/a;
.super Ljava/lang/Object;
.source "SharedPerferenceManager.java"


# static fields
.field public static final a:Ljava/lang/String; = "a"

.field private static e:Lcom/mbridge/msdk/foundation/a/a/a;


# instance fields
.field b:Landroid/content/SharedPreferences;

.field c:Lcom/mbridge/msdk/foundation/tools/FastKV;

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->a()Lcom/mbridge/msdk/foundation/controller/c;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/mbridge/msdk/foundation/a/a/a;
    .registers 2

    const-class v0, Lcom/mbridge/msdk/foundation/a/a/a;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/mbridge/msdk/foundation/a/a/a;->e:Lcom/mbridge/msdk/foundation/a/a/a;

    if-nez v1, :cond_e

    new-instance v1, Lcom/mbridge/msdk/foundation/a/a/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/a/a/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/a/a/a;->e:Lcom/mbridge/msdk/foundation/a/a/a;

    :cond_e
    sget-object v1, Lcom/mbridge/msdk/foundation/a/a/a;->e:Lcom/mbridge/msdk/foundation/a/a/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Long;
    .registers 8

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_18

    sget-object p1, Lcom/mbridge/msdk/foundation/a/a/a;->a:Ljava/lang/String;

    const-string v2, "context is null in get"

    invoke-static {p1, v2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_18
    iget-boolean v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_5f

    const-string v4, "mbridge"

    if-eqz v3, :cond_37

    :try_start_1e
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_20} :catch_5f

    if-nez v3, :cond_37

    :try_start_22
    new-instance v3, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v5, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v4}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v3

    iput-object v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_33} :catch_34

    goto :goto_37

    :catch_34
    const/4 v3, 0x0

    :try_start_35
    iput-object v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_37
    :goto_37
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_5f

    if-eqz v3, :cond_49

    :try_start_3b
    invoke-virtual {v3, p1, v0, v1}, Lcom/mbridge/msdk/foundation/tools/FastKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    :try_start_44
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_49
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v3, :cond_54

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_54
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_5f

    return-object p1

    :catch_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_4a

    const-string v2, "mbridge"

    if-eqz v1, :cond_2a

    :try_start_11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_4a

    if-nez v1, :cond_2a

    :try_start_15
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_2a

    :catch_27
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_4a

    if-eqz v1, :cond_32

    :try_start_2e
    invoke-virtual {v1, p1, p2}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putInt(Ljava/lang/String;I)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_4e

    goto :goto_4e

    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_3d
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_4e
    :goto_4e
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 8

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_12

    sget-object p1, Lcom/mbridge/msdk/foundation/a/a/a;->a:Ljava/lang/String;

    const-string p2, "context is null in put"

    invoke-static {p1, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_51

    const-string v2, "mbridge"

    if-eqz v1, :cond_31

    :try_start_18
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1a} :catch_51

    if-nez v1, :cond_31

    :try_start_1c
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2d} :catch_2e

    goto :goto_31

    :catch_2e
    const/4 v1, 0x0

    :try_start_2f
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_51

    if-eqz v1, :cond_39

    :try_start_35
    invoke-virtual {v1, p1, p2, p3}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putLong(Ljava/lang/String;J)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_55

    goto :goto_55

    :cond_39
    :try_start_39
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_44
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_55
    :goto_55
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_4a

    const-string v2, "mbridge"

    if-eqz v1, :cond_2a

    :try_start_11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_4a

    if-nez v1, :cond_2a

    :try_start_15
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_2a

    :catch_27
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_4a

    if-eqz v1, :cond_32

    :try_start_2e
    invoke-virtual {v1, p1, p2}, Lcom/mbridge/msdk/foundation/tools/FastKV;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_4e

    goto :goto_4e

    :cond_32
    :try_start_32
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_3d
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :catch_4e
    :goto_4e
    return-void
.end method

.method public final b(Ljava/lang/String;I)I
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return p2

    :cond_b
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_46

    const-string v2, "mbridge"

    if-eqz v1, :cond_2a

    :try_start_11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_13} :catch_46

    if-nez v1, :cond_2a

    :try_start_15
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_2a

    :catch_27
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_46

    if-eqz v1, :cond_34

    :try_start_2e
    invoke-virtual {v1, p1, p2}, Lcom/mbridge/msdk/foundation/tools/FastKV;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_33

    return p1

    :catch_33
    return p2

    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3f

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_3f
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_45} :catch_46

    return p1

    :catch_46
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    iget-boolean v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_48

    const-string v3, "mbridge"

    if-eqz v2, :cond_2a

    :try_start_12
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_14} :catch_48

    if-nez v2, :cond_2a

    :try_start_16
    new-instance v2, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v4, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_27} :catch_28

    goto :goto_2a

    :catch_28
    :try_start_28
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_48

    const-string v4, ""

    if-eqz v2, :cond_36

    :try_start_30
    invoke-virtual {v2, p1, v4}, Lcom/mbridge/msdk/foundation/tools/FastKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_35

    return-object p1

    :catch_35
    return-object v4

    :cond_36
    :try_start_36
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v2, :cond_41

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_41
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_47} :catch_48

    return-object p1

    :catch_48
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-boolean v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->d:Z

    const-string v2, "mbridge"

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    if-nez v1, :cond_2a

    :try_start_15
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;

    sget-object v3, Lcom/mbridge/msdk/foundation/same/b/c;->l:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/FastKV$Builder;->build()Lcom/mbridge/msdk/foundation/tools/FastKV;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_27

    goto :goto_2a

    :catch_27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->c:Lcom/mbridge/msdk/foundation/tools/FastKV;

    if-eqz v1, :cond_32

    :try_start_2e
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/tools/FastKV;->remove(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_4a

    goto :goto_4a

    :cond_32
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    if-nez v1, :cond_3d

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    :cond_3d
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/a/a/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :catch_4a
    :goto_4a
    return-void
.end method
