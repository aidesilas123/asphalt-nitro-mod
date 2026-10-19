###### Class com.mbridge.msdk.foundation.controller.authoritycontroller.a (com.mbridge.msdk.foundation.controller.authoritycontroller.a)
.class public Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;
.super Ljava/lang/Object;
.source "SDKAuthorityController.java"


# static fields
.field private static volatile b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a; = null

.field private static e:Z = true

.field private static f:Z = true


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

.field private d:I

.field private g:Ljava/lang/String;

.field private h:Lcom/mbridge/msdk/foundation/controller/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    const-string v0, "authority_other"

    const-string v1, "authority_serial_id"

    const-string v2, "authority_device_id"

    const-string v3, "authority_general_data"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    const/4 v4, 0x3

    iput v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    const-string v4, ""

    iput-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g:Ljava/lang/String;

    new-instance v5, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v5}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    iput-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :try_start_20
    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :cond_34
    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :cond_47
    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    iget-object v5, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v5, v6}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :cond_5a
    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :cond_6d
    iget-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_86
    return-void
.end method

.method public static a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;
    .registers 2

    sget-object v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h:Lcom/mbridge/msdk/foundation/controller/d;

    if-nez v0, :cond_13

    new-instance v0, Lcom/mbridge/msdk/foundation/controller/d;

    invoke-direct {v0, p1}, Lcom/mbridge/msdk/foundation/controller/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h:Lcom/mbridge/msdk/foundation/controller/d;

    new-instance p1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$2;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$2;-><init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;)V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->a(Lcom/mbridge/msdk/foundation/controller/d$a;)V

    :cond_13
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->j()V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_21

    :catchall_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKAuthorityController"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->j()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->e:Z

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    :goto_1a
    return v0

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SDKAuthorityController"

    invoke-static {v1, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    return v0
.end method

.method public static b(Z)V
    .registers 1

    sput-boolean p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->f:Z

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    :cond_1a
    const/4 v1, -0x1

    const-string v2, "authority_general_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->H()I

    move-result v1

    goto :goto_41

    :cond_28
    const-string v2, "authority_device_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->I()I

    move-result v1

    goto :goto_41

    :cond_35
    const-string v2, "authority_serial_id"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->G()I

    move-result v1

    :cond_41
    :goto_41
    return v1
.end method

.method private c(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    iput v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public static g()Z
    .registers 1

    sget-boolean v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->e:Z

    return v0
.end method

.method public static h()Z
    .registers 1

    sget-boolean v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->f:Z

    return v0
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h:Lcom/mbridge/msdk/foundation/controller/d;

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/d;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->h:Lcom/mbridge/msdk/foundation/controller/d;

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x2

    :goto_14
    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(I)V

    :cond_7
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
    .registers 5

    if-eqz p2, :cond_f

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;-><init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_f
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Landroid/content/Context;)V

    :goto_12
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_49

    const-string v0, "authority_general_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->b(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_49

    :cond_12
    const-string v0, "authority_device_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->c(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_49

    :cond_20
    const-string v0, "authority_all_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_49

    :cond_2e
    const-string v0, "authority_serial_id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->d(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    goto :goto_49

    :cond_3c
    const-string v0, "authority_other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->e(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    :cond_49
    :goto_49
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 9

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->J()I

    move-result v4

    if-nez v4, :cond_33

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3c

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3c

    :goto_31
    const/4 v4, 0x1

    goto :goto_3d

    :cond_33
    if-ne v4, v2, :cond_3c

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3c

    goto :goto_31

    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    const-string v5, "authority_other"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_4d

    const/4 v4, 0x1

    goto :goto_4e

    :cond_4d
    const/4 v4, 0x0

    :cond_4e
    :goto_4e
    const-string v5, "authority_device_id"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v5

    iget v5, v5, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_71

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->aB()Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_70

    :cond_66
    if-eqz v3, :cond_69

    goto :goto_70

    :cond_69
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_70

    const/4 v1, 0x1

    :cond_70
    :goto_70
    move v4, v1

    :cond_71
    return v4
.end method

.method public final b()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;->a(I)Lcom/mbridge/msdk/foundation/controller/authoritycontroller/AuthorityInfoBean;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 4

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "authority_dnt"

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_13
    const-string v3, "keyname"

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "client_status"

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "server_status"

    iget-object v4, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_4f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 4

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_a
    return v1
.end method

.method public final e()I
    .registers 4

    invoke-static {}, Lcom/mbridge/msdk/foundation/a/a/a;->a()Lcom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    const-string v1, "authority_coppa"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->d:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->g:Ljava/lang/String;

    return-object v0
.end method

###### Class com.mbridge.msdk.foundation.controller.authoritycontroller.a.AnonymousClass1 (com.mbridge.msdk.foundation.controller.authoritycontroller.a$1)
.class final Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;
.super Ljava/lang/Object;
.source "SDKAuthorityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/mbridge/msdk/out/OnCompletionListener;

.field final synthetic c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;Landroid/content/Context;Lcom/mbridge/msdk/out/OnCompletionListener;)V
    .registers 4

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->b:Lcom/mbridge/msdk/out/OnCompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->c:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$1;->b:Lcom/mbridge/msdk/out/OnCompletionListener;

    invoke-interface {v0}, Lcom/mbridge/msdk/out/OnCompletionListener;->onCompletion()V

    return-void
.end method

###### Class com.mbridge.msdk.foundation.controller.authoritycontroller.a.AnonymousClass2 (com.mbridge.msdk.foundation.controller.authoritycontroller.a$2)
.class final Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$2;
.super Ljava/lang/Object;
.source "SDKAuthorityController.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$2;->a:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a$2;->a:Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Lcom/mbridge/msdk/foundation/controller/authoritycontroller/a;)V

    return-void
.end method
