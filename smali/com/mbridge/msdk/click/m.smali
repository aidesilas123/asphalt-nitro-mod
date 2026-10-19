###### Class com.mbridge.msdk.click.m (com.mbridge.msdk.click.m)
.class public final Lcom/mbridge/msdk/click/m;
.super Lcom/mbridge/msdk/click/d;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/e/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/click/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/click/e;

.field private b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/mbridge/msdk/foundation/same/e/b;

.field private g:Lcom/mbridge/msdk/click/entity/a;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/mbridge/msdk/click/d;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/m;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/m;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/mbridge/msdk/click/m;->e:Landroid/content/Context;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/e/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/mbridge/msdk/foundation/same/e/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mbridge/msdk/click/m;->f:Lcom/mbridge/msdk/foundation/same/e/b;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/m;->b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/a;)Lcom/mbridge/msdk/click/entity/a;
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/m;->g:Lcom/mbridge/msdk/click/entity/a;

    return-object p1
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/m;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/mbridge/msdk/click/m;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/mbridge/msdk/click/m;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/m;->g:Lcom/mbridge/msdk/click/entity/a;

    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/m;->b:Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/m;->a:Lcom/mbridge/msdk/click/e;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mbridge/msdk/click/m;->c:Z

    return-void
.end method

.method public final a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V
    .registers 3

    sget-object v0, Lcom/mbridge/msdk/foundation/same/e/a$b;->e:Lcom/mbridge/msdk/foundation/same/e/a$b;

    if-ne p1, v0, :cond_13

    iget-boolean p1, p0, Lcom/mbridge/msdk/click/m;->c:Z

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/mbridge/msdk/click/m;->h:Landroid/os/Handler;

    new-instance v0, Lcom/mbridge/msdk/click/m$2;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/click/m$2;-><init>(Lcom/mbridge/msdk/click/m;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/mbridge/msdk/click/e;ZLjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V
    .registers 22

    move-object v10, p0

    move-object v3, p1

    move v0, p3

    move-object v1, p2

    iput-object v1, v10, Lcom/mbridge/msdk/click/m;->a:Lcom/mbridge/msdk/click/e;

    iput-boolean v0, v10, Lcom/mbridge/msdk/click/m;->d:Z

    new-instance v1, Lcom/mbridge/msdk/click/entity/b;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/b;-><init>()V

    iget-object v2, v10, Lcom/mbridge/msdk/click/m;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/click/entity/b;->a(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/click/entity/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/mbridge/msdk/click/entity/b;->c(Z)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Lcom/mbridge/msdk/click/entity/b;->b(Ljava/lang/String;)V

    move-object/from16 v5, p5

    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/click/entity/b;->c(Ljava/lang/String;)V

    move-object/from16 v6, p6

    invoke-virtual {v1, v6}, Lcom/mbridge/msdk/click/entity/b;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move/from16 v7, p7

    invoke-virtual {v1, v7}, Lcom/mbridge/msdk/click/entity/b;->a(Z)V

    move/from16 v8, p8

    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/click/entity/b;->b(Z)V

    move/from16 v9, p9

    invoke-virtual {v1, v9}, Lcom/mbridge/msdk/click/entity/b;->a(I)V

    const-string v0, "tcp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Lcom/mbridge/msdk/click/j;

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/click/j;-><init>(Lcom/mbridge/msdk/click/entity/b;)V

    iget-object v1, v10, Lcom/mbridge/msdk/click/m;->a:Lcom/mbridge/msdk/click/e;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/j;->a(Lcom/mbridge/msdk/click/e;)V

    new-instance v1, Lcom/mbridge/msdk/click/m$1;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/click/m$1;-><init>(Lcom/mbridge/msdk/click/m;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/j;->a(Lcom/mbridge/msdk/click/i;)V

    goto :goto_67

    :cond_51
    new-instance v11, Lcom/mbridge/msdk/click/m$a;

    iget-object v2, v10, Lcom/mbridge/msdk/click/m;->e:Landroid/content/Context;

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/mbridge/msdk/click/m$a;-><init>(Lcom/mbridge/msdk/click/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V

    :goto_67
    iget-object v1, v10, Lcom/mbridge/msdk/click/m;->f:Lcom/mbridge/msdk/foundation/same/e/b;

    invoke-virtual {v1, v0, p0}, Lcom/mbridge/msdk/foundation/same/e/b;->a(Lcom/mbridge/msdk/foundation/same/e/a;Lcom/mbridge/msdk/foundation/same/e/a$a;)V

    return-void
.end method

###### Class com.mbridge.msdk.click.m.AnonymousClass1 (com.mbridge.msdk.click.m$1)
.class final Lcom/mbridge/msdk/click/m$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lcom/mbridge/msdk/click/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/m;->a(Ljava/lang/String;Lcom/mbridge/msdk/click/e;ZLjava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/m;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$1;->a:Lcom/mbridge/msdk/click/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)V
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$1;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    return-void
.end method

###### Class com.mbridge.msdk.click.m.AnonymousClass2 (com.mbridge.msdk.click.m$2)
.class final Lcom/mbridge/msdk/click/m$2;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/foundation/same/e/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/m;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/e;->b(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_24
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/click/m$2;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v2}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/click/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

###### Class com.mbridge.msdk.click.m.a (com.mbridge.msdk.click.m$a)
.class final Lcom/mbridge/msdk/click/m$a;
.super Lcom/mbridge/msdk/foundation/same/e/a;
.source "WebViewSpiderLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/m;

.field private final e:Ljava/util/concurrent/Semaphore;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lcom/mbridge/msdk/click/l$a;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/click/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ZZI)V
    .registers 11

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/e/a;-><init>()V

    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$a;->e:Ljava/util/concurrent/Semaphore;

    new-instance p1, Lcom/mbridge/msdk/click/m$a$1;

    invoke-direct {p1, p0}, Lcom/mbridge/msdk/click/m$a$1;-><init>(Lcom/mbridge/msdk/click/m$a;)V

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$a;->n:Lcom/mbridge/msdk/click/l$a;

    iput-object p2, p0, Lcom/mbridge/msdk/click/m$a;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/mbridge/msdk/click/m$a;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/click/m$a;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/click/m$a;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/click/m$a;->j:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-boolean p7, p0, Lcom/mbridge/msdk/click/m$a;->k:Z

    iput-boolean p8, p0, Lcom/mbridge/msdk/click/m$a;->l:Z

    iput p9, p0, Lcom/mbridge/msdk/click/m$a;->m:I

    return-void
.end method

.method private a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;
    .registers 21

    move-object v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    iget-object v3, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v3}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v1, Lcom/mbridge/msdk/click/m$a;->f:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/mbridge/msdk/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_28
    move-object v3, v0

    new-instance v4, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v4}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    new-instance v5, Lcom/mbridge/msdk/click/g;

    invoke-direct {v5}, Lcom/mbridge/msdk/click/g;-><init>()V

    :try_start_33
    invoke-direct {p0, v3}, Lcom/mbridge/msdk/click/m$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_4a

    :try_start_41
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    move-exception v0

    goto :goto_4c

    :cond_48
    move-object v0, v2

    goto :goto_51

    :catch_4a
    move-exception v0

    move-object v6, v2

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4f
    move-object v0, v2

    move-object v2, v6

    :goto_51
    const/4 v6, 0x0

    move-object v8, v3

    const/4 v7, 0x0

    move-object v3, v2

    move-object v2, v0

    :goto_56
    const/16 v0, 0xa

    if-ge v7, v0, :cond_1ec

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->b(Lcom/mbridge/msdk/click/m;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_64

    return-object v9

    :cond_64
    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v10, p4

    invoke-virtual {v5, v8, v12, v13, v10}, Lcom/mbridge/msdk/click/g;->a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/a;)Lcom/mbridge/msdk/click/entity/a;

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    if-nez v0, :cond_83

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    goto/16 :goto_1ec

    :cond_83
    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_d0

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    if-nez v7, :cond_1ec

    invoke-static {}, Lcom/mbridge/msdk/click/a/a;->a()Lcom/mbridge/msdk/click/a/a;

    move-result-object v7

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v9, v0, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    iget-object v11, v1, Lcom/mbridge/msdk/click/m$a;->i:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/mbridge/msdk/click/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    goto/16 :goto_1ec

    :cond_d0
    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v14, 0x12d

    if-eq v0, v14, :cond_ea

    const/16 v14, 0x12e

    if-eq v0, v14, :cond_ea

    const/16 v14, 0x133

    if-ne v0, v14, :cond_e8

    goto :goto_ea

    :cond_e8
    const/4 v0, 0x0

    goto :goto_eb

    :cond_ea
    :goto_ea
    const/4 v0, 0x1

    :goto_eb
    if-eqz v0, :cond_197

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setIs302Jump(Z)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1ec

    :cond_106
    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v8, v0, Lcom/mbridge/msdk/click/entity/a;->a:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/m$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14a

    const-string v0, "/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_142

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_142

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_142

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    move-object v3, v2

    goto :goto_162

    :cond_142
    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1ec

    :cond_14a
    invoke-direct {p0, v8}, Lcom/mbridge/msdk/click/m$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_162

    :try_start_150
    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_15c} :catch_15e

    move-object v2, v0

    goto :goto_162

    :catch_15e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_162
    :goto_162
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_170

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    goto/16 :goto_1ec

    :cond_170
    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;)Z

    move-result v0

    if-eqz v0, :cond_193

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->f:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/mbridge/msdk/c/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_193

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_193
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_56

    :cond_197
    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget v0, v0, Lcom/mbridge/msdk/click/entity/a;->f:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1a5

    const/4 v0, 0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v0, 0x0

    :goto_1a6
    if-eqz v0, :cond_1ba

    invoke-virtual {v4, v11}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    iget-object v0, v0, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    goto :goto_1ec

    :cond_1ba
    invoke-virtual {v4, v6}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    invoke-virtual {v4, v8}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    if-nez v7, :cond_1ec

    invoke-static {}, Lcom/mbridge/msdk/click/a/a;->a()Lcom/mbridge/msdk/click/a/a;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v2}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/mbridge/msdk/click/m$a;->i:Ljava/lang/String;

    move-object/from16 v10, p4

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p5

    invoke-virtual/range {v7 .. v14}, Lcom/mbridge/msdk/click/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;ZZI)V

    :cond_1ec
    :goto_1ec
    return-object v4
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/m$a;)V
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/click/m$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/click/m$a;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/click/m$a;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->j:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    :cond_7
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {p1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setjumpDone(Z)V

    return v1

    :cond_2a
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setCode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public final a()V
    .registers 15

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->e(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/click/e;->a(Ljava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    new-instance v1, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;-><init>()V

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    iget-object v2, p0, Lcom/mbridge/msdk/click/m$a;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/mbridge/msdk/click/m$a;->k:Z

    iget-boolean v4, p0, Lcom/mbridge/msdk/click/m$a;->l:Z

    iget-object v5, p0, Lcom/mbridge/msdk/click/m$a;->j:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    iget v6, p0, Lcom/mbridge/msdk/click/m$a;->m:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/mbridge/msdk/click/m$a;->a(Ljava/lang/String;ZZLcom/mbridge/msdk/foundation/entity/CampaignEx;I)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/click/m;->a(Lcom/mbridge/msdk/click/m;Lcom/mbridge/msdk/click/entity/JumpLoaderResult;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getExceptionMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    :cond_55
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->b(Lcom/mbridge/msdk/click/m;)Z

    move-result v0

    if-nez v0, :cond_5e

    return-void

    :cond_5e
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_6b

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v2}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    :cond_84
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/ae$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_121

    const/16 v0, 0xc8

    iget-object v2, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v2}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/click/entity/a;->f:I

    if-ne v0, v2, :cond_121

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_121

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXCEPTION_CAMPAIGN_NOT_ACTIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_121

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_101

    new-instance v1, Lcom/mbridge/msdk/click/l;

    invoke-direct {v1}, Lcom/mbridge/msdk/click/l;-><init>()V

    iget-object v2, p0, Lcom/mbridge/msdk/click/m$a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/click/m$a;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/mbridge/msdk/click/m$a;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getContent()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mbridge/msdk/click/m$a;->n:Lcom/mbridge/msdk/click/l$a;

    invoke-virtual/range {v1 .. v7}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V

    goto :goto_11b

    :cond_101
    :try_start_101
    new-instance v8, Lcom/mbridge/msdk/click/l;

    invoke-direct {v8}, Lcom/mbridge/msdk/click/l;-><init>()V

    iget-object v9, p0, Lcom/mbridge/msdk/click/m$a;->h:Ljava/lang/String;

    iget-object v10, p0, Lcom/mbridge/msdk/click/m$a;->i:Ljava/lang/String;

    iget-object v11, p0, Lcom/mbridge/msdk/click/m$a;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/mbridge/msdk/click/m$a;->n:Lcom/mbridge/msdk/click/l$a;

    invoke-virtual/range {v8 .. v13}, Lcom/mbridge/msdk/click/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/mbridge/msdk/click/l$a;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_11b} :catch_11b

    :catch_11b
    :goto_11b
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    goto :goto_185

    :cond_121
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v0

    if-eqz v0, :cond_178

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setType(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/click/entity/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v1

    iget v1, v1, Lcom/mbridge/msdk/click/entity/a;->f:I

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setStatusCode(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/click/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setHeader(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->c(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/a;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/click/entity/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    :cond_178
    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v0}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/click/m$a;->a(Ljava/lang/String;)Z

    :goto_185
    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

###### Class com.mbridge.msdk.click.m.a.AnonymousClass1 (com.mbridge.msdk.click.m$a$1)
.class final Lcom/mbridge/msdk/click/m$a$1;
.super Ljava/lang/Object;
.source "WebViewSpiderLoader.java"

# interfaces
.implements Lcom/mbridge/msdk/click/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/click/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/click/m$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/click/m$a;)V
    .registers 2

    iput-object p1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    iget-object v0, v0, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    iget-object v1, v1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setSuccess(Z)V

    iget-object v1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-static {v1}, Lcom/mbridge/msdk/click/m$a;->a(Lcom/mbridge/msdk/click/m$a;)V

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    iget-object p1, p1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {p1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setExceptionMsg(Ljava/lang/String;)V

    :cond_11
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    iget-object p1, p1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {p1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    :cond_22
    iget-object p1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-static {p1, p2}, Lcom/mbridge/msdk/click/m$a;->a(Lcom/mbridge/msdk/click/m$a;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/mbridge/msdk/click/m$a$1;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    iget-object p2, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/click/m$a;->a(Lcom/mbridge/msdk/click/m$a;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    iget-object p1, p1, Lcom/mbridge/msdk/click/m$a;->a:Lcom/mbridge/msdk/click/m;

    invoke-static {p1}, Lcom/mbridge/msdk/click/m;->d(Lcom/mbridge/msdk/click/m;)Lcom/mbridge/msdk/click/entity/JumpLoaderResult;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/mbridge/msdk/click/entity/JumpLoaderResult;->setContent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mbridge/msdk/click/m$a$1;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/click/m$a;->a(Lcom/mbridge/msdk/click/m$a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/mbridge/msdk/click/m$a$1;->a()V

    :cond_b
    return p1
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/mbridge/msdk/click/m$a$1;->a:Lcom/mbridge/msdk/click/m$a;

    invoke-static {v0, p1}, Lcom/mbridge/msdk/click/m$a;->a(Lcom/mbridge/msdk/click/m$a;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/mbridge/msdk/click/m$a$1;->a()V

    :cond_b
    return p1
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
