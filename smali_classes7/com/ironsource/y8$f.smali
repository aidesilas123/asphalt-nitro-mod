###### Class com.ironsource.y8.f (com.ironsource.y8$f)
.class Lcom/ironsource/y8$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/y8;->onInterstitialAdClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/y8;


# direct methods
.method constructor <init>(Lcom/ironsource/y8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/y8$f;->a:Lcom/ironsource/y8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/y8$f;->a:Lcom/ironsource/y8;

    invoke-static {v0}, Lcom/ironsource/y8;->e(Lcom/ironsource/y8;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialListener;->onInterstitialAdClicked()V

    return-void
.end method
