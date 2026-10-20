###### Class com.applovin.impl.sdk.e.f.AnonymousClass4 (com.applovin.impl.sdk.e.f$4)
.class Lcom/applovin/impl/sdk/e/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/e/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/e/f;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/e/f$a;)Lcom/applovin/impl/sdk/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aTM:Lcom/applovin/impl/sdk/e/f;

.field final synthetic aTO:Lcom/applovin/impl/sdk/e/f$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/e/f;Lcom/applovin/impl/sdk/e/f$a;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/f$4;->aTM:Lcom/applovin/impl/sdk/e/f;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/f$4;->aTO:Lcom/applovin/impl/sdk/e/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/applovin/impl/sdk/e/f$4;->aTM:Lcom/applovin/impl/sdk/e/f;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/e/f;->Kn()V

    goto :goto_f

    :cond_8
    iget-object p2, p0, Lcom/applovin/impl/sdk/e/f$4;->aTO:Lcom/applovin/impl/sdk/e/f$a;

    if-eqz p2, :cond_f

    invoke-interface {p2, p1}, Lcom/applovin/impl/sdk/e/f$a;->du(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void
.end method
