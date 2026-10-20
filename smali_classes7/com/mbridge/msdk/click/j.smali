###### Class com.mbridge.msdk.click.j (com.mbridge.msdk.click.j)
.class public final Lcom/mbridge/msdk/click/j;
.super Lcom/mbridge/msdk/foundation/same/e/a;
.source "SocketRequestTask.java"


# instance fields
.field private final a:Ljava/util/concurrent/Semaphore;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Lcom/mbridge/msdk/click/entity/a;

.field private o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

.field private p:Lcom/mbridge/msdk/click/e;

.field private q:Lcom/mbridge/msdk/click/i;

.field private final r:Lcom/mbridge/msdk/click/l$a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/click/entity/b;)V
    .registers 4

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->a:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/mbridge/msdk/click/j$1;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/j$1;-><init>(Lcom/mbridge/msdk/click/j;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->r:Lcom/mbridge/msdk/click/l$a;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->e:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->e()Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/j;->j:Z

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/j;->k:Z

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->i()I

    move-result v0

    iput v0, p0, Lcom/mbridge/msdk/click/j;->l:I

    invoke-virtual {p1}, Lcom/mbridge/msdk/click/entity/b;->h()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/click/j;->m:Z

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/j;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .registers 16

    const-string v0, ""

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    new-instance v2, Lcom/mbridge/msdk/click/k;

    invoke-direct {v2}, Lcom/mbridge/msdk/click/k;-><init>()V

    new-instance v3, Lcom/mbridge/msdk/click/g;

    invoke-direct {v3}, Lcom/mbridge/msdk/click/g;-><init>()V

    :try_start_15
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_2c

    :try_start_23
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_28

    goto :goto_37

    :catch_28
    move-exception v4

    goto :goto_2e

    :cond_2a
    move-object v4, v0

    goto :goto_39

    :catch_2c
    move-exception v4

    move-object v5, v0

    :goto_2e
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SocketRequestTask"

    invoke-static {v6, v4}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    move-object v4, v0

    move-object v0, v5

    :goto_39
    const/4 v5, 0x0

    move-object v7, p1

    const/4 p1, 0x0

    :goto_3c
    const/16 v6, 0xa

    if-ge p1, v6, :cond_169

    iget-object v6, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    sget-object v8, Lcom/mbridge/msdk/foundation/same/e/a$b;->b:Lcom/mbridge/msdk/foundation/same/e/a$b;

    const/4 v9, 0x0

    if-eq v6, v8, :cond_48

    return-object v9

    :cond_48
    const-string v6, "tcp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_5f

    const/4 v6, 0x3

    iget-object v10, p0, Lcom/mbridge/msdk/click/j;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-boolean v11, p0, Lcom/mbridge/msdk/click/j;->j:Z

    iget-boolean v12, p0, Lcom/mbridge/msdk/click/j;->k:Z

    invoke-virtual {v2, v7, v10, v11, v12}, Lcom/mbridge/msdk/click/k;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v10

    iput-object v10, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    goto :goto_6c

    :cond_5f
    iget-boolean v6, p0, Lcom/mbridge/msdk/click/j;->j:Z

    iget-boolean v10, p0, Lcom/mbridge/msdk/click/j;->k:Z

    iget-object v11, p0, Lcom/mbridge/msdk/click/j;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3, v7, v6, v10, v11}, Lcom/mbridge/msdk/click/g;->a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v6

    iput-object v6, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    const/4 v6, 0x1

    :goto_6c
    iget-object v10, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    if-nez v10, :cond_78

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    goto/16 :goto_169

    :cond_78
    iget-object v10, v10, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b2

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    if-nez p1, :cond_169

    invoke-static {}, Lcom/mbridge/msdk/click/a/a;->a()Lcom/mbridge/msdk/click/a/a;

    move-result-object v6

    iget-object p1, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v8, p1, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/mbridge/msdk/click/j;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v10, p0, Lcom/mbridge/msdk/click/j;->h:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/mbridge/msdk/click/j;->j:Z

    iget-boolean v12, p0, Lcom/mbridge/msdk/click/j;->k:Z

    iget v13, p0, Lcom/mbridge/msdk/click/j;->l:I

    invoke-virtual/range {v6 .. v13}, Lcom/mbridge/msdk/click/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    goto/16 :goto_169

    :cond_b2
    iget-object v6, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget v6, v6, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v10, 0xc8

    if-ne v6, v10, :cond_d0

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object p1, p1, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    if-nez p1, :cond_ca

    goto :goto_cb

    :cond_ca
    move-object v9, p1

    :goto_cb
    invoke-virtual {v1, v9}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    goto/16 :goto_169

    :cond_d0
    const/16 v10, 0x12d

    if-eq v6, v10, :cond_fc

    const/16 v10, 0x12e

    if-eq v6, v10, :cond_fc

    const/16 v10, 0x133

    if-ne v6, v10, :cond_dd

    goto :goto_fc

    :cond_dd
    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    if-nez p1, :cond_169

    invoke-static {}, Lcom/mbridge/msdk/click/a/a;->a()Lcom/mbridge/msdk/click/a/a;

    move-result-object v6

    iget-object p1, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v8, p1, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    iget-object v9, p0, Lcom/mbridge/msdk/click/j;->i:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v10, p0, Lcom/mbridge/msdk/click/j;->h:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/mbridge/msdk/click/j;->j:Z

    iget-boolean v12, p0, Lcom/mbridge/msdk/click/j;->k:Z

    iget v13, p0, Lcom/mbridge/msdk/click/j;->l:I

    invoke-virtual/range {v6 .. v13}, Lcom/mbridge/msdk/click/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    goto/16 :goto_169

    :cond_fc
    :goto_fc
    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setIs302Jump(Z)V

    iget-object v6, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v6, v6, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_113

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto :goto_169

    :cond_113
    iget-object v6, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v6, v6, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_154

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_14d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    move-object v4, v0

    goto :goto_154

    :cond_14d
    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto :goto_169

    :cond_154
    :goto_154
    invoke-static {v6}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_161

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto :goto_169

    :cond_161
    invoke-direct {p0, v6}, Lcom/mbridge/msdk/click/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3c

    :cond_169
    :goto_169
    return-object v1
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/j;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {p0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    goto :goto_29

    :cond_1d
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object p0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/j;)Lcom/mbridge/msdk/click/i;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/j;->q:Lcom/mbridge/msdk/click/i;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/mbridge/msdk/click/j;->m:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1f
    return-object p1
