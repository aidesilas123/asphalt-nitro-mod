###### Class com.applovin.impl.sdk.c (com.applovin.impl.sdk.c)
.class public Lcom/applovin/impl/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ayS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/ad/g;",
            ">;"
        }
    .end annotation
.end field

.field private final ayT:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private ayU:Lcom/applovin/impl/sdk/utils/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/b$a;Lcom/applovin/impl/sdk/n;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->ayS:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/c;->ayT:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/applovin/impl/sdk/c;->sdk:Lcom/applovin/impl/sdk/n;

    return-void
.end method

.method private synthetic AF()V
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->AE()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Cb()Lcom/applovin/impl/sdk/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/b;->a(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/b$a;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/sdk/c;
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/c;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/b$a;Lcom/applovin/impl/sdk/n;)V

    invoke-interface {p0}, Lcom/applovin/impl/sdk/ad/g;->getTimeToLiveMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/applovin/impl/sdk/c;->bJ(J)V

    return-object v0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c;->AF()V

    return-void
.end method


# virtual methods
.method public AD()Lcom/applovin/impl/sdk/ad/g;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->ayS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/g;

    return-object v0
.end method

.method public AE()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->tT()V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->AD()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-interface {v0}, Lcom/applovin/impl/sdk/ad/g;->setExpired()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->ayT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/b$a;

    if-nez v1, :cond_18

    return-void

    :cond_18
    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/b$a;->onAdExpired(Lcom/applovin/impl/sdk/ad/g;)V

    return-void
.end method

.method public bJ(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->tT()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aMc:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->Ce()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v1, Lcom/applovin/impl/sdk/p0;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/p0;-><init>(Lcom/applovin/impl/sdk/c;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/r;->b(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/r;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/c;->ayU:Lcom/applovin/impl/sdk/utils/r;

    return-void
.end method

.method public tT()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/r;->tT()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->ayU:Lcom/applovin/impl/sdk/utils/r;

    :cond_a
    return-void
.end method

###### Class com.applovin.impl.sdk.p0 (com.applovin.impl.sdk.p0)
.class public final synthetic Lcom/applovin/impl/sdk/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/p0;->a:Lcom/applovin/impl/sdk/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/p0;->a:Lcom/applovin/impl/sdk/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method
