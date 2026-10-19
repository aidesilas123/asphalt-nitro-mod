###### Class com.applovin.impl.sdk.n.AnonymousClass2.AnonymousClass1 (com.applovin.impl.sdk.n$2$1)
.class Lcom/applovin/impl/sdk/n$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/privacy/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n$2;->G(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aCY:Lcom/applovin/impl/sdk/n$2;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/n$2;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/n$2$1;->aCY:Lcom/applovin/impl/sdk/n$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlowCompleted(Lcom/applovin/impl/privacy/a/a;)V
    .registers 3
    .param p1    # Lcom/applovin/impl/privacy/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/applovin/impl/sdk/n$2$1;->aCY:Lcom/applovin/impl/sdk/n$2;

    iget-object p1, p1, Lcom/applovin/impl/sdk/n$2;->aCX:Lcom/applovin/impl/sdk/n;

    const-string v0, "Initializing SDK in MAX environment..."

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/n;Ljava/lang/String;)V

    return-void
.end method
