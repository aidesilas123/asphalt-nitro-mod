###### Class com.applovin.exoplayer2.k.o (com.applovin.exoplayer2.k.o)
.class public final Lcom/applovin/exoplayer2/k/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/o$a;
    }
.end annotation


# instance fields
.field private final E:Landroid/content/Context;

.field private LR:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aaj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/k/aa;",
            ">;"
        }
    .end annotation
.end field

.field private final aak:Lcom/applovin/exoplayer2/k/i;

.field private aal:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aam:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aan:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aao:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aap:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aaq:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aar:Lcom/applovin/exoplayer2/k/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/applovin/exoplayer2/k/i;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/o;->E:Landroid/content/Context;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/exoplayer2/k/i;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/o;->aak:Lcom/applovin/exoplayer2/k/i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/o;->aaj:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/k/i;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/applovin/exoplayer2/k/o;->aaj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/o;->aaj:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/exoplayer2/k/aa;

    invoke-interface {p1, v1}, Lcom/applovin/exoplayer2/k/i;->c(Lcom/applovin/exoplayer2/k/aa;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V
    .registers 3
    .param p1    # Lcom/applovin/exoplayer2/k/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/k/i;->c(Lcom/applovin/exoplayer2/k/aa;)V

    :cond_5
    return-void
.end method

.method private on()Lcom/applovin/exoplayer2/k/i;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aap:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/applovin/exoplayer2/k/ab;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/ab;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aap:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aap:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private oo()Lcom/applovin/exoplayer2/k/i;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aal:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/applovin/exoplayer2/k/s;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/s;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aal:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aal:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private op()Lcom/applovin/exoplayer2/k/i;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aam:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_10

    new-instance v0, Lcom/applovin/exoplayer2/k/c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/o;->E:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/k/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aam:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_10
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aam:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private oq()Lcom/applovin/exoplayer2/k/i;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aan:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_10

    new-instance v0, Lcom/applovin/exoplayer2/k/f;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/o;->E:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/k/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aan:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_10
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aan:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private or()Lcom/applovin/exoplayer2/k/i;
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_37

    :try_start_4
    const-string v0, "com.applovin.exoplayer2.ext.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_1e} :catch_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_1f

    goto :goto_2f

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aak:Lcom/applovin/exoplayer2/k/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    :cond_37
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private os()Lcom/applovin/exoplayer2/k/i;
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aaq:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_e

    new-instance v0, Lcom/applovin/exoplayer2/k/h;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/k/h;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aaq:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_e
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aaq:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method

.method private ot()Lcom/applovin/exoplayer2/k/i;
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aar:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_10

    new-instance v0, Lcom/applovin/exoplayer2/k/x;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/o;->E:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/k/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aar:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;)V

    :cond_10
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aar:Lcom/applovin/exoplayer2/k/i;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/k/l;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ai;->h(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_37

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->op()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto/16 :goto_9e

    :cond_30
    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->oo()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_37
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->op()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_46
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->oq()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_55
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->or()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_64
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->on()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_73
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->os()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_82
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_98

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    goto :goto_98

    :cond_93
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aak:Lcom/applovin/exoplayer2/k/i;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_9e

    :cond_98
    :goto_98
    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/o;->ot()Lcom/applovin/exoplayer2/k/i;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    :goto_9e
    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/k/i;->a(Lcom/applovin/exoplayer2/k/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Lcom/applovin/exoplayer2/k/aa;)V
    .registers 3

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aak:Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1}, Lcom/applovin/exoplayer2/k/i;->c(Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aaj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aal:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aam:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aan:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aao:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aap:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aaq:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->aar:Lcom/applovin/exoplayer2/k/i;

    invoke-direct {p0, v0, p1}, Lcom/applovin/exoplayer2/k/o;->a(Lcom/applovin/exoplayer2/k/i;Lcom/applovin/exoplayer2/k/aa;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->close()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    goto :goto_f

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    throw v0

    :cond_f
    :goto_f
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public kT()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-interface {v0}, Lcom/applovin/exoplayer2/k/i;->kT()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/o;->LR:Lcom/applovin/exoplayer2/k/i;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/k/i;

    invoke-interface {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/k/g;->read([BII)I

    move-result p1

    return p1
.end method
