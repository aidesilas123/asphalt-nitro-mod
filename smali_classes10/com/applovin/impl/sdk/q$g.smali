###### Class com.applovin.impl.sdk.q.g (com.applovin.impl.sdk.q$g)
.class public Lcom/applovin/impl/sdk/q$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "g"
.end annotation


# instance fields
.field final synthetic aDO:Lcom/applovin/impl/sdk/q;

.field private aEo:J

.field private aEp:Lcom/applovin/impl/sdk/q$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aEq:Lcom/applovin/impl/sdk/q$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aEr:Lcom/applovin/impl/sdk/q$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final aEs:Landroid/app/ActivityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/q;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/impl/sdk/q;->a(Lcom/applovin/impl/sdk/q;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    if-nez v0, :cond_16

    return-void

    :cond_16
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    :try_start_1b
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    iput-wide v0, p0, Lcom/applovin/impl/sdk/q$g;->aEo:J
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_40

    :catchall_23
    move-exception v0

    invoke-static {p1}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {p1}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string v1, "DataProvider"

    const-string v2, "Unable to collect memory info."

    invoke-virtual {p1, v1, v2, v0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/q;Lcom/applovin/impl/sdk/q$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/q$g;-><init>(Lcom/applovin/impl/sdk/q;)V

    return-void
.end method


# virtual methods
.method protected EL()Ljava/lang/Long;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEp:Lcom/applovin/impl/sdk/q$e;

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->a(Lcom/applovin/impl/sdk/q$e;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEp:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    return-object v1

    :cond_21
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    :try_start_26
    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v2, Lcom/applovin/impl/sdk/q$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q;->h(Lcom/applovin/impl/sdk/q;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/q$e;-><init>(Lcom/applovin/impl/sdk/q;Ljava/lang/Object;JLcom/applovin/impl/sdk/q$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEp:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_52

    return-object v0

    :catchall_52
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect available memory."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    return-object v1
.end method

.method protected EM()Ljava/lang/Long;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEq:Lcom/applovin/impl/sdk/q$e;

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->a(Lcom/applovin/impl/sdk/q$e;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEq:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    return-object v1

    :cond_21
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    :try_start_26
    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v2, Lcom/applovin/impl/sdk/q$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q;->h(Lcom/applovin/impl/sdk/q;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/q$e;-><init>(Lcom/applovin/impl/sdk/q;Ljava/lang/Object;JLcom/applovin/impl/sdk/q$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEq:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_52

    return-object v0

    :catchall_52
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect low memory threshold."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    return-object v1
.end method

.method protected EN()Ljava/lang/Boolean;
    .registers 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEr:Lcom/applovin/impl/sdk/q$e;

    if-eqz v0, :cond_1b

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->a(Lcom/applovin/impl/sdk/q$e;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEr:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_21

    return-object v1

    :cond_21
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    :try_start_26
    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEs:Landroid/app/ActivityManager;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v2, Lcom/applovin/impl/sdk/q$e;

    iget-object v4, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q;->h(Lcom/applovin/impl/sdk/q;)I

    move-result v0

    int-to-long v6, v0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/sdk/q$e;-><init>(Lcom/applovin/impl/sdk/q;Ljava/lang/Object;JLcom/applovin/impl/sdk/q$1;)V

    iput-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aEr:Lcom/applovin/impl/sdk/q$e;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q$e;->b(Lcom/applovin/impl/sdk/q$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_51
    .catchall {:try_start_26 .. :try_end_51} :catchall_52

    return-object v0

    :catchall_52
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/applovin/impl/sdk/q$g;->aDO:Lcom/applovin/impl/sdk/q;

    invoke-static {v2}, Lcom/applovin/impl/sdk/q;->d(Lcom/applovin/impl/sdk/q;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v3, "DataProvider"

    const-string v4, "Unable to collect has low memory."

    invoke-virtual {v2, v3, v4, v0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_73
    return-object v1
.end method

.method public EO()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/q$g;->aEo:J

    return-wide v0
.end method
