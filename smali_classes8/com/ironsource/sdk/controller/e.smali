###### Class com.json.sdk.controller.e (com.ironsource.sdk.controller.e)
.class public Lcom/ironsource/sdk/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/g;
.implements Lcom/ironsource/sdk/controller/k;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/ironsource/sdk/controller/k;

.field private c:Lcom/ironsource/h6$b;

.field private d:Landroid/os/CountDownTimer;

.field private final e:Lcom/ironsource/e2;

.field private final f:Lcom/ironsource/e2;

.field private final g:Lcom/ironsource/q5;

.field private final h:Lcom/ironsource/md;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/controller/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ironsource/sdk/controller/k$b;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/ironsource/r9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;Lcom/ironsource/q5;ILorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/r9;)V
    .registers 24

    move-object v10, p0

    move-object/from16 v0, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/ironsource/sdk/controller/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    sget-object v1, Lcom/ironsource/h6$b;->a:Lcom/ironsource/h6$b;

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    move-object/from16 v1, p10

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->k:Lcom/ironsource/r9;

    new-instance v1, Lcom/ironsource/e2;

    const-string v2, "NativeCommandExecutor"

    invoke-direct {v1, v2}, Lcom/ironsource/e2;-><init>(Ljava/lang/String;)V

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/e2;

    const-string v2, "ControllerCommandsExecutor"

    invoke-direct {v1, v2}, Lcom/ironsource/e2;-><init>(Ljava/lang/String;)V

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    iput-object v0, v10, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->i:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v10, Lcom/ironsource/sdk/controller/e;->j:Ljava/util/Map;

    invoke-static {p1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getNetworkStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v1, p7

    invoke-static {v11, v0, v1}, Lcom/ironsource/s3;->a(Ljava/lang/String;Lcom/ironsource/q5;Lorg/json/JSONObject;)Lcom/ironsource/s3;

    move-result-object v12

    new-instance v0, Lcom/ironsource/md;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move-object v8, v12

    move-object v9, v11

    invoke-direct/range {v2 .. v9}, Lcom/ironsource/md;-><init>(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move-object v6, v12

    move-object v7, v11

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/ironsource/sdk/controller/e;->d(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/sdk/controller/k;)Lcom/ironsource/sdk/controller/k;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    return-object p1
.end method

.method static synthetic b(Lcom/ironsource/sdk/controller/e;Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/controller/t;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct/range {p0 .. p9}, Lcom/ironsource/sdk/controller/e;->g(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/controller/t;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/sdk/controller/e;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/e;->i:Ljava/util/Map;

    return-object p0
.end method

.method private d(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object v11, p0

    new-instance v12, Lcom/ironsource/sdk/controller/e$r;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/e$r;-><init>(Lcom/ironsource/sdk/controller/e;Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/ironsource/sdk/controller/e;->i(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/ironsource/sdk/controller/e$s;

    const-wide/32 v1, 0x30d40

    const-wide/16 v3, 0x3e8

    move-object p1, v0

    move-object p2, p0

    move-wide/from16 p3, v1

    move-wide/from16 p5, v3

    invoke-direct/range {p1 .. p6}, Lcom/ironsource/sdk/controller/e$s;-><init>(Lcom/ironsource/sdk/controller/e;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, v11, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    return-void
.end method

.method private e(Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoverWebController for product: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "producttype"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    invoke-virtual {p2}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "demandsourcename"

    invoke-virtual {v0, p2, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    sget-object p1, Lcom/ironsource/gb;->b:Lcom/ironsource/gb$a;

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {p1}, Lcom/ironsource/md;->o()V

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->destroy()V

    new-instance p1, Lcom/ironsource/sdk/controller/e$u;

    invoke-direct {p1, p0, p3, p4}, Lcom/ironsource/sdk/controller/e$u;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/e;->i(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/ironsource/sdk/controller/e$v;

    const-wide/32 v2, 0x30d40

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/e$v;-><init>(Lcom/ironsource/sdk/controller/e;JJ)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic f(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/e;->l(Ljava/lang/String;)V

    return-void
.end method

.method private g(Landroid/content/Context;Lcom/ironsource/q2;Lcom/ironsource/uc;Lcom/ironsource/k3;ILcom/ironsource/s3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/controller/t;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    sget-object v0, Lcom/ironsource/gb;->c:Lcom/ironsource/gb$a;

    invoke-static {v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;)V

    new-instance v15, Lcom/ironsource/sdk/controller/t;

    iget-object v5, v13, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/sdk/controller/e;->o()Lcom/ironsource/sdk/controller/k$a;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/sdk/controller/e;->p()Lcom/ironsource/sdk/controller/k$b;

    move-result-object v10

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p0

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/ironsource/sdk/controller/t;-><init>(Landroid/content/Context;Lcom/ironsource/k3;Lcom/ironsource/q2;Lcom/ironsource/sdk/controller/g;Lcom/ironsource/q5;ILcom/ironsource/s3;Ljava/lang/String;Lcom/ironsource/sdk/controller/k$a;Lcom/ironsource/sdk/controller/k$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/p4;

    new-instance v1, Lcom/ironsource/o4;

    iget-object v2, v13, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    invoke-virtual {v2}, Lcom/ironsource/q5;->a()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ironsource/o4;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/ironsource/g9;

    invoke-virtual/range {p6 .. p6}, Lcom/ironsource/s3;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ironsource/g9;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p6

    invoke-direct {v0, v14, v3, v1, v2}, Lcom/ironsource/p4;-><init>(Landroid/content/Context;Lcom/ironsource/s3;Lcom/ironsource/o4;Lcom/ironsource/g9;)V

    new-instance v1, Lcom/ironsource/sdk/controller/s;

    move-object/from16 v2, p3

    invoke-direct {v1, v14, v2}, Lcom/ironsource/sdk/controller/s;-><init>(Landroid/content/Context;Lcom/ironsource/uc;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/s;)V

    new-instance v1, Lcom/ironsource/sdk/controller/n;

    invoke-direct {v1, v14}, Lcom/ironsource/sdk/controller/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/n;)V

    new-instance v1, Lcom/ironsource/sdk/controller/o;

    invoke-direct {v1, v14}, Lcom/ironsource/sdk/controller/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/o;)V

    new-instance v1, Lcom/ironsource/sdk/controller/i;

    invoke-direct {v1, v14}, Lcom/ironsource/sdk/controller/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/i;)V

    new-instance v1, Lcom/ironsource/sdk/controller/a;

    invoke-direct {v1, v14}, Lcom/ironsource/sdk/controller/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/a;)V

    new-instance v1, Lcom/ironsource/sdk/controller/p;

    invoke-virtual/range {p6 .. p6}, Lcom/ironsource/s3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ironsource/sdk/controller/p;-><init>(Ljava/lang/String;Lcom/ironsource/p4;)V

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/sdk/controller/p;)V

    return-object v15
.end method

.method static synthetic h(Lcom/ironsource/sdk/controller/e;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/e;->j:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic j(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/sdk/controller/k;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    return-object p0
.end method

.method static synthetic k(Lcom/ironsource/sdk/controller/e;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    return-object p0
.end method

.method private l(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/gb;->d:Lcom/ironsource/gb$a;

    new-instance v1, Lcom/ironsource/j6;

    invoke-direct {v1}, Lcom/ironsource/j6;-><init>()V

    const-string v2, "callfailreason"

    invoke-virtual {v1, v2, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    sget-object v0, Lcom/ironsource/h6$b;->b:Lcom/ironsource/h6$b;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    new-instance v0, Lcom/ironsource/sdk/controller/m;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/sdk/controller/m;-><init>(Ljava/lang/String;Lcom/ironsource/q5;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    iget-object p1, p0, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    invoke-virtual {p1}, Lcom/ironsource/e2;->c()V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    invoke-virtual {p1}, Lcom/ironsource/e2;->a()V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    if-eqz p1, :cond_37

    new-instance v0, Lcom/ironsource/sdk/controller/e$t;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/e$t;-><init>(Lcom/ironsource/sdk/controller/e;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/q5;->b(Ljava/lang/Runnable;)V

    :cond_37
    return-void
.end method

.method static synthetic m(Lcom/ironsource/sdk/controller/e;)Lcom/ironsource/md;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    return-object p0
.end method

.method private n(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->getInitListener()Lcom/ironsource/ca;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/ironsource/i6;

    const/16 v2, 0x3e9

    invoke-direct {v1, v2, p1}, Lcom/ironsource/i6;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/ca;->onFail(Lcom/ironsource/i6;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ironsource/sdk/IronSourceNetwork;->setInitListener(Lcom/ironsource/ca;)V

    :cond_14
    return-void
.end method

.method private o()Lcom/ironsource/sdk/controller/k$a;
    .registers 2

    new-instance v0, Lcom/ironsource/sdk/controller/e$k;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/e$k;-><init>(Lcom/ironsource/sdk/controller/e;)V

    return-object v0
.end method

.method private p()Lcom/ironsource/sdk/controller/k$b;
    .registers 2

    new-instance v0, Lcom/ironsource/sdk/controller/e$q;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/e$q;-><init>(Lcom/ironsource/sdk/controller/e;)V

    return-object v0
.end method

.method private q()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "handleReadyState"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/h6$b;->d:Lcom/ironsource/h6$b;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_12
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->s()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    invoke-virtual {v0}, Lcom/ironsource/e2;->c()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    invoke-virtual {v0}, Lcom/ironsource/e2;->a()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/k;->c()V

    :cond_26
    return-void
.end method

.method private r()Z
    .registers 3

    sget-object v0, Lcom/ironsource/h6$b;->d:Lcom/ironsource/h6$b;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/md;->a(Z)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {v1}, Lcom/ironsource/md;->i()Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/k;->b(Lorg/json/JSONObject;)V

    :cond_13
    return-void
.end method

.method private t()V
    .registers 2

    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->getInitListener()Lcom/ironsource/ca;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/ca;->onSuccess()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ironsource/sdk/IronSourceNetwork;->setInitListener(Lcom/ironsource/ca;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "handleControllerLoaded"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/h6$b;->c:Lcom/ironsource/h6$b;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    invoke-virtual {v0}, Lcom/ironsource/e2;->c()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    invoke-virtual {v0}, Lcom/ironsource/e2;->a()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k;->a(Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public a(Lcom/ironsource/j3;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$l;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/e$l;-><init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/j3;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/x2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/x2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/e$m;-><init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/x2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/e$h;-><init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$n;

    invoke-direct {v1, p0, p2, p1}, Lcom/ironsource/sdk/controller/e$n;-><init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/sdk/controller/k$a;Lcom/ironsource/sdk/controller/f$c;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->e:Lcom/ironsource/e2;

    invoke-virtual {v0, p1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/sdk/controller/k$b;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/y2;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "load interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/e$e;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Lcom/ironsource/y2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/da;)V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/e$a;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/da;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/x2;)V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->e()Lcom/ironsource/h6$c;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/md;->a(Lcom/ironsource/h6$c;Lcom/ironsource/h6$b;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/ironsource/sdk/controller/e;->e(Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v7, Lcom/ironsource/sdk/controller/e$i;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/e$i;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/x2;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/y2;)V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->e()Lcom/ironsource/h6$c;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/md;->a(Lcom/ironsource/h6$c;Lcom/ironsource/h6$b;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/ironsource/sdk/controller/e;->e(Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v7, Lcom/ironsource/sdk/controller/e$d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/e$d;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/y2;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/z2;)V
    .registers 13

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->e()Lcom/ironsource/h6$c;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/e;->c:Lcom/ironsource/h6$b;

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/md;->a(Lcom/ironsource/h6$c;Lcom/ironsource/h6$b;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-direct {p0, v0, p3, p1, p2}, Lcom/ironsource/sdk/controller/e;->e(Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v7, Lcom/ironsource/sdk/controller/e$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/e$b;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/z2;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/da;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v7, Lcom/ironsource/sdk/controller/e$w;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/sdk/controller/e$w;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V

    invoke-virtual {v0, v7}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/da;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$x;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/e$x;-><init>(Lcom/ironsource/sdk/controller/e;Ljava/util/Map;Lcom/ironsource/da;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$o;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/e$o;-><init>(Lcom/ironsource/sdk/controller/e;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/x2;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$j;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/e$j;-><init>(Lcom/ironsource/sdk/controller/e;Lorg/json/JSONObject;Lcom/ironsource/x2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/y2;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/e$g;-><init>(Lcom/ironsource/sdk/controller/e;Lorg/json/JSONObject;Lcom/ironsource/y2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/z2;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/sdk/controller/e$c;-><init>(Lcom/ironsource/sdk/controller/e;Lorg/json/JSONObject;Lcom/ironsource/z2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->r()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/k;->b()V

    :cond_d
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_d

    invoke-interface {v0, p1}, Lcom/ironsource/sdk/controller/k;->b(Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    new-instance v1, Lcom/ironsource/sdk/controller/e$f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/e$f;-><init>(Lcom/ironsource/sdk/controller/e;Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/e2;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "handleControllerFailed "

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    const-string v1, "callfailreason"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {v1}, Lcom/ironsource/md;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "generalmessage"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    sget-object v1, Lcom/ironsource/gb;->o:Lcom/ironsource/gb$a;

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/md;->a(Z)V

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/e;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "cancel timer mControllerReadyTimer"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_42
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/e;->l(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    return-void
.end method

.method public c()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/ironsource/gb;->y:Lcom/ironsource/gb$a;

    new-instance v1, Lcom/ironsource/j6;

    invoke-direct {v1}, Lcom/ironsource/j6;-><init>()V

    const-string v2, "generalmessage"

    invoke-virtual {v1, v2, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1b
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/e;->l(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/k;->d()V

    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "destroy controller"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->f:Lcom/ironsource/e2;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/ironsource/e2;->b()V

    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/e;->d:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/ironsource/sdk/controller/e$p;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/e$p;-><init>(Lcom/ironsource/sdk/controller/e;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/e;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lcom/ironsource/h6$c;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/k;->e()Lcom/ironsource/h6$c;

    move-result-object v0

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/ironsource/h6$c;->c:Lcom/ironsource/h6$c;

    :goto_b
    return-object v0
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v1, "handleControllerReady "

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->k:Lcom/ironsource/r9;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->e()Lcom/ironsource/h6$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/r9;->a(Lcom/ironsource/h6$c;)V

    sget-object v0, Lcom/ironsource/h6$c;->a:Lcom/ironsource/h6$c;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/e;->e()Lcom/ironsource/h6$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/e;->h:Lcom/ironsource/md;

    invoke-virtual {v1}, Lcom/ironsource/md;->m()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "generalmessage"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    sget-object v1, Lcom/ironsource/gb;->e:Lcom/ironsource/gb$a;

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->t()V

    :cond_3d
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/e;->q()V

    return-void
.end method

.method i(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->g:Lcom/ironsource/q5;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_8
    iget-object p1, p0, Lcom/ironsource/sdk/controller/e;->a:Ljava/lang/String;

    const-string v0, "mThreadManager = null"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public j()Lcom/ironsource/sdk/controller/k;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/e;->b:Lcom/ironsource/sdk/controller/k;

    return-object v0
.end method
