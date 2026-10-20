###### Class com.kidoz.sdk.omid.d (com.kidoz.sdk.omid.d)
.class public Lcom/kidoz/sdk/omid/d;
.super Ljava/lang/Object;
.source "OMSessionAdapterImpl.java"

# interfaces
.implements Lcom/kidoz/sdk/omid/c;


# instance fields
.field private a:Lcom/iab/omid/library/kidoznet/adsession/AdSession;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/iab/omid/library/kidoznet/adsession/AdSession;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/omid/d;->a:Lcom/iab/omid/library/kidoznet/adsession/AdSession;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/omid/d;->a:Lcom/iab/omid/library/kidoznet/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/kidoznet/adsession/AdSession;->finish()V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/omid/d;->a:Lcom/iab/omid/library/kidoznet/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/kidoznet/adsession/AdSession;->start()V

    return-void
.end method
