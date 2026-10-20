###### Class com.applovin.impl.sdk.n.AnonymousClass1 (com.applovin.impl.sdk.n$1)
.class Lcom/applovin/impl/sdk/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/privacy/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/n;->a(ZLcom/applovin/impl/sdk/x;Lcom/applovin/impl/privacy/a/c;)V
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

    iput-object p1, p0, Lcom/applovin/impl/sdk/n$1;->aCX:Lcom/applovin/impl/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlowCompleted(Lcom/applovin/impl/privacy/a/a;)V
    .registers 2
    .param p1    # Lcom/applovin/impl/privacy/a/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
