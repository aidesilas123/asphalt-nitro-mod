###### Class com.ironsource.e1.d (com.ironsource.e1$d)
.class Lcom/ironsource/e1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/e1;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerListener;

.field final synthetic c:Lcom/ironsource/e1;


# direct methods
.method constructor <init>(Lcom/ironsource/e1;Ljava/lang/String;Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerListener;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/e1$d;->c:Lcom/ironsource/e1;

    iput-object p2, p0, Lcom/ironsource/e1$d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/e1$d;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/e1$d;->c:Lcom/ironsource/e1;

    iget-object v1, p0, Lcom/ironsource/e1$d;->a:Ljava/lang/String;

    const-string v2, "onBannerAdClicked()"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/s5$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/e1$d;->b:Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerListener;

    iget-object v1, p0, Lcom/ironsource/e1$d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/demandOnly/ISDemandOnlyBannerListener;->onBannerAdClicked(Ljava/lang/String;)V

    return-void
.end method
