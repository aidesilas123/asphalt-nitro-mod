###### Class com.applovin.impl.sdk.utils.n1 (com.applovin.impl.sdk.utils.n1)
.class public final synthetic Lcom/applovin/impl/sdk/utils/n1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/applovin/mediation/MaxError;


# direct methods
.method public synthetic constructor <init>(ZLcom/applovin/mediation/nativeAds/MaxNativeAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/utils/n1;->a:Z

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/n1;->b:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/utils/n1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/utils/n1;->d:Lcom/applovin/mediation/MaxError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/utils/n1;->a:Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/n1;->b:Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/n1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/n1;->d:Lcom/applovin/mediation/MaxError;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/m;->P(ZLcom/applovin/mediation/nativeAds/MaxNativeAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    return-void
.end method
