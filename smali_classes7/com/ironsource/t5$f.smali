###### Class com.ironsource.t5.f (com.ironsource.t5$f)
.class Lcom/ironsource/t5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/t5;->onInterstitialAdClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

.field final synthetic c:Lcom/ironsource/t5;


# direct methods
.method constructor <init>(Lcom/ironsource/t5;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/t5$f;->c:Lcom/ironsource/t5;

    iput-object p2, p0, Lcom/ironsource/t5$f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/t5$f;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/t5$f;->c:Lcom/ironsource/t5;

    iget-object v1, p0, Lcom/ironsource/t5$f;->a:Ljava/lang/String;

    const-string v2, "onInterstitialAdClosed()"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/s5$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/t5$f;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;

    iget-object v1, p0, Lcom/ironsource/t5$f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyInterstitialListener;->onInterstitialAdClosed(Ljava/lang/String;)V

    return-void
.end method
