###### Class com.applovin.impl.mediation.nativeAds.a.e (com.applovin.impl.mediation.nativeAds.a.e)
.class public final synthetic Lcom/applovin/impl/mediation/nativeAds/a/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/mediation/nativeAds/a/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/mediation/nativeAds/a/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/nativeAds/a/e;->a:Lcom/applovin/impl/mediation/nativeAds/a/c;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/nativeAds/a/e;->a:Lcom/applovin/impl/mediation/nativeAds/a/c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/nativeAds/a/c;->c(Lcom/applovin/impl/mediation/nativeAds/a/c;)Z

    move-result v0

    return v0
.end method
