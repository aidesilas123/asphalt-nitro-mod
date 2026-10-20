###### Class com.json.sdk.controller.d (com.ironsource.sdk.controller.d)
.class Lcom/ironsource/sdk/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/d$d;,
        Lcom/ironsource/sdk/controller/d$c;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Lcom/ironsource/sdk/controller/d$c;

.field private d:Lcom/ironsource/sdk/controller/d$d;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ironsource/s3;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/s3;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/sdk/controller/d$d;->b:Lcom/ironsource/sdk/controller/d$d;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    const-string v0, "controllerSourceStrategy"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/sdk/controller/d;->b:I

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/d;->b(I)Lcom/ironsource/sdk/controller/d$c;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/d;->c:Lcom/ironsource/sdk/controller/d$c;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/d;->g:Lcom/ironsource/s3;

    return-void
.end method

.method static synthetic a(Lcom/ironsource/sdk/controller/d;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/sdk/controller/d;->b:I

    return p0
.end method

.method private b(I)Lcom/ironsource/sdk/controller/d$c;
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    sget-object p1, Lcom/ironsource/sdk/controller/d$c;->a:Lcom/ironsource/sdk/controller/d$c;

    return-object p1

    :cond_9
    sget-object p1, Lcom/ironsource/sdk/controller/d$c;->c:Lcom/ironsource/sdk/controller/d$c;

    return-object p1

    :cond_c
    sget-object p1, Lcom/ironsource/sdk/controller/d$c;->b:Lcom/ironsource/sdk/controller/d$c;

    return-object p1
.end method

.method private d(Lcom/ironsource/q6;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/d;->g:Lcom/ironsource/s3;

    invoke-virtual {v0}, Lcom/ironsource/s3;->c()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ironsource/sdk/controller/d;->g:Lcom/ironsource/s3;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/s3;->a(Lcom/ironsource/q6;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private e(Lcom/ironsource/sdk/controller/d$d;)V
    .registers 7

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    iget v1, p0, Lcom/ironsource/sdk/controller/d;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "generalmessage"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/d$d;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "controllersource"

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object p1

    iget-wide v0, p0, Lcom/ironsource/sdk/controller/d;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_37

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/sdk/controller/d;->a:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timingvalue"

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    :cond_37
    sget-object v0, Lcom/ironsource/gb;->w:Lcom/ironsource/gb$a;

    invoke-virtual {p1}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    return-void
.end method

.method private h()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->r()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    :cond_8
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->p()Lcom/ironsource/q6;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1c

    :catch_1c
    return v0
.end method

.method static synthetic i(Lcom/ironsource/sdk/controller/d;)Lcom/ironsource/sdk/controller/d$d;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    return-object p0
.end method

.method private j()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->q()Lcom/ironsource/q6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private k()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->p()Lcom/ironsource/q6;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_23

    :catch_23
    return-void
.end method

.method private l()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->p()Lcom/ironsource/q6;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/q6;)Z

    return-void
.end method

.method private m()V
    .registers 2

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Lcom/ironsource/q6;)Z

    return-void
.end method

.method private p()Lcom/ironsource/q6;
    .registers 4

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    const-string v2, "fallback_mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private q()Lcom/ironsource/q6;
    .registers 4

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    const-string v2, "next_mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private r()Z
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->p()Lcom/ironsource/q6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private t()V
    .registers 7

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    iget v1, p0, Lcom/ironsource/sdk/controller/d;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "generalmessage"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    move-result-object v0

    iget-wide v1, p0, Lcom/ironsource/sdk/controller/d;->a:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_29

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/sdk/controller/d;->a:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timingvalue"

    invoke-virtual {v0, v2, v1}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    :cond_29
    sget-object v1, Lcom/ironsource/gb;->x:Lcom/ironsource/gb$a;

    invoke-virtual {v0}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method c(Lcom/ironsource/j6;)V
    .registers 4

    iget v0, p0, Lcom/ironsource/sdk/controller/d;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "generalmessage"

    invoke-virtual {p1, v1, v0}, Lcom/ironsource/j6;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/ironsource/j6;

    sget-object v0, Lcom/ironsource/gb;->v:Lcom/ironsource/gb$a;

    invoke-virtual {p1}, Lcom/ironsource/j6;->a()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/o6;->a(Lcom/ironsource/gb$a;Ljava/util/Map;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/sdk/controller/d;->a:J

    return-void
.end method

.method f(Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/ironsource/sdk/controller/d;->c:Lcom/ironsource/sdk/controller/d$c;

    sget-object v1, Lcom/ironsource/sdk/controller/d$c;->b:Lcom/ironsource/sdk/controller/d$c;

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->l()V

    :cond_10
    sget-object v0, Lcom/ironsource/sdk/controller/d$d;->d:Lcom/ironsource/sdk/controller/d$d;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->e(Lcom/ironsource/sdk/controller/d$d;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method g(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/ironsource/sdk/controller/d;->c:Lcom/ironsource/sdk/controller/d$c;

    sget-object v1, Lcom/ironsource/sdk/controller/d$c;->b:Lcom/ironsource/sdk/controller/d$c;

    if-ne v0, v1, :cond_1e

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->h()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object p2, Lcom/ironsource/sdk/controller/d$d;->g:Lcom/ironsource/sdk/controller/d$d;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/d;->e(Lcom/ironsource/sdk/controller/d$d;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->t()V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method n()Lorg/json/JSONObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/ironsource/sdk/controller/d$a;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/d$a;-><init>(Lcom/ironsource/sdk/controller/d;)V

    return-object v0
.end method

.method o()Lcom/ironsource/q6;
    .registers 4

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    const-string v2, "mobileController.html"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method s()Z
    .registers 6

    sget-object v0, Lcom/ironsource/sdk/controller/d$b;->a:[I

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->c:Lcom/ironsource/sdk/controller/d$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_ac

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    goto/16 :goto_ab

    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v0

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->q()Lcom/ironsource/q6;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3b

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V

    return v2

    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/ironsource/sdk/controller/d$d;->e:Lcom/ironsource/sdk/controller/d$d;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->e(Lcom/ironsource/sdk/controller/d$d;)V

    new-instance v0, Lcom/ironsource/q6;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V

    return v1

    :cond_5d
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->k()V

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->j()Z

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/ironsource/sdk/controller/d$d;->c:Lcom/ironsource/sdk/controller/d$d;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->e(Lcom/ironsource/sdk/controller/d$d;)V

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->l()V

    new-instance v0, Lcom/ironsource/q6;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V

    return v1

    :cond_7f
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->h()Z

    move-result v0

    if-eqz v0, :cond_9b

    sget-object v0, Lcom/ironsource/sdk/controller/d$d;->f:Lcom/ironsource/sdk/controller/d$d;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->e(Lcom/ironsource/sdk/controller/d$d;)V

    new-instance v0, Lcom/ironsource/q6;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v4, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V

    return v1

    :cond_9b
    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_ab} :catch_ab

    :catch_ab
    :goto_ab
    return v2

    :cond_ac
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->k()V

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bc
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/d;->d(Lcom/ironsource/q6;)V

    return v2

    :cond_c0
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/d;->m()V

    new-instance v0, Lcom/ironsource/q6;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/d;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/d;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/ironsource/q6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc
.end method

.method u()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/d;->d:Lcom/ironsource/sdk/controller/d$d;

    sget-object v1, Lcom/ironsource/sdk/controller/d$d;->b:Lcom/ironsource/sdk/controller/d$d;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