.end method

.method static synthetic c(Lcom/mbridge/msdk/click/j;)V
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/j;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 15

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->p:Lcom/mbridge/msdk/click/e;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/e;->a(Ljava/lang/Object;)V

    :cond_8
    new-instance v0, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/j;->a(Ljava/lang/String;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    :cond_2c
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/e/a;->c:Lcom/mbridge/msdk/foundation/same/e/a$b;

    sget-object v2, Lcom/mbridge/msdk/foundation/same/e/a$b;->b:Lcom/mbridge/msdk/foundation/same/e/a$b;

    if-eq v0, v2, :cond_3c

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->q:Lcom/mbridge/msdk/click/i;

    if-eqz v0, :cond_3b

    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/i;->a(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V

    :cond_3b
    return-void

    :cond_3c
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_4e

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->q:Lcom/mbridge/msdk/click/i;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/i;->a(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V

    :cond_4d
    return-void

    :cond_4e
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    if-eqz v0, :cond_59

    iget-object v2, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget v0, v0, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    :cond_59
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_da

    const/16 v0, 0xc8

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget v3, v3, Lcom/mbridge/msdk/click/entity/a;->f:I

    if-ne v0, v3, :cond_da

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b6

    new-instance v1, Lcom/mbridge/msdk/click/l;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/l;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/click/j;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/click/j;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/click/j;->r:Lcom/mbridge/msdk/click/l$a;

    invoke-virtual/range {v1 .. v7}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V

    goto :goto_d4

    :cond_b6
    :try_start_b6
    new-instance v8, Lcom/mbridge/msdk/click/l;

    invoke-direct {v8}, Lcom/mbridge/msdk/click/l;-><init>()V

    iget-object v9, p0, Lcom/mbridge/msdk/click/j;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/mbridge/msdk/click/j;->h:Ljava/lang/String;

    iget-object v11, p0, Lcom/mbridge/msdk/click/j;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/mbridge/msdk/click/j;->r:Lcom/mbridge/msdk/click/l$a;

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_cc} :catch_cd

    goto :goto_d4

    :catch_cd
    const-string v0, "TAG"

    const-string v1, "webview spider start error"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d4
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_138

    :cond_da
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    if-eqz v0, :cond_109

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v3, v3, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget v3, v3, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    invoke-virtual {v3}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v3, p0, Lcom/mbridge/msdk/click/j;->n:Lcom/mbridge/msdk/click/entity/a;

    iget-object v3, v3, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    :cond_109
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_125

    iget-object v2, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object v2, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    goto :goto_12f

    :cond_125
    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    :goto_12f
    iget-object v0, p0, Lcom/mbridge/msdk/click/j;->q:Lcom/mbridge/msdk/click/i;

    if-eqz v0, :cond_138

    iget-object v1, p0, Lcom/mbridge/msdk/click/j;->o:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/i;->a(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V

    :cond_138
    :goto_138
    return-void
.end method

.method public final a(Lcom/mbridge/msdk/click/e;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/j;->p:Lcom/mbridge/msdk/click/e;

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/click/i;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/j;->q:Lcom/mbridge/msdk/click/i;

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method
