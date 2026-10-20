###### Class com.applovin.impl.sdk.n.AnonymousClass3 (com.applovin.impl.sdk.n$3)
.class Lcom/applovin/impl/sdk/n$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n;->CN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCX:Lcom/applovin/impl/sdk/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/n$3;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/applovin/impl/sdk/n$3;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/n;Lorg/json/JSONObject;)V

    :cond_d
    iget-object p1, p0, Lcom/applovin/impl/sdk/n$3;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-static {p1}, Lcom/applovin/impl/sdk/n;->v(Lcom/applovin/impl/sdk/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/n$3;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-static {p1}, Lcom/applovin/impl/sdk/n;->s(Lcom/applovin/impl/sdk/n;)V

    return-void
.end method
