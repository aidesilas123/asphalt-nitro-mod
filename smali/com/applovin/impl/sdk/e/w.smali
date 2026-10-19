###### Class com.applovin.impl.sdk.e.w (com.applovin.impl.sdk.e.w)
.class public abstract Lcom/applovin/impl/sdk/e/w;
.super Lcom/applovin/impl/sdk/e/d;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/network/b$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/e/d;",
        "Lcom/applovin/impl/sdk/network/b$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final aHl:Lcom/applovin/impl/sdk/network/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected aHv:Lcom/applovin/impl/sdk/network/b$a;

.field private aUY:Lcom/applovin/impl/sdk/e/q$b;

.field private aUZ:Lcom/applovin/impl/sdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aVa:Lcom/applovin/impl/sdk/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final apS:Lcom/applovin/impl/sdk/network/b$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/impl/sdk/network/b$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/n;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/e/w;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/network/c<",
            "TT;>;",
            "Lcom/applovin/impl/sdk/n;",
            "Z)V"
        }
    .end annotation

    const-string v0, "TaskRepeatRequest"

    invoke-direct {p0, v0, p2, p3}, Lcom/applovin/impl/sdk/e/d;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/n;Z)V

    sget-object p3, Lcom/applovin/impl/sdk/e/q$b;->aUv:Lcom/applovin/impl/sdk/e/q$b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/e/w;->aUY:Lcom/applovin/impl/sdk/e/q$b;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/applovin/impl/sdk/e/w;->aUZ:Lcom/applovin/impl/sdk/c/b;

    iput-object p3, p0, Lcom/applovin/impl/sdk/e/w;->aVa:Lcom/applovin/impl/sdk/c/b;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/applovin/impl/sdk/e/d;->dq(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    new-instance p1, Lcom/applovin/impl/sdk/network/b$a;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/network/b$a;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->aHv:Lcom/applovin/impl/sdk/network/b$a;

    new-instance p1, Lcom/applovin/impl/sdk/e/w$1;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/sdk/e/w$1;-><init>(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/n;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->apS:Lcom/applovin/impl/sdk/network/b$d;

    return-void

    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/c/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e/w;->g(Lcom/applovin/impl/sdk/c/b;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/c/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/w;->aUZ:Lcom/applovin/impl/sdk/c/b;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/e/q$b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/w;->aUY:Lcom/applovin/impl/sdk/e/q$b;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/c/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/e/w;->aVa:Lcom/applovin/impl/sdk/c/b;

    return-object p0
.end method

.method private g(Lcom/applovin/impl/sdk/c/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ST:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/applovin/impl/sdk/c/b<",
            "TST;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/d;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BP()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/b;->JD()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public a(Lcom/applovin/impl/sdk/e/q$b;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->aUY:Lcom/applovin/impl/sdk/e/q$b;

    return-void
.end method

.method public abstract d(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public e(Lcom/applovin/impl/sdk/c/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->aUZ:Lcom/applovin/impl/sdk/c/b;

    return-void
.end method

.method public f(Lcom/applovin/impl/sdk/c/b;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w;->aVa:Lcom/applovin/impl/sdk/c/b;

    return-void
.end method

.method public run()V
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/d;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/n;->BQ()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/d;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Bp()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/d;->getSdk()Lcom/applovin/impl/sdk/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2b

    :cond_1e
    const-string v0, "AppLovinSdk"

    const-string v1, "AppLovin SDK is disabled"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/x;->H(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x16

    invoke-virtual {p0, v0, v2, v2}, Lcom/applovin/impl/sdk/e/w;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_80

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_6c

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/c;->HQ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/c;->vS()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5b

    const-string v1, "POST"

    goto :goto_5d

    :cond_5b
    const-string v1, "GET"

    :goto_5d
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/c;->cV(Ljava/lang/String;)V

    :cond_62
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/w;->aHl:Lcom/applovin/impl/sdk/network/c;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/w;->aHv:Lcom/applovin/impl/sdk/network/b$a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/w;->apS:Lcom/applovin/impl/sdk/network/b$d;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/network/b$a;Lcom/applovin/impl/sdk/network/b$d;)V

    goto :goto_80

    :cond_6c
    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    const-string v3, "Task has an invalid or null request endpoint."

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/x;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    const/16 v0, -0x384

    invoke-virtual {p0, v0, v2, v2}, Lcom/applovin/impl/sdk/e/w;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_80
    return-void
.end method

###### Class com.applovin.impl.sdk.e.w.AnonymousClass1 (com.applovin.impl.sdk.e.w$1)
.class Lcom/applovin/impl/sdk/e/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/network/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/w;-><init>(Lcom/applovin/impl/sdk/network/c;Lcom/applovin/impl/sdk/n;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/network/b$d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic aVb:Lcom/applovin/impl/sdk/e/w;

.field final synthetic atm:Lcom/applovin/impl/sdk/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/n;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/w$1;->atm:Lcom/applovin/impl/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_d

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    const/16 v3, 0x1ad

    if-ne p1, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    const/16 v4, -0x3f1

    if-eq p1, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    if-nez v4, :cond_2d

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v4}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/network/c;->Ib()Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v4, 0x1

    :goto_2e
    if-eqz v4, :cond_1ab

    if-nez v2, :cond_40

    if-nez v3, :cond_40

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/c;->Ia()Z

    move-result v2

    if-eqz v2, :cond_1ab

    :cond_40
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v2}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/c;->HT()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v3}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/c;->HV()I

    move-result v3

    if-lez v3, :cond_180

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    iget-object p2, p2, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p2

    if-eqz p2, :cond_aa

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    iget-object p3, p2, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p2, p2, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send request due to server failure (code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c;->HV()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " attempts left, retrying in "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v4}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/network/c;->HY()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds..."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/applovin/impl/sdk/x;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c;->HV()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p2}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/network/c;->gD(I)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p2}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object p2

    const-string p3, "4.0/ad"

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    iget-object p3, p0, Lcom/applovin/impl/sdk/e/w$1;->atm:Lcom/applovin/impl/sdk/n;

    sget-object v3, Lcom/applovin/impl/sdk/c/b;->aKI:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, v3}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e2

    if-eqz p2, :cond_e2

    const/4 p2, 0x1

    goto :goto_e3

    :cond_e2
    const/4 p2, 0x0

    :goto_e3
    if-nez p2, :cond_e7

    if-nez p1, :cond_12b

    :cond_e7
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->b(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/c/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/c/b;)V

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_12b

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_121

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    iget-object p2, p1, Lcom/applovin/impl/sdk/e/d;->logger:Lcom/applovin/impl/sdk/x;

    iget-object p1, p1, Lcom/applovin/impl/sdk/e/d;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Switching to backup endpoint "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/x;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_121
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/network/c;->cU(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_12b
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->atm:Lcom/applovin/impl/sdk/n;

    sget-object p2, Lcom/applovin/impl/sdk/c/b;->aNZ:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_140

    if-eqz v0, :cond_140

    const-wide/16 p1, 0x0

    goto :goto_170

    :cond_140
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c;->HZ()Z

    move-result p1

    if-eqz p1, :cond_165

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c;->HW()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    double-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    goto :goto_170

    :cond_165
    iget-object p1, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/c;->HY()I

    move-result p1

    int-to-long p1, p1

    :goto_170
    iget-object p3, p0, Lcom/applovin/impl/sdk/e/w$1;->atm:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/n;->BO()Lcom/applovin/impl/sdk/e/q;

    move-result-object p3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->c(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/e/q$b;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p1, p2}, Lcom/applovin/impl/sdk/e/q;->a(Lcom/applovin/impl/sdk/e/d;Lcom/applovin/impl/sdk/e/q$b;J)V

    goto :goto_1b0

    :cond_180
    if-eqz v2, :cond_19c

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/c;->zL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->d(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/c/b;)V

    goto :goto_1a5

    :cond_19c
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->b(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;Lcom/applovin/impl/sdk/c/b;)V

    :goto_1a5
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/w;->a(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b0

    :cond_1ab
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/w;->a(ILjava/lang/String;Ljava/lang/Object;)V

    :goto_1b0
    return-void
.end method

.method public d(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/e/w;->a(Lcom/applovin/impl/sdk/e/w;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/c;->gD(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/w$1;->aVb:Lcom/applovin/impl/sdk/e/w;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/e/w;->d(Ljava/lang/Object;I)V

    return-void
.end method
